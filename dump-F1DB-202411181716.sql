-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: F1DB
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `circuits`
--

DROP TABLE IF EXISTS `circuits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `circuits` (
  `circuitId` int NOT NULL AUTO_INCREMENT,
  `circuitRef` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `alt` int DEFAULT NULL,
  PRIMARY KEY (`circuitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circuits`
--

LOCK TABLES `circuits` WRITE;
/*!40000 ALTER TABLE `circuits` DISABLE KEYS */;
/*!40000 ALTER TABLE `circuits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constructorStandings`
--

DROP TABLE IF EXISTS `constructorStandings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constructorStandings` (
  `constructorStandingsId` int NOT NULL AUTO_INCREMENT,
  `raceId` int NOT NULL DEFAULT '0',
  `constructorId` int NOT NULL DEFAULT '0',
  `points` float NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `positionText` varchar(255) DEFAULT NULL,
  `wins` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`constructorStandingsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constructorStandings`
--

LOCK TABLES `constructorStandings` WRITE;
/*!40000 ALTER TABLE `constructorStandings` DISABLE KEYS */;
/*!40000 ALTER TABLE `constructorStandings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constructors`
--

DROP TABLE IF EXISTS `constructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constructors` (
  `constructorId` int NOT NULL AUTO_INCREMENT,
  `constructorRef` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`constructorId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constructors`
--

LOCK TABLES `constructors` WRITE;
/*!40000 ALTER TABLE `constructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `constructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driverStandings`
--

DROP TABLE IF EXISTS `driverStandings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driverStandings` (
  `driverStandingsId` int NOT NULL AUTO_INCREMENT,
  `raceId` int NOT NULL DEFAULT '0',
  `driverId` int NOT NULL DEFAULT '0',
  `points` float DEFAULT '0',
  `position` int DEFAULT NULL,
  `positionText` varchar(255) DEFAULT NULL,
  `wins` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`driverStandingsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverStandings`
--

LOCK TABLES `driverStandings` WRITE;
/*!40000 ALTER TABLE `driverStandings` DISABLE KEYS */;
/*!40000 ALTER TABLE `driverStandings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `driverId` int NOT NULL AUTO_INCREMENT,
  `driverRef` varchar(255) NOT NULL DEFAULT '',
  `number` int DEFAULT NULL,
  `code` varchar(3) DEFAULT NULL,
  `Name` varchar(255) NOT NULL DEFAULT '',
  `dob` datetime DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`driverId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lapTimes`
--

DROP TABLE IF EXISTS `lapTimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lapTimes` (
  `raceId` int NOT NULL,
  `driverId` int NOT NULL,
  `lap` int NOT NULL,
  `position` int DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`raceId`,`driverId`,`lap`),
  KEY `raceId` (`raceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapTimes`
--

LOCK TABLES `lapTimes` WRITE;
/*!40000 ALTER TABLE `lapTimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `lapTimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pitStops`
--

DROP TABLE IF EXISTS `pitStops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pitStops` (
  `raceId` int NOT NULL,
  `driverId` int NOT NULL,
  `stop` int NOT NULL,
  `lap` int NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `milliseconds` int DEFAULT NULL,
  PRIMARY KEY (`raceId`,`driverId`,`stop`),
  KEY `raceId` (`raceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pitStops`
--

LOCK TABLES `pitStops` WRITE;
/*!40000 ALTER TABLE `pitStops` DISABLE KEYS */;
/*!40000 ALTER TABLE `pitStops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualifying`
--

DROP TABLE IF EXISTS `qualifying`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualifying` (
  `qualifyId` int NOT NULL AUTO_INCREMENT,
  `raceId` int NOT NULL DEFAULT '0',
  `driverId` int NOT NULL DEFAULT '0',
  `constructorId` int NOT NULL DEFAULT '0',
  `number` int DEFAULT '0',
  `position` int DEFAULT NULL,
  `q1` varchar(255) DEFAULT NULL,
  `q2` varchar(255) DEFAULT NULL,
  `q3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`qualifyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualifying`
--

LOCK TABLES `qualifying` WRITE;
/*!40000 ALTER TABLE `qualifying` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualifying` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `races` (
  `raceId` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL DEFAULT '0',
  `round` int NOT NULL DEFAULT '0',
  `circuitId` int NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`raceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `resultId` int NOT NULL AUTO_INCREMENT,
  `raceId` int NOT NULL DEFAULT '0',
  `driverId` int NOT NULL DEFAULT '0',
  `constructorId` int NOT NULL DEFAULT '0',
  `number` int DEFAULT '0',
  `grid` int DEFAULT '0',
  `position` int DEFAULT NULL,
  `positionText` varchar(255) NOT NULL DEFAULT '',
  `points` float NOT NULL DEFAULT '0',
  `laps` int NOT NULL DEFAULT '0',
  `time` varchar(255) DEFAULT NULL,
  `fastestLapTime` varchar(255) DEFAULT NULL,
  `statusId` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`resultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasons` (
  `year` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprintResults`
--

DROP TABLE IF EXISTS `sprintResults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sprintResults` (
  `sprintResultId` int NOT NULL AUTO_INCREMENT,
  `raceId` int NOT NULL DEFAULT '0',
  `driverId` int NOT NULL DEFAULT '0',
  `constructorId` int NOT NULL DEFAULT '0',
  `number` int NOT NULL DEFAULT '0',
  `grid` int NOT NULL DEFAULT '0',
  `position` int DEFAULT NULL,
  `positionText` varchar(255) NOT NULL DEFAULT '',
  `points` float NOT NULL DEFAULT '0',
  `laps` int NOT NULL DEFAULT '0',
  `time` varchar(255) DEFAULT NULL,
  `fastestLapTime` varchar(255) DEFAULT NULL,
  `statusId` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`sprintResultId`),
  KEY `raceId` (`raceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprintResults`
--

LOCK TABLES `sprintResults` WRITE;
/*!40000 ALTER TABLE `sprintResults` DISABLE KEYS */;
/*!40000 ALTER TABLE `sprintResults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `statusId` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'F1DB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 17:16:48
