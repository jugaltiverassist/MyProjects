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
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `salId` bigint(20) NOT NULL AUTO_INCREMENT,
  `empId` int(11) NOT NULL,
  `empName` varchar(100) NOT NULL,
  `present` bigint(20) NOT NULL,
  `AL` bigint(20) NOT NULL,
  `ALWP` bigint(20) NOT NULL,
  `UALWP` bigint(20) NOT NULL,
  `OFF` bigint(20) NOT NULL,
  `TP` bigint(20) DEFAULT NULL,
  `gross` float NOT NULL,
  `basic` float NOT NULL,
  `hra` float NOT NULL,
  `ma` float NOT NULL,
  `Total` float NOT NULL,
  `EarnedAllowances` float NOT NULL,
  `Allowances` float NOT NULL,
  `net` float NOT NULL,
  `perdaySal` float NOT NULL,
  `sal` float NOT NULL,
  `tax` float NOT NULL,
  `workingDays` int(11) NOT NULL,
  PRIMARY KEY (`salId`),
  KEY `empId` (`empId`),
  CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `addemp` (`empId`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,12,'',24,2,0,0,0,NULL,2312.5,15000,250,62.5,0,0,0,1965.62,625,1250,346.875,0),(2,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(3,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(4,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(5,12,'',6,3,0,0,0,NULL,13875,15000,1500,375,0,0,0,11793.8,2500,7500,2081.25,0),(6,13,'',6,3,0,0,0,NULL,18500,20000,2000,500,0,0,0,15725,3333.33,10000,2775,0),(7,12,'',6,3,0,0,0,NULL,13875,15000,1500,375,0,0,0,11793.8,2500,7500,2081.25,0),(8,13,'',6,3,0,0,0,NULL,18500,20000,2000,500,0,0,0,15725,3333.33,10000,2775,0),(9,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(10,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(11,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(12,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(13,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(14,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(15,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(16,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(17,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(18,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(19,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(20,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(21,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(22,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(23,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(24,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(25,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(26,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(27,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(28,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(29,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(30,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(31,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(32,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(33,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(34,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(35,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(36,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(37,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(38,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(39,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(40,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(41,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(42,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(43,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(44,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(45,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(46,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(47,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(48,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(49,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(50,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(51,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(52,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(53,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(54,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(55,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(56,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(57,12,'',24,3,0,0,0,NULL,3468.75,15000,375,93.75,0,0,0,2948.44,625,1875,520.312,0),(58,13,'',24,3,0,0,0,NULL,4625,20000,500,125,0,0,0,3931.25,833.333,2500,693.75,0),(59,12,'',24,3,0,0,0,NULL,0,15000,0,0,0,0,0,0,0,0,0,0),(60,13,'',24,3,0,0,0,NULL,0,20000,0,0,0,0,0,0,0,0,0,0),(61,12,'',24,3,0,0,0,NULL,0,15000,0,0,0,0,0,0,0,0,0,0),(62,13,'',24,3,0,0,0,NULL,0,20000,0,0,0,0,0,0,0,0,0,0),(63,12,'',24,3,0,0,0,NULL,19425,15000,2100,525,0,0,0,16511.2,0,10500,2913.75,0),(64,13,'',24,3,0,0,0,NULL,25900,20000,2800,700,0,0,0,22015,0,14000,3885,0),(65,12,'',24,3,0,0,0,NULL,13125,15000,2100,525,0,0,0,11156.2,0,10500,1968.75,0),(66,13,'',24,3,0,0,0,NULL,17500,20000,2800,700,0,0,0,14875,0,14000,2625,0),(67,12,'',24,3,0,0,0,NULL,13125,15000,2100,525,0,0,0,11156.2,0,10500,1968.75,0),(68,13,'',24,3,0,0,0,NULL,17500,20000,2800,700,0,0,0,14875,0,14000,2625,0),(69,12,'',24,3,0,0,0,NULL,12075,15000,1050,525,0,0,0,10263.8,0,10500,1811.25,0),(70,13,'',24,3,0,0,0,NULL,16100,20000,1400,700,0,0,0,13685,0,14000,2415,0),(71,12,'',24,3,0,0,0,NULL,12075,15000,1050,525,0,0,0,10263.8,0,10500,1811.25,0),(72,13,'',24,3,0,0,0,NULL,16100,20000,1400,700,0,0,0,13685,0,14000,2415,0),(73,12,'',24,3,0,0,0,NULL,12075,15000,1050,525,0,0,0,10263.8,0,10500,1811.25,0),(74,13,'',24,3,0,0,0,NULL,16100,20000,1400,700,0,0,0,13685,0,14000,2415,0),(75,12,'',24,3,0,0,0,NULL,12075,15000,1050,525,0,0,0,10263.8,0,10500,1811.25,0),(76,13,'',24,3,0,0,0,NULL,16100,20000,1400,700,0,0,0,13685,0,14000,2415,0),(77,12,'',24,3,0,0,0,NULL,12075,15000,1050,525,0,0,0,10263.8,0,10500,1811.25,0),(78,13,'',24,3,0,0,0,NULL,16100,20000,1400,700,0,0,0,13685,0,14000,2415,0),(79,12,'',24,3,0,0,0,NULL,12075,15000,1050,525,0,0,0,10263.8,0,10500,1811.25,0),(80,13,'',24,3,0,0,0,NULL,16100,20000,1400,700,0,0,0,13685,0,14000,2415,0),(81,12,'',24,3,0,0,0,NULL,12075,15000,1050,525,0,0,0,10263.8,0,10500,1811.25,0),(82,13,'',24,3,0,0,0,NULL,16100,20000,1400,700,0,0,0,13685,0,14000,2415,0),(83,14,'',24,1,0,0,0,NULL,6440,8000,560,280,0,0,0,5474,0,5600,966,0),(84,12,'',24,3,0,0,0,NULL,12300,15000,1050,750,0,0,0,10455,0,10500,1845,0),(85,13,'',24,3,0,0,0,NULL,16400,20000,1400,1000,0,0,0,13940,0,14000,2460,0),(86,14,'',24,1,0,0,0,NULL,6560,8000,560,400,0,0,0,5576,0,5600,984,0),(87,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,10837.5,0,10500,1912.5,0),(88,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,14450,0,14000,2550,0),(89,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,5780,0,5600,1020,0),(90,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12750,0,10500,0,0),(91,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17000,0,14000,0,0),(92,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6800,0,5600,0,0),(93,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12750,0,10500,0,0),(94,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17000,0,14000,0,0),(95,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6800,0,5600,0,0),(96,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12750,0,10500,0,0),(97,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17000,0,14000,0,0),(98,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6800,0,5600,0,0),(99,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12750,0,10500,0,0),(100,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17000,0,14000,0,0),(101,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6800,0,5600,0,0),(102,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12750,0,10500,0,0),(103,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17000,0,14000,0,0),(104,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6800,0,5600,0,0),(105,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12866.1,0,10500,0,0),(106,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17154.8,0,14000,0,0),(107,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6838.71,0,5600,0,0),(108,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12866.1,0,10500,0,0),(109,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17154.8,0,14000,0,0),(110,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6838.71,0,5600,0,0),(111,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12866.1,0,10500,0,0),(112,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17154.8,0,14000,0,0),(113,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6838.71,0,5600,0,0),(114,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12866.1,0,10500,0,0),(115,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17154.8,0,14000,0,0),(116,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6838.71,0,5600,0,0),(117,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12866.1,0,10500,0,0),(118,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17154.8,0,14000,0,0),(119,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6838.71,0,5600,0,0),(120,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12866.1,0,10500,0,0),(121,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17154.8,0,14000,0,0),(122,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6838.71,0,5600,0,0),(123,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12866.1,0,10500,0,0),(124,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17154.8,0,14000,0,0),(125,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6838.71,0,5600,0,0),(126,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12750,0,10500,0,0),(127,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17000,0,14000,0,0),(128,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6800,0,5600,0,0),(129,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12750,0,10500,0,0),(130,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17000,0,14000,0,0),(131,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6800,0,5600,0,0),(132,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12837.1,0,10500,0,0),(133,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17116.1,0,14000,0,0),(134,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6829.03,0,5600,0,0),(135,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12837.1,0,10500,0,0),(136,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17116.1,0,14000,0,0),(137,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6829.03,0,5600,0,0),(138,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12913.3,0,10500,0,0),(139,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17290.3,0,14000,0,0),(140,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6829.03,0,5600,0,0),(141,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12960.9,0,10500,0,0),(142,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17375,0,14000,0,0),(143,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6837.5,0,5600,0,0),(144,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12960.9,0,10500,0,0),(145,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17375,0,14000,0,0),(146,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6837.5,0,5600,0,0),(147,12,'',24,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12960.9,0,10500,0,0),(148,13,'',24,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17375,0,14000,0,0),(149,14,'',24,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6837.5,0,5600,0,0),(150,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12913.3,0,10500,0,0),(151,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17290.3,0,14000,0,0),(152,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6829.03,0,5600,0,0),(153,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12913.3,0,10500,0,0),(154,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17290.3,0,14000,0,0),(155,14,'',31,1,0,0,0,NULL,6800,8000,800,400,0,0,0,6829.03,0,5600,0,0),(156,12,'',31,3,0,0,0,NULL,12750,15000,1500,750,0,0,0,12913.3,0,10500,0,0),(157,13,'',31,3,0,0,0,NULL,17000,20000,2000,1000,0,0,0,17290.3,0,14000,0,0),(158,14,'',31,2,0,0,0,NULL,6800,8000,800,400,0,0,0,6858.06,0,5600,0,0),(159,12,'',31,3,0,0,0,NULL,15000,0,0,0,0,0,0,15000,0,0,0,0),(160,13,'',31,3,0,0,0,NULL,20000,0,0,0,0,0,0,20000,0,0,0,0),(161,14,'',31,2,0,0,0,NULL,8000,0,0,0,0,0,0,8000,0,0,0,0),(162,12,'',31,3,0,0,0,NULL,15000,0,0,0,0,0,0,15000,0,0,0,0),(163,13,'',31,3,0,0,0,NULL,20000,0,0,0,0,0,0,20000,0,0,0,0),(164,14,'',31,2,0,0,0,NULL,8000,0,0,0,0,0,0,8000,0,0,0,0),(165,12,'',31,3,0,0,0,NULL,15000,0,0,0,0,0,0,15000,0,0,0,0),(166,13,'',31,3,0,0,0,NULL,20000,0,0,0,0,0,0,20000,0,0,0,0),(167,14,'',31,2,0,0,0,NULL,8000,0,0,0,0,0,0,8000,0,0,0,0),(168,12,'',31,3,0,0,0,NULL,15000,0,0,0,0,0,0,15000,0,0,0,0),(169,13,'',31,3,0,0,0,NULL,20000,0,0,0,0,0,0,20000,0,0,0,0),(170,14,'',31,2,0,0,0,NULL,8000,0,0,0,0,0,0,8000,0,0,0,0),(171,12,'',31,3,0,0,0,NULL,15000,10500,0,0,0,0,0,15163.3,0,10500,0,0),(172,13,'',31,3,0,0,0,NULL,20000,14000,0,0,0,0,0,20290.3,0,14000,0,0),(173,14,'',31,2,0,0,0,NULL,8000,5600,0,0,0,0,0,8058.06,0,5600,0,0),(174,12,'',31,3,0,0,0,NULL,0,0,0,0,0,0,0,163.306,0,10500,0,0),(175,13,'',31,3,0,0,0,NULL,0,0,0,0,0,0,0,290.323,0,14000,0,0),(176,14,'',31,2,0,0,0,NULL,0,0,0,0,0,0,0,58.0645,0,5600,0,0),(177,12,'',31,3,0,0,0,NULL,15000,12750,1500,750,0,0,0,15163.3,0,10500,0,0),(178,13,'',31,3,0,0,0,NULL,20000,17000,2000,1000,0,0,0,20290.3,0,14000,0,0),(179,14,'',31,2,0,0,0,NULL,8000,6800,800,400,0,0,0,8058.06,0,5600,0,0),(180,12,'',31,3,0,0,0,NULL,15000,12750,1500,750,0,0,0,10663.3,0,10500,0,0),(181,13,'',31,3,0,0,0,NULL,20000,17000,2000,1000,0,0,0,14290.3,0,14000,0,0),(182,14,'',31,2,0,0,0,NULL,8000,6800,800,400,0,0,0,5658.06,0,5600,0,0),(183,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,163.306,0,0,0,0),(184,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,290.323,0,0,0,0),(185,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,58.0645,0,0,0,0),(186,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,163.306,0,0,0,0),(187,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,290.323,0,0,0,0),(188,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,58.0645,0,0,0,0),(189,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,10663.3,0,0,0,0),(190,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,14290.3,0,0,0,0),(191,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,5658.06,0,0,0,0),(192,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,10663.3,0,0,0,0),(193,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,14290.3,0,0,0,0),(194,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,5658.06,0,0,0,0),(195,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,10663.3,0,0,0,0),(196,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,14290.3,0,0,0,0),(197,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,5658.06,0,0,0,0),(198,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,10663.3,0,0,0,0),(199,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,14290.3,0,0,0,0),(200,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,5658.06,0,0,0,0),(201,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,10663.3,0,0,0,0),(202,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,14290.3,0,0,0,0),(203,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,5658.06,0,0,0,0),(204,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(205,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(206,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(207,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(208,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(209,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(210,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(211,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(212,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(213,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(214,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(215,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(216,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(217,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(218,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(219,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(220,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(221,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(222,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(223,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(224,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(225,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(226,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(227,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(228,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(229,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(230,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(231,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(232,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(233,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(234,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(235,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(236,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(237,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(238,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(239,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(240,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(241,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(242,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(243,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(244,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(245,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(246,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(247,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(248,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(249,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(250,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(251,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(252,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(253,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(254,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(255,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(256,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(257,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(258,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(259,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(260,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(261,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(262,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(263,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(264,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(265,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(266,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(267,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(268,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(269,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(270,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,0,0,0,0,0),(271,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,0,0,0,0,0),(272,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,0,0,0,0,0),(273,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(274,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(275,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(276,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(277,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(278,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(279,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(280,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(281,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(282,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(283,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(284,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(285,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(286,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(287,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(288,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(289,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(290,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(291,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(292,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(293,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(294,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(295,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(296,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(297,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(298,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(299,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(300,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(301,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(302,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(303,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(304,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(305,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(306,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(307,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(308,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(309,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(310,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(311,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(312,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(313,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(314,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(315,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(316,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(317,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(318,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(319,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(320,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(321,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(322,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(323,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(324,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(325,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(326,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(327,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(328,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(329,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(330,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(331,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(332,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(333,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(334,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(335,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(336,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(337,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(338,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0),(339,12,'',31,3,0,0,0,NULL,15000,10500,1500,750,0,0,0,1397.18,0,0,0,0),(340,13,'',31,3,0,0,0,NULL,20000,14000,2000,1000,0,0,0,2483.87,0,0,0,0),(341,14,'',31,2,0,0,0,NULL,8000,5600,800,400,0,0,0,496.774,0,0,0,0);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
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