-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb71495
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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `catNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `catNombre` (`catNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (2,'Cámaras mirorless'),(6,'Consolas'),(3,'Lentes'),(4,'Parlantes bluetooth'),(5,'Smart TV'),(1,'Smartphone'),(7,'Tablets');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `idDestino` smallint unsigned NOT NULL AUTO_INCREMENT,
  `aeropuerto` varchar(100) NOT NULL,
  `precio` decimal(8,2) unsigned NOT NULL,
  `idRegion` tinyint unsigned NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idDestino`),
  UNIQUE KEY `aeropuerto` (`aeropuerto`),
  KEY `idRegion` (`idRegion`),
  CONSTRAINT `destinos_ibfk_1` FOREIGN KEY (`idRegion`) REFERENCES `regiones` (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Londres (Heathrow)',9711.00,5,1),(2,'Amsterdam (Schiphol)',6231.00,5,1),(3,'Miami (Wilcox Field)',6517.00,4,1),(4,'Tokio (Narita)',8704.00,7,1),(5,'Kuala Lumpur (KLIA)',8570.00,7,1),(6,'Bangkok (Suvarnabhumi)',8469.00,7,1),(7,'París (Charles de Gaulle)',7713.00,5,1),(8,'Cancún (Cancún)',6494.00,3,1),(9,'Milán (Malpensa)',6756.00,5,1);
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_precios`
--

DROP TABLE IF EXISTS `lista_precios`;
/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_precios` AS SELECT 
 1 AS `id`,
 1 AS `Producto`,
 1 AS `Contado`,
 1 AS `Lista`,
 1 AS `Marca`,
 1 AS `Categoría`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `mkNombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `mkNombre` (`mkNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (2,'Apple'),(3,'Audiotechnica'),(6,'Huawei'),(4,'Marshall'),(1,'Nikon'),(5,'Samsung');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `apellido` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `dni` int unsigned NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier',25852410,'2008-12-12'),(2,'González','Mónica',36520147,'2005-09-30'),(3,'Martínez','Vanessa',35741952,'2006-06-21'),(4,'Álvarez','Fernando',32912457,'2007-11-02'),(5,'Page','Jimmy',18543219,'1954-01-09'),(6,'Plant','Robert',18543220,'1960-01-09'),(7,'Bonham','Bonzo',18543221,'1960-01-09'),(8,'Jones','John',18543222,'1960-01-09');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `aproximado` float unsigned NOT NULL,
  `exacto` decimal(9,2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,43.89,19.99),(2,19.99,85.10),(3,85.1,30.40),(4,30.4,56.00),(5,56,70.60),(6,70.6,43.89);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `prdNombre` varchar(45) NOT NULL,
  `prdPrecio` decimal(8,2) unsigned NOT NULL,
  `idMarca` tinyint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `prdDescripcion` varchar(1000) NOT NULL,
  `prdImagen` varchar(45) NOT NULL,
  `prdActivo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `prdNombre` (`prdNombre`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Nikon Z6',1650.00,1,2,'Cuerpo de cámara sin espejo formato full frame. Resolución 24.5 MPX. Bluetooth, Wi-Fi, GPS. ISO 100-51200','nikon-z6.jpg',1),(2,'iPhone 12 Pro (256GB) gold',1200.00,2,1,'Apple iPhone 12 Pro de 256GB color dorado, libre de carrier.','iphone-12-pro-gold.png',1),(3,'Marshall Acton II',300.00,4,4,'Altavoz inalámbrico Marshall Acton II. Wi-Fi y Bluetooth multihabitación color negro.','marshall-acton.jpg',1),(4,'Homepod Mini',100.00,2,4,'Altavoz inteligente inalámbrico. Compatible con Siri. Wifi, Bluetooth. Compatible con multihabitación.','homepod-mini.jpg',1),(5,'Samsung Class QLED Q80T Series',1200.00,5,5,'Smart TV Samsung Class QLED Q80T Series, 65\", 4K, UHD','Q80T.jpg',1),(6,'P40 Pro Plus 512GB',1250.00,6,1,'Smartphone Huawei P40 Pro Plus 5G 512GB','P40-pro-plus.jpg',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `idRegion` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (2,'América Central'),(4,'América del Norte'),(1,'América del Sur'),(7,'Asia'),(3,'Caribe y México'),(6,'Europa del Este'),(5,'Europa Occidental'),(8,'Oceanía');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `lista_precios`
--

/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_precios` AS select `p`.`idProducto` AS `id`,`p`.`prdNombre` AS `Producto`,`p`.`prdPrecio` AS `Contado`,(`p`.`prdPrecio` * 1.05) AS `Lista`,`m`.`mkNombre` AS `Marca`,`c`.`catNombre` AS `Categoría` from ((`productos` `p` join `marcas` `m` on((`p`.`idMarca` = `m`.`idMarca`))) join `categorias` `c` on((`p`.`idCategoria` = `c`.`idCategoria`))) order by `p`.`idProducto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06 20:12:56
