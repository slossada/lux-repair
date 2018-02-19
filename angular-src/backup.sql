-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: localhost    Database: luxrepairDB
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `Administrador`
--

DROP TABLE IF EXISTS `Administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Administrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_Administrador` FOREIGN KEY (`id`) REFERENCES `Empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrador`
--

LOCK TABLES `Administrador` WRITE;
/*!40000 ALTER TABLE `Administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cliente` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_Cliente` FOREIGN KEY (`id`) REFERENCES `Usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'2018-02-19 21:54:48','2018-02-19 21:54:48');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FechaNacimiento` datetime DEFAULT NULL,
  `Sexo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_Empleado` FOREIGN KEY (`id`) REFERENCES `Usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES (2,'2017-01-01 00:00:00','Masculino','2018-02-19 22:34:55','2018-02-19 22:47:10');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gerente`
--

DROP TABLE IF EXISTS `Gerente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gerente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_Gerente` FOREIGN KEY (`id`) REFERENCES `Empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gerente`
--

LOCK TABLES `Gerente` WRITE;
/*!40000 ALTER TABLE `Gerente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gerente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marca`
--

DROP TABLE IF EXISTS `Marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marca`
--

LOCK TABLES `Marca` WRITE;
/*!40000 ALTER TABLE `Marca` DISABLE KEYS */;
INSERT INTO `Marca` VALUES (1,'Alfa Romeo'),(2,'Aston Martin'),(3,'Audi'),(4,'Chery'),(5,'Chevrolet'),(6,'Dodge'),(7,'Ferrari'),(8,'Ford'),(9,'Honda'),(10,'Lamborghini'),(11,'Lexus'),(12,'Mazda'),(13,'Mercedez Benz'),(14,'Mitsubishi'),(15,'Nissan'),(16,'Toyota'),(17,'Volvo'),(999,'Otros');
/*!40000 ALTER TABLE `Marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mecanico`
--

DROP TABLE IF EXISTS `Mecanico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mecanico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_Mecanico` FOREIGN KEY (`id`) REFERENCES `Empleado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mecanico`
--

LOCK TABLES `Mecanico` WRITE;
/*!40000 ALTER TABLE `Mecanico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Mecanico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Modelo`
--

DROP TABLE IF EXISTS `Modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Modelo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Marca` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Marca` (`Marca`),
  CONSTRAINT `fk_Marca` FOREIGN KEY (`Marca`) REFERENCES `Marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Modelo`
--

LOCK TABLES `Modelo` WRITE;
/*!40000 ALTER TABLE `Modelo` DISABLE KEYS */;
INSERT INTO `Modelo` VALUES (1,'488',7),(2,'458 Spider',7),(3,'4Runner',16),(4,'Accord',9),(5,'Aventador',10),(6,'Aveo',5),(7,'C-Class',13),(8,'Camaro',5),(9,'Challenger',6),(10,'Charger',6),(11,'Civic',9),(12,'Durango',6),(13,'E-Class',13),(14,'Eclipse Cross',14),(15,'Explorer',8),(16,'F150',8),(17,'FJ Cruiser',16),(18,'Gran Tiger',4),(19,'Guilia',1),(20,'HS',11),(21,'Huracán',10),(22,'IS',11),(23,'J50',7),(24,'LS',11),(25,'Mazda3',12),(26,'Mazda6',12),(27,'Montero',14),(28,'Murano',15),(29,'Mustang',8),(30,'MX-5',12),(31,'Orinoco',4),(32,'Outlander',14),(33,'Pathfinder',15),(34,'R8',3),(35,'Rapide S',2),(36,'Ridgeline',9),(37,'RS 6',3),(38,'S-Class',13),(39,'S90',17),(40,'Sequoia',16),(41,'Silverado',5),(42,'Stelvio Quadrifoglio',1),(43,'Stelvio TI',1),(44,'Tiggo',4),(45,'Titan',15),(46,'TTS',3),(47,'Urus',10),(48,'V40 Cross Country',17),(49,'Vanquish',2),(50,'Vulcan',2),(51,'XC90',17);
/*!40000 ALTER TABLE `Modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orden`
--

DROP TABLE IF EXISTS `Orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orden` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Vehiculo` int(11) NOT NULL,
  `Estado` varchar(255) NOT NULL DEFAULT 'Sin Cita',
  `Servicio` varchar(255) NOT NULL DEFAULT 'Sin Servicio',
  `Detalle` text NOT NULL,
  `Evaluacion` text NOT NULL,
  `FechaSolicitud` datetime NOT NULL,
  `FechaAdmision` datetime DEFAULT NULL,
  `FechaFinalizacion` datetime DEFAULT NULL,
  `Activa` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id_Vehiculo_idx` (`Vehiculo`),
  CONSTRAINT `id_Vehiculo` FOREIGN KEY (`Vehiculo`) REFERENCES `Vehiculo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orden`
--

LOCK TABLES `Orden` WRITE;
/*!40000 ALTER TABLE `Orden` DISABLE KEYS */;
INSERT INTO `Orden` VALUES (1,1,'En Espera','Revisión General','Mantenimiento rutinario por los 50.000 km.','Por evaluar','2018-02-19 21:56:57',NULL,NULL,1),(2,3,'En Espera','Cambio de Aceite','Cambio de aceite rutinario.','Por evaluar','2018-02-19 22:50:38',NULL,NULL,1);
/*!40000 ALTER TABLE `Orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repuesto`
--

DROP TABLE IF EXISTS `Repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Repuesto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` text NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Disponibilidad` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repuesto`
--

LOCK TABLES `Repuesto` WRITE;
/*!40000 ALTER TABLE `Repuesto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Servicio`
--

DROP TABLE IF EXISTS `Servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Servicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Descripcion` varchar(1500) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Servicio`
--

LOCK TABLES `Servicio` WRITE;
/*!40000 ALTER TABLE `Servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Snombre` varchar(255) DEFAULT NULL,
  `Apellido` varchar(255) NOT NULL,
  `Cedula` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Cedula` (`Cedula`),
  UNIQUE KEY `Usuario_Cedula_unique` (`Cedula`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'Phil',NULL,'Collins',21889067,'philcollins@me.com','philcollins','$2a$10$RZMdPRTeNPto5AyQcL2SOuHq56aY9GkK.yKX8EZS9kyGKrLhhCcEq'),(2,'Stephen',NULL,'Curry',16332675,'stephcurry@me.com','stephcurry','$2a$10$6LAH5LFluNVT0NkuELr/f.AOyHj5CzlPkcL9fvcUD6Yxel4AolkwK');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Vehiculo`
--

DROP TABLE IF EXISTS `Vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Vehiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente` int(11) NOT NULL,
  `Serial` varchar(255) NOT NULL,
  `Marca` int(11) NOT NULL,
  `Modelo` int(11) NOT NULL,
  `Placa` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `esAutomatico` tinyint(1) NOT NULL DEFAULT '1',
  `esUnicoDueno` tinyint(1) NOT NULL DEFAULT '1',
  `Ano` int(11) NOT NULL,
  `NroPuertas` int(11) NOT NULL DEFAULT '5',
  `Activo` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Serial` (`Serial`),
  UNIQUE KEY `Vehiculo_Serial_unique` (`Serial`),
  KEY `Marca` (`Marca`),
  KEY `Modelo` (`Modelo`),
  CONSTRAINT `Marca` FOREIGN KEY (`Marca`) REFERENCES `Marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Modelo` FOREIGN KEY (`Modelo`) REFERENCES `Modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Vehiculo`
--

LOCK TABLES `Vehiculo` WRITE;
/*!40000 ALTER TABLE `Vehiculo` DISABLE KEYS */;
INSERT INTO `Vehiculo` VALUES (1,1,'4455667789',10,5,'AC54FG','Amarillo',0,1,2016,3,1),(2,1,'223388765',8,29,'NP442AL','Rojo',1,1,2017,3,1),(3,1,'224455674',16,3,'DF44GA','Gris',1,1,2017,5,1);
/*!40000 ALTER TABLE `Vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-19 19:11:44
