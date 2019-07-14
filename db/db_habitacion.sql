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
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcionHab` varchar(255) DEFAULT NULL,
  `masInfoHab` varchar(255) DEFAULT NULL,
  `precio` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `departamento_id` bigint(20) DEFAULT NULL,
  `huespedes` int(11) NOT NULL,
  `foto_id` bigint(20) DEFAULT NULL,
  `anfitrion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2ohnxd1j8lbdluk6v94f0i4gl` (`departamento_id`),
  KEY `FK44exl18t6skf0qya9xkr58xjp` (`foto_id`),
  KEY `FK1amxpnr4qmw9xu69w3d103pyl` (`anfitrion_id`),
  CONSTRAINT `FK1amxpnr4qmw9xu69w3d103pyl` FOREIGN KEY (`anfitrion_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FK2ohnxd1j8lbdluk6v94f0i4gl` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`),
  CONSTRAINT `FK44exl18t6skf0qya9xkr58xjp` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,'Encantadora habitación doble en zona tranquila y agradable',NULL,950,'Ocupado',1,2,1,3),(2,'Habitación limpia fresca y comoda',NULL,1000,'Ocupado',2,2,2,3),(3,'Acogedor dormitorio doble en Wembley',NULL,900,'Ocupado',3,8,3,3),(4,'Habitación enorme en el área de Canary Wharf con balcón',NULL,750,NULL,10,2,4,3),(5,'Una habitación doble luminosa, el mejor sistema de transporte',NULL,500,NULL,11,3,5,3),(6,'Lugar perfecto cerca de Tower Bridge',NULL,600,NULL,12,6,6,3);
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-14  9:58:55
