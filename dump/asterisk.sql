-- MySQL dump 10.19  Distrib 10.3.35-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: asterisk
-- ------------------------------------------------------
-- Server version	10.3.35-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sip_conf`
--
CREATE DATABASE asterisk;
USE asterisk;
CREATE USER 'asterisk'@'%' IDENTIFIED BY 'asterisk';
GRANT ALL ON *.* To asterisk@'%';

DROP TABLE IF EXISTS `sip_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sip_conf` (
  `extension` varchar(255) NOT NULL,
  `callerid` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `context` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sip_conf`
--

LOCK TABLES `sip_conf` WRITE;
/*!40000 ALTER TABLE `sip_conf` DISABLE KEYS */;
INSERT INTO `sip_conf` VALUES ('1000','','friend','dynamic','1000s','internal'),('1001','','friend','dynamic','1001s','internal'),('1002','','friend','dynamic','1002s','internal'),('1003','','friend','dynamic','1003s','internal'),('1004','','friend','dynamic','1004s','internal'),('1005','','friend','dynamic','1005s','internal'),('1006','','friend','dynamic','1006s','internal'),('1007','','friend','dynamic','1007s','internal'),('1008','','friend','dynamic','1008s','internal'),('1009','','friend','dynamic','1009s','internal'),('1010','','friend','dynamic','1010s','internal'),('1011','','friend','dynamic','1011s','internal'),('1012','','friend','dynamic','1012s','internal'),('1013','','friend','dynamic','1013s','internal'),('1014','','friend','dynamic','1014s','internal'),('1015','\"ali yasser kuti\" <1015>','friend','dynamic','1015s','internal'),('2222','','peer','dynamic','outside','internal'),('7001','\"ali yasser kuti\" <7001>','friend','dynamic','123','internal'),('7002','','friend','dynamic','456','internal'),('7003','','friend','dynamic','123','internal'),('ali','','friend','dynamic','123','internal');
/*!40000 ALTER TABLE `sip_conf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-14 16:21:23

