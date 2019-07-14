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
  `descripcion` varchar(255) DEFAULT NULL,
  `masInfo` longtext,
  `direccion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa1m19iy1kw44jgtxp83onpitl` (`direccion_id`),
  CONSTRAINT `FKa1m19iy1kw44jgtxp83onpitl` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón.','Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón. El apartamento está situado en el borde del centro de Londres (zona 2) Las paredes del apartamento están cubiertas de obras de arte y los huéspedes están siempre sorprendidos por el estilo interesante del lugar. Venga a ver la pared de invitados llena de fotos polaroid de la gente increíble que se han quedado en nuestra casa. Lo más importante soy muy sociable, amable y siempre interesado en conocer gente nueva. Paso mucho tiempo mostrando invitados',1),(2,'Nuestro piso está compuesto por un amplio salón, cocina y baño. La oferta plana tiene una habitación doble muy cómoda, un gran armario y una mesa de noche. Es muy brillante y cálido.','Nuestros huéspedes pueden usar todos los espacios comunes: sala de estar, cocina y baño. ¡Tenemos suficiente espacio para todos! Puede usar la cocina para su cena o desayuno',2),(3,'Con mucha luz y espacio, una cama doble en la elegante casa del sureste de Londres.','Con acceso a nuestro encantador salón / comedor de planta abierta y cocina equipada con vista al jardín. También tendrás tu propio cuarto de baño privado con w / WC frente al dormitorio.',3),(10,'El apartamento está situado junto a Devons Road DLR (2 min) y a 8 min de Bow Road, que ofrecen excelentes conexiones con el centro de la ciudad, Canary Wharf, Stratford / Olympic Park, City Airport y London Excel.','La habitación está amueblada con una cama doble, 2 sofás, una mesa pequeña y un gran armario. Tiene un balcón privado que da a una calle tranquila con un parque. Compartirás el apartamento conmigo y mi compañero de piso. La casa está siempre tranquila ya que trabajamos principalmente. Los huéspedes pueden hacer uso de la cocina y cocinar y tendrán espacio para poner sus cosas en la nevera. Se ofrecerá té y café.',11),(11,'2 minutos a pie de un gran mercado de alimentos, abierto durante las horas de almuerzo los días de semana con una amplia variedad de alimentos del mundo. 6 minutos a pie hasta el Big Ben.','Una hermosa y acogedora habitación con una cama doble, un armario para colgar la ropa. Una ventana con una gran cantidad de luz natural que inunda y una vista decente. Se encuentra en el cuarto piso y solo se puede acceder por las escaleras, por lo que si no te importa caminar los pasos, puedes disfrutar de tu estadía aquí. Esta es una habitación para no fumadores, así que para los fumadores, diríjase al balcón para fumar.',12),(12,'Esta habitación se encuentra en un apartamento de 3 habitaciones y está completamente amueblada. El piso NO es moderno, pero está muy bien mantenido. Vivo en una de las habitaciones, y otras habitaciones son para huéspedes de Airbnb.','La habitación está completamente amueblada con una cama doble con colchón, un cajón, un escritorio con silla y un armario. La ubicación es increíble. Tiene estaciones de London Bridge / Bermondsey en un lado y Tower Bridge en el otro. La estación de metro de London Bridge es muy accesible y se puede llegar en 15 minutos a pie. La cocina está totalmente equipada y tiene horno, hervidor, nevera y utensilios de cocina para su uso. Hay un baño y debe ser compartido con otros huéspedes en otras habitaciones. Rollos de papel higiénico se proporcionan junto con toallas de baño para los huéspedes. También hay una lavadora para su uso. Si tienes un presupuesto limitado y no quieres vivir lejos de la ciudad de Londres, este es el lugar',13);
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

-- Dump completed on 2019-07-13 21:23:25
