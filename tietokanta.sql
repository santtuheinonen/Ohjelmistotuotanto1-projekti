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
INSERT INTO `asiakkaat` VALUES (2,'Jari Sillanpää','Kuusitie 6','jari.sillanpaa@luukku.com','0446758'),(3,'Ferran Torres','Barcelonantie 12','ferran@gmail.com','6969696969'),(8,'Pekka Makkonen','Tulliportinkatu 77','pekkis@hotmail.com','044656589'),(9,'Emil','Samoilijantie 6','emil@gmail.com','8792758275'),(12,'Ari Mäkäräinen','Lohitie 4','ari@gmail.com','12345678'),(123,'t7buj','veijveokvm','vejvnejvn','1234567'),(666,'ari','ari','ari','56789'),(12345,'Henrik Lehtinen','Matkakeskus','henkka@gmail.com','112');
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
INSERT INTO `laskut` VALUES ('Ari','Henkka','2025-05-14','2025-05-18',200,0),('Leijona','Jari Sillanpää','2025-05-14','2025-05-21',280,0),('Mökki','Emil','2025-05-13','2025-05-20',700,0),('Moro','moro','2025-05-14','2025-05-21',3500,0),('moromoro','ari','2025-05-14','2025-05-19',2500,0),('overmnviermove','t7buj','2025-05-14','2025-05-21',350,0),('Pirkka','Henrik Lehtinen','2025-05-16','2025-05-23',420,0),('Raate','Ferran Torres','2025-05-19','2025-05-25',450,0),('y8uhjikl','virjnvmor','2025-05-14','2025-05-21',350,0);
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
INSERT INTO `mokit` VALUES ('Ari','Lohitie 4',50,100),('Leijona','Mäntykuja 55',40,50),('Mökki','Neulamäentie 69',100,75),('moromoro','ari',500,500),('overmnviermove','vejiv eoivm',50,50),('Pirkka','Puijontie 66',60,60),('Pottu','viro',66,66);
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
INSERT INTO `varaukset` VALUES ('Ari','ari','2025-05-14','2025-05-19'),('Leijona','Ferran Torres','2025-05-14','2025-05-18'),('Mökki','Pekka Makkonen','2025-05-14','2025-05-21'),('Moro','moro','2025-05-14','2025-05-21'),('moromoro','ari','2025-05-14','2025-05-19'),('overmnviermove','t7buj','2025-05-14','2025-05-21'),('Pirkka','Henrik Lehtinen','2025-05-16','2025-05-23'),('y8uhjikl','virjnvmor','2025-05-14','2025-05-21');
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

-- Dump completed on 2025-05-15 13:31:34
