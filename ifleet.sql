-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ifleet
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `license`
--

DROP TABLE IF EXISTS `license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license` (
  `licenseID` int NOT NULL AUTO_INCREMENT,
  `driverID` int NOT NULL,
  `licenseImg` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`licenseID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license`
--

LOCK TABLES `license` WRITE;
/*!40000 ALTER TABLE `license` DISABLE KEYS */;
INSERT INTO `license` VALUES (1,1,'12345.jpg'),(2,2,'56789.jpg'),(3,1,'11111.jpg'),(4,1,'22222.jpg'),(5,2,'33333.jpg');
/*!40000 ALTER TABLE `license` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logbook`
--

DROP TABLE IF EXISTS `logbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logbook` (
  `logbookID` int NOT NULL AUTO_INCREMENT,
  `driverName` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `petrol` decimal(5,2) DEFAULT NULL,
  `campusRoute` varchar(45) DEFAULT NULL,
  `reservedDest` varchar(45) DEFAULT NULL,
  `reservedDepart` varchar(45) DEFAULT NULL,
  `reservedToll` decimal(5,2) DEFAULT NULL,
  `reservedMileage` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`logbookID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logbook`
--

LOCK TABLES `logbook` WRITE;
/*!40000 ALTER TABLE `logbook` DISABLE KEYS */;
INSERT INTO `logbook` VALUES (1,'Luka','campus','2023-01-01',100.00,'K9/10 - T02',NULL,NULL,NULL,NULL),(2,'Luka','campus','2023-01-04',50.00,'K9/10 - T02','','',NULL,NULL),(3,'Ali','reserved','2023-02-11',150.00,NULL,'USM Engineering Campus','UTMJB Campus',35.35,396.25),(4,'Luka','reserved','2023-02-12',299.00,'','UtHM Engineering Campus','UTMJB Campus',20.02,69.00),(7,'Luka','campus','2024-01-17',333.00,'TRF to TRX','','',NULL,NULL),(8,'Luka','reserved','2024-01-16',222.00,'','UtHM Engineering Campus','UTMKL Campus',25.00,56.74),(9,'Ali','reserved','2024-02-01',55.00,NULL,'Senai Airport','UTMJB Campus',5.00,40.00);
/*!40000 ALTER TABLE `logbook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-15 13:21:02
