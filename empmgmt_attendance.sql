-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empmgmt
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.24-MariaDB

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `atndId` int(11) NOT NULL AUTO_INCREMENT,
  `empId` int(11) NOT NULL,
  `empName` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `status` varchar(7) NOT NULL,
  PRIMARY KEY (`atndId`),
  KEY `empId` (`empId`),
  CONSTRAINT `empId` FOREIGN KEY (`empId`) REFERENCES `addemp` (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,12,'','2017-08-20','Absent'),(2,12,'','2017-08-20','Present'),(3,12,'','2017-08-20','Present'),(4,12,'','2017-08-21','Present'),(5,12,'','2017-08-21','Absent'),(6,12,'','2017-08-22',''),(7,13,'','2017-08-22','Present'),(8,12,'','2017-08-22',''),(9,13,'','2017-08-22','Present'),(10,12,'','2017-08-22',''),(11,13,'','2017-08-22','Present'),(12,12,'','2017-08-22',''),(13,13,'','2017-08-22','Absent'),(14,12,'','2017-08-22',''),(15,13,'','2017-08-22','OFF'),(16,12,'','2017-08-22',''),(17,13,'','2017-08-22',''),(18,14,'','2017-08-22','Present'),(19,12,'','2017-08-22','UALWP'),(20,13,'','2017-08-22','UALWP'),(21,14,'','2017-08-22','UALWP'),(22,12,'','2017-08-22',''),(23,13,'','2017-08-22',''),(24,14,'','2017-08-22','Present'),(25,12,'','2017-08-30','Present'),(26,13,'','2017-08-30','ALWP'),(27,14,'','2017-08-30','UALWP');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-04 23:08:43
