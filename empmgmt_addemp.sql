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
-- Table structure for table `addemp`
--

DROP TABLE IF EXISTS `addemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addemp` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(100) NOT NULL,
  `perAdd` varchar(100) NOT NULL,
  `CurrAdd` varchar(100) NOT NULL,
  `Quali` varchar(50) NOT NULL,
  `Dob` date NOT NULL,
  `Doj` date NOT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `salary` float NOT NULL,
  `Contact` bigint(15) NOT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addemp`
--

LOCK TABLES `addemp` WRITE;
/*!40000 ALTER TABLE `addemp` DISABLE KEYS */;
INSERT INTO `addemp` VALUES (12,'Jugal','Lower Bara Sittong','HaiderPara Siliguri','BA','1996-10-15','2017-08-20','Database Adminstrator',15000,9932307597),(13,'Sidhant Gurung','sjao','jkajkd','graduate','1994-01-10','2017-08-21','Front end Developer',20000,9932074771),(14,'as','sdassd','asdas','asdas','2017-08-16','2017-08-24','asd',8000,895623125);
/*!40000 ALTER TABLE `addemp` ENABLE KEYS */;
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
