-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_schema
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `asiakkaat`
--

DROP TABLE IF EXISTS `asiakkaat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asiakkaat` (
  `id` int NOT NULL,
  `nimi` varchar(45) DEFAULT NULL,
  `osoite` varchar(45) DEFAULT NULL,
  `sposti` varchar(45) DEFAULT NULL,
  `puhelinnumero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asiakkaat`
--

LOCK TABLES `asiakkaat` WRITE;
/*!40000 ALTER TABLE `asiakkaat` DISABLE KEYS */;
/*!40000 ALTER TABLE `asiakkaat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laskut`
--

DROP TABLE IF EXISTS `laskut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laskut` (
  `mokki` varchar(45) NOT NULL,
  `asiakas` varchar(45) DEFAULT NULL,
  `alkupaiva` date DEFAULT NULL,
  `loppupaiva` date DEFAULT NULL,
  `hinta` double DEFAULT NULL,
  `maksettu` tinyint DEFAULT NULL,
  PRIMARY KEY (`mokki`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laskut`
--

LOCK TABLES `laskut` WRITE;
/*!40000 ALTER TABLE `laskut` DISABLE KEYS */;
/*!40000 ALTER TABLE `laskut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mokit`
--

DROP TABLE IF EXISTS `mokit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mokit` (
  `nimi` varchar(45) NOT NULL,
  `osoite` varchar(45) DEFAULT NULL,
  `hinta` double DEFAULT NULL,
  `koko` double DEFAULT NULL,
  PRIMARY KEY (`nimi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mokit`
--

LOCK TABLES `mokit` WRITE;
/*!40000 ALTER TABLE `mokit` DISABLE KEYS */;
/*!40000 ALTER TABLE `mokit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raportti`
--

DROP TABLE IF EXISTS `raportti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raportti` (
  `asiakas` varchar(100) NOT NULL,
  `onkosiivottu` tinyint DEFAULT NULL,
  PRIMARY KEY (`asiakas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raportti`
--

LOCK TABLES `raportti` WRITE;
/*!40000 ALTER TABLE `raportti` DISABLE KEYS */;
/*!40000 ALTER TABLE `raportti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varaukset`
--

DROP TABLE IF EXISTS `varaukset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `varaukset` (
  `mokki` varchar(45) NOT NULL,
  `asiakas` varchar(45) DEFAULT NULL,
  `alkupaiva` date DEFAULT NULL,
  `loppupaiva` date DEFAULT NULL,
  PRIMARY KEY (`mokki`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varaukset`
--

LOCK TABLES `varaukset` WRITE;
/*!40000 ALTER TABLE `varaukset` DISABLE KEYS */;
/*!40000 ALTER TABLE `varaukset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-15 13:42:01
