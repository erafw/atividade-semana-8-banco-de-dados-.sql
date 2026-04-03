-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: lojadevinhos
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `regiao`
--

DROP TABLE IF EXISTS `regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiao` (
  `codRegiao` bigint NOT NULL AUTO_INCREMENT,
  `nomeRegiao` varchar(100) NOT NULL,
  `descricaoRegiao` text,
  PRIMARY KEY (`codRegiao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiao`
--

LOCK TABLES `regiao` WRITE;
/*!40000 ALTER TABLE `regiao` DISABLE KEYS */;
INSERT INTO `regiao` VALUES (1,'Mendoza','Região conhecida pelos vinhos Malbec'),(2,'Toscana','Famosa pelos vinhos Chianti e Brunello'),(3,'Bordeaux','Região de prestígio na produção de vinhos franceses'),(4,'Califórnia','Famosa pelos vinhos Cabernet e Chardonnay'),(5,'Vale do Douro','Região reconhecida pelos vinhos do Porto');
/*!40000 ALTER TABLE `regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinho`
--

DROP TABLE IF EXISTS `vinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinho` (
  `codVinho` bigint NOT NULL AUTO_INCREMENT,
  `nomeVinho` varchar(100) NOT NULL,
  `tipoVinho` varchar(50) DEFAULT NULL,
  `anoVinho` int DEFAULT NULL,
  `descricaoVinho` text,
  `codVinicola` bigint DEFAULT NULL,
  PRIMARY KEY (`codVinho`),
  KEY `codVinicola` (`codVinicola`),
  CONSTRAINT `vinho_ibfk_1` FOREIGN KEY (`codVinicola`) REFERENCES `vinicola` (`codVinicola`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinho`
--

LOCK TABLES `vinho` WRITE;
/*!40000 ALTER TABLE `vinho` DISABLE KEYS */;
INSERT INTO `vinho` VALUES (12,'Malbec Tradicional','Tinto',2021,'Notas de frutas vermelhas maduras',1),(13,'Chianti Reserva','Tinto',2020,'Aroma de especiarias e frutas secas',2),(14,'Cabernet Sauvignon Prestige','Tinto',2019,'Vinho encorpado e sofisticado',3),(15,'Chardonnay Clássico','Branco',2022,'Leve e refrescante, com notas cítricas',4),(16,'Porto Vintage','Fortificado',2018,'Sabor doce e intenso, ideal para sobremesas',5);
/*!40000 ALTER TABLE `vinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinicola`
--

DROP TABLE IF EXISTS `vinicola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinicola` (
  `codVinicola` bigint NOT NULL AUTO_INCREMENT,
  `nomeVinicola` varchar(100) NOT NULL,
  `descricaoVinicola` text,
  `foneVinicola` varchar(15) DEFAULT NULL,
  `emailVinicola` varchar(100) DEFAULT NULL,
  `codRegiao` bigint DEFAULT NULL,
  PRIMARY KEY (`codVinicola`),
  KEY `codRegiao` (`codRegiao`),
  CONSTRAINT `vinicola_ibfk_1` FOREIGN KEY (`codRegiao`) REFERENCES `regiao` (`codRegiao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinicola`
--

LOCK TABLES `vinicola` WRITE;
/*!40000 ALTER TABLE `vinicola` DISABLE KEYS */;
INSERT INTO `vinicola` VALUES (1,'Bodega Andes','Vinícola renomada na Argentina','123456789','contato@andes.com',1),(2,'La Toscana Wines','Produção artesanal de vinhos italianos','987654321','info@toscana.com',2),(3,'Château Bordeaux','Vinhos de altíssima qualidade','111222333','info@chateaubordeaux.com',3),(4,'Napa Valley Finest','Especialistas em vinhos premium','444555666','contact@napavalley.com',4),(5,'Quinta do Porto','Tradicional vinícola portuguesa','777888999','contato@quintadoporto.pt',5);
/*!40000 ALTER TABLE `vinicola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lojadevinhos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 20:41:05
