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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) DEFAULT NULL,
  `cardNumber` bigint(20) DEFAULT NULL,
  `cardType` varchar(255) DEFAULT NULL,
  `cel` bigint(20) DEFAULT NULL,
  `clave` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `pais` varchar(255) DEFAULT NULL,
  `vencimiento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'zornetta',4111111111111111,'VISA',1131240181,111,'yzornetta@gmail.com','yessica','AR','12/22'),(2,'lagoria',5500000000000004,'MasterCard',1131299981,222,'kakak@jgjg.com','alberto','AR','02/22'),(3,'perez',NULL,NULL,1155667788,0,'juanperez@gmail.com','juan','UK',NULL),(14,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(15,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(16,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(17,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(18,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(19,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(20,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(21,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(22,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(23,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(24,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(25,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(26,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(27,'zornetta',4111111111111111,'Visa',1131240181,111,'yzornetta@hotmail.com','yessica','AR','12/23'),(28,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(29,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(30,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(31,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(32,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(33,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(34,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(35,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(36,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(37,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(38,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(39,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(40,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(41,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(42,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(43,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(44,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(45,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(46,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(47,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(48,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(49,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(50,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23'),(51,'zornetta',5500000000000004,'MasterCard',1131240181,333,'kakak@jgjg.com','yessica','AR','12/23');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-14  9:58:54
