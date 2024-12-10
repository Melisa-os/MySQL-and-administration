-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: my_first_db
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `korisnici`
--

DROP TABLE IF EXISTS `korisnici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `korisnici` (
  `id_korisnika` int NOT NULL AUTO_INCREMENT,
  `ime_korisnika` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `prezime_korisnika` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `datum_rodjena` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `korisnicko_ime` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `biografija` mediumtext COLLATE utf8mb3_unicode_ci,
  `fotografija` blob,
  PRIMARY KEY (`id_korisnika`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `korisnicko_ime_UNIQUE` (`korisnicko_ime`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `korisnici`
--

LOCK TABLES `korisnici` WRITE;
/*!40000 ALTER TABLE `korisnici` DISABLE KEYS */;
INSERT INTO `korisnici` VALUES (1,'Marko','Jelic','05.10.1990','markojelic@gmail.com','markojelic32','Marko Jelić ,34 godine',NULL),(2,'Ana','Marija','06.06.1996','anamarija@gmail.com','anamarija.2','Ana Marija,28 godina',NULL),(3,'Pavo','Lik','19.04.2000','pavolik@gmail.com','pavolik_6','Pavo Lik, 24 godine',NULL);
/*!40000 ALTER TABLE `korisnici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plate`
--

DROP TABLE IF EXISTS `plate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plate` (
  `id_plate` int NOT NULL AUTO_INCREMENT,
  `datum_plate` date NOT NULL,
  `iznos_plate` decimal(10,2) NOT NULL,
  `status_isplate` tinyint NOT NULL DEFAULT '0',
  `tip_zaposlenja` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `id_korisnika` int DEFAULT NULL,
  PRIMARY KEY (`id_plate`),
  KEY `id_korisnika_idx` (`id_korisnika`),
  CONSTRAINT `fk_korisnik_plate` FOREIGN KEY (`id_korisnika`) REFERENCES `korisnici` (`id_korisnika`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plate`
--

LOCK TABLES `plate` WRITE;
/*!40000 ALTER TABLE `plate` DISABLE KEYS */;
INSERT INTO `plate` VALUES (1,'2024-10-15',1200.00,1,'odredeno',1),(2,'2024-10-15',1300.00,1,'neodredeno',2),(3,'2024-10-15',1250.00,0,'odredeno',3);
/*!40000 ALTER TABLE `plate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poruke`
--

DROP TABLE IF EXISTS `poruke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poruke` (
  `id_poruke` int NOT NULL AUTO_INCREMENT,
  `id_posiljaoca` int DEFAULT NULL,
  `id_primaoca` int DEFAULT NULL,
  `sadrzaj_poruke` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `datum_poruke` date NOT NULL,
  `status_poruke` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poruke`),
  KEY `id_posiljaoca_idx` (`id_posiljaoca`),
  KEY `id_primaoca_idx` (`id_primaoca`),
  CONSTRAINT `fk_posiljaoc` FOREIGN KEY (`id_posiljaoca`) REFERENCES `korisnici` (`id_korisnika`),
  CONSTRAINT `fk_primalac` FOREIGN KEY (`id_primaoca`) REFERENCES `korisnici` (`id_korisnika`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poruke`
--

LOCK TABLES `poruke` WRITE;
/*!40000 ALTER TABLE `poruke` DISABLE KEYS */;
INSERT INTO `poruke` VALUES (1,1,2,'Jesi primila obavijest o povisici','2024-10-10',1),(2,2,1,'Nisam','2024-10-10',0),(3,3,1,'Hej ,jesi za kafu poslije posla','2024-10-11',1),(4,1,3,'Ej,moze super','2024-10-11',1),(5,3,2,'Jesi zavrsila projekat','2024-09-30',1),(6,2,3,'Nisam,ostalo mi je jos malo','2024-10-01',1);
/*!40000 ALTER TABLE `poruke` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18  9:31:26
