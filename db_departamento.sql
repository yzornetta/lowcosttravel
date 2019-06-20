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
  `nombre` varchar(255) DEFAULT NULL,
  `direccion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa1m19iy1kw44jgtxp83onpitl` (`direccion_id`),
  CONSTRAINT `FKa1m19iy1kw44jgtxp83onpitl` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón.','Este es un apartamento en la planta superior con excelentes vistas de la ciudad desde el balcón. El apartamento está situado en el borde del centro de Londres (zona 2) Las paredes del apartamento están cubiertas de obras de arte y los huéspedes están siempre sorprendidos por el estilo interesante del lugar. Venga a ver la pared de invitados llena de fotos polaroid de la gente increíble que se han quedado en nuestra casa. Lo más importante soy muy sociable, amable y siempre interesado en conocer gente nueva. Paso mucho tiempo mostrando invitados','Artistic room - Amazing view',1),(4,'Ofrecemos una acogedora habitación doble en nuestra encantadora y moderna casa ubicada en una zona fantástica, tranquila y segura, en el medio del histórico Parque Ecológico Rotherhithe','Nuestra encantadora y moderna casa ubicada en una fantástica zona tranquila y segura en el medio del histórico Parque Ecológico Rotherhithe, un área natural de 5.2 acres ubicada en el centro del antiguo Muelle Comercial de Surrey y justo sobre el río Támesis. A solo 2 minutos a pie de la parada de autobús (381-C10) ya 5 minutos a pie de la estación Rotherhithe (Overground) y la estación acuática de Canadá (Jubilee Line-Overground) donde los trenes pasan cada 2 minutos hasta el centro de Londres (solo 8 minutos en el metro ). Ofrecemos una acogedora habitación individual para una persona con vistas al jardín y baño (para compartir) al lado, la cocina está disponible para su uso, lavadora y Wifi disponible, secador de pelo y plancha.Este espacio es ideal para cualquiera que visite Londres con un presupuesto','Encantadora habitación',4),(5,'Airy gran habitación privada en una casa familiar cerca de Canary Wharf w / baño compartido, cocina y jardín','2 minutos a pie hasta la estación de Westferry (DLR), 2 minutos a pie a la estación de Poplar (DLR), 5 minutos a pie de Canary Wharf (DLR y Jubileo), 5 minutos a pie del cine, el museo Docklands, el centro comercial, varios restaurantes. Tiendas locales al otro lado de la carretera','Hermosa habitación privada cerca de Canary Wharf',5),(18,'Este loft completamente renovado ofrece, bajo un espléndido techo de vidrio, servicios de lujo con muebles de lujo y decoración con toques de Art Nouveau y los años veinte del Roaring. También cuenta con un jacuzzi para dos personas. ','Acceso a la entrada del alojamiento sin escalones. Entrada amplia en el acceso principal del alojamiento. Camino a la entrada bien iluminado.','Loft romántico con jacuzzi en los Campos Elíseos',18),(19,'El típico apartamento parisino está situado en el corazón de los lugares turísticos: el Arco del Triunfo, los Campos Elíseos, la Torre Eiffel, el Louvre y la Ópera. Un barrio muy animado, le encantará su mercado, bares y muchas tiendas.','El apartamento es un alojamiento de 100 m2 e incluye: 1 salón-1 comedor - 3 dormitorios-1 baño en renovación-1 cocina. Se encuentra en una de las avenidas más céntricas de París con vistas al Arco del Triunfo, a 5 minutos a pie de los Campos Elíseos, a 4 paradas de metro de la Torre Eiffel, el Museo del Louvre y la Ópera. El apartamento está situado en el segundo piso de un edificio parisino, y está amueblado en un estilo clásico. El baño y la cocina, enteramente disponibles, están actualmente en renovación. La habitación está situada en el lado de la avenida. Incluye una cama doble, un armario grande, un escritorio y un piano. Da acceso directo a la sala de estar y al baño. Estamos rodeados por 3 gatos encantadores y ocasionalmente un pequeño perro que pertenece a nuestra hija mayor. Estamos acostumbrados a recibir a estudiantes extranjeros pasando unos días en París, ya que mi hijo está haciendo sus estudios en Suiza en una escuela internacional de gestión. ','Alquiler de habitaciones en una casa de familia',19);
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

-- Dump completed on 2019-06-19 21:37:51
