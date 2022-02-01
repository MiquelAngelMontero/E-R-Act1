CREATE DATABASE  IF NOT EXISTS `ud12` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ud12`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ud12
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `time_lines`
--

DROP TABLE IF EXISTS `time_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_lines` (
  `ID_TL` int NOT NULL,
  `TWEET:SEGUIDO` varchar(200) DEFAULT NULL,
  `LIKE_SEGUIDO` int DEFAULT NULL,
  `RETWEET_SEGUIDO` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_TL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_lines`
--

LOCK TABLES `time_lines` WRITE;
/*!40000 ALTER TABLE `time_lines` DISABLE KEYS */;
INSERT INTO `time_lines` VALUES (1,'368',1000,'254'),(2,'1545',12182,'500'),(3,'1254542',2154753,'32485'),(4,'4521',12456,'4512'),(5,'0',2,'0'),(6,'25634',4157,'456'),(7,'24',452,'457'),(8,'53',12,'85'),(9,'69',25,'53'),(10,'15',44,'4');
/*!40000 ALTER TABLE `time_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trendings_toppics`
--

DROP TABLE IF EXISTS `trendings_toppics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trendings_toppics` (
  `idtrendings_toppics` int NOT NULL,
  `palabra_clave` varchar(10) DEFAULT NULL,
  `id_tweet` int DEFAULT NULL,
  PRIMARY KEY (`idtrendings_toppics`),
  KEY `id_idx` (`id_tweet`),
  CONSTRAINT `id` FOREIGN KEY (`id_tweet`) REFERENCES `tweets` (`ID_TWEET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trendings_toppics`
--

LOCK TABLES `trendings_toppics` WRITE;
/*!40000 ALTER TABLE `trendings_toppics` DISABLE KEYS */;
INSERT INTO `trendings_toppics` VALUES (1,'frwe',2),(2,'f',8),(3,'w',6),(4,'s',4),(5,'ew',3),(6,'d',8),(7,'a',10),(8,'hola',1),(9,'c',7),(10,'f',5);
/*!40000 ALTER TABLE `trendings_toppics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweets` (
  `ID_TWEET` int NOT NULL,
  `MENSAJE` varchar(200) DEFAULT NULL,
  `NUMERO_LIKES` int DEFAULT NULL,
  `NUMERO_DISLIKES` int DEFAULT NULL,
  `NUMERO_RETWEETS` int DEFAULT NULL,
  PRIMARY KEY (`ID_TWEET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES (1,'hola',5874,5466,445524),(2,'adios',782,753,5433),(3,'que tal',2752,54,34),(4,'bona tardeeeee',72,5736,5457),(5,'leche',724,735,426),(6,'teclado',257,356,5673),(7,'bases',386,673356,7568),(8,'de',6734,65478,975),(9,'datos',838,678,9785),(10,'?',73,123,667);
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `USUARIO` varchar(20) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `FOTO_PERFIL` varchar(45) NOT NULL,
  `FOTO_BANNER` varchar(45) NOT NULL,
  `NUM_SEGUIDORES` varchar(45) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `DESCRIPCION` varchar(45) DEFAULT NULL,
  `FECHA_INICIO` date NOT NULL,
  `DIRECION` varchar(200) NOT NULL,
  `ID_TWEET` int NOT NULL,
  PRIMARY KEY (`USUARIO`),
  KEY `TWEET_idx` (`ID_TWEET`),
  CONSTRAINT `TWEET` FOREIGN KEY (`ID_TWEET`) REFERENCES `tweets` (`ID_TWEET`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('adri','adri','tert','rg','315','2020-01-12','tyjt','2000-01-12','trh',6),('albert','albert','ert','r','2554','2020-01-12','rewg','2000-01-12','tr',5),('franciscojose','jose','erwt','re','3453','2020-01-12','efwrgtn','2000-01-12','rte',4),('jaime','jaime','w','re','35456','2020-01-12','ergw','2000-01-12','trh',2),('juanma89','juan','dwe','rfe','2135551','2020-01-12','tyt','2000-01-12','rteh',3),('miquel','miquel','a','rge','462362','2020-01-12','ewrg','2000-01-12','tre',10),('paco','paco','t','few','76567234343','2020-01-12','gerw','2000-01-12','rtge',1),('pau','pau','ewryt','re','432667','2020-01-12','werg','2000-01-12','thre',9),('samu','samu','fwertyy','r','236','2020-01-12','fwerf','2000-01-12','trherthe',8),('victor','victor','wefef','r','1','2020-01-12','fwer','2000-01-12','trh',7);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31 12:29:58
