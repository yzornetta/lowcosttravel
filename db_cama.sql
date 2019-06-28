-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.5.62-log

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
-- Table structure for table `cama`
--

DROP TABLE IF EXISTS `cama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cama` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plazaSimple` bit(1) NOT NULL,
  `habitacion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8r10rv4ngoxkxbhvufjt5maps` (`habitacion_id`),
  CONSTRAINT `FK8r10rv4ngoxkxbhvufjt5maps` FOREIGN KEY (`habitacion_id`) REFERENCES `habitacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cama`
--

LOCK TABLES `cama` WRITE;
/*!40000 ALTER TABLE `cama` DISABLE KEYS */;
INSERT INTO `cama` (id, plazaSimple, precio, habitacion_id, status) VALUES (1,1,900,1,'Ocupado'),(2,1,700,1,'Ocupado'),(3,1,750,1,NULL),(10,0,1000,5,NULL),(11,1,500,6,NULL),(12,1,500,6,NULL),(13,0,1500,7,NULL),(38,0,4500,26,NULL),(39,0,5000,27,NULL),(40,1,4500,28,NULL),(41,1,4500,28,NULL);
/*!40000 ALTER TABLE `cama` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-23 18:01:57
