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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `precio` float NOT NULL,
  `direccion_id` bigint(20) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `habitacion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `masInfo` longtext,
  PRIMARY KEY (`id`),
  KEY `FKa1m19iy1kw44jgtxp83onpitl` (`direccion_id`),
  CONSTRAINT `FKa1m19iy1kw44jgtxp83onpitl` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,3000,1,NULL,NULL,NULL,NULL),(2,3500,1,NULL,NULL,NULL,NULL),(3,1000,2,'El departamento tiene una excelente ubicación en el barrio Nueva Córdoba','Compartida','Hermoso departamento','El departamento tiene una excelente ubicación en el barrio Nueva Córdoba. Se encuentra a 200 metros de todas las paradas de buses y a metros de los museos más importantes de la ciudad (Palacio Ferreyra, Palacio Dionisi, Museo Caraffa, Museo de Ciencias Naturales). También se encuentra muy cerca de sanatorios reconocidos como el Sanatorio Allende, el Instituto Oulton y la Clínica del Sol.'),(4,1500,3,'Pequeño, cómodo y cálido departamento, bien equipado y agradablemente decorado con detalles orientales.','Privada','Sencillo y funcional departamento','Pequeño, cómodo y cálido departamento, bien equipado y agradablemente decorado con detalles orientales. Servicios y zonas comunes. Utilizar todo lo que necesiten de las alacenas. Otros aspectos destacables. La heladera es básica, sin freezer.'),(5,900,3,'Departamento nuevo con todo lo necesario para una estadía confortable. Gran balcón con vista hermosa de la ciudad. ','Compartida','Ideal para 2. Céntrico con gran vista','Departamento nuevo con todo lo necesario para una estadía confortable. Gran balcón con vista hermosa de la ciudad. Cómodo y moderno. Ideal para una estadía corta. No necesitás más. Solo para alojamiento familiar por viaje de trabajo, salud o turismo. No cuenta con WIFI ni cochera.'),(6,950,4,NULL,NULL,NULL,NULL),(7,5500,5,NULL,NULL,NULL,NULL),(9,950,6,'Pequeño apartamento en \"Nueva Córdoba\" rodeado de bares y restaurantes. ','Privada','Studio Apartment','Pequeño apartamento en \"Nueva Córdoba\" rodeado de bares y restaurantes. Ubicado en el centro, está a 5 cuadras de la estación central de autobuses, la universidad y un centro comercial. La cocina incluye una estufa de gas con 3 quemadores sobre un horno de gas. También incluye un fregadero, una nevera pequeña y ollas, sartenes, platos, etc. El baño incluye una gran ducha y artículos de aseo, inodoro y lavabo. En el dormitorio, hay una cama doble con un colchón extra firme y acceso a un pequeño balcón privado.'),(10,5500,7,'El descanso del viajero es un espacio cálido donde vas a relajarte despues de esas horas de viaje y prepararte para conocer la ciudad mas linda de todas. ','Privada','El descanso del viajero','El descanso del viajero es un espacio cálido donde vas a relajarte despues de esas horas de viaje y prepararte para conocer la ciudad mas linda de todas. A pocos metros de la terminal de ómnibus, se encuentra en un lugar estratégico y seguro, en el barrio de Nueva Córdoba pero alejado del ruido. '),(11,6500,8,'Alquiler temporario departamento de un dormitorio con balcón contra frente. Luminoso y ventilado.','Compartida','Depto de lujo! ','Alquiler temporario departamento de un dormitorio con balcón contra frente. Luminoso y ventilado. Entrepiso, no es necesario escaleras ni ascensor. El dpto. tiene piso de parquet, y cuenta con pava eléctrica, horno microondas, 2 equipos de A/A frió calor, 1 Tv lfull HD 32\", 1 Tv full HD smart 40\". Servicio de cable HD + internet 25 mb Wifi. Living comedor con mesa y sillas y sillón cama. Cocina equipada con todos los elementos, cocina 4 hornallas y heladera con frezer.o.');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-13 12:09:50
