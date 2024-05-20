CREATE DATABASE  IF NOT EXISTS `demo_park` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `demo_park`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: demo_park
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `criado_por` varchar(255) DEFAULT NULL,
  `data_criacao` datetime(6) DEFAULT NULL,
  `data_modificacao` datetime(6) DEFAULT NULL,
  `modificado_por` varchar(255) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r1u8010d60num5vc8fp0q1j2a` (`cpf`),
  UNIQUE KEY `UK_m1e6bw9cg5aydhk0rlylo5oom` (`id_usuario`),
  CONSTRAINT `FK8jxg42jrpamh07b7186gl6jpw` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'00891800034','bia@email.com','2024-05-17 10:35:53.000000','2024-05-17 10:35:53.000000','bia@email.com','Bianca Silva',3),(2,'40663565081','maguire@email.com','2024-05-17 10:36:26.000000','2024-05-17 10:36:26.000000','maguire@email.com','Toby Maguire',6),(3,'22345784008','carlos@email.com','2024-05-17 10:36:50.000000','2024-05-17 10:36:50.000000','carlos@email.com','Carlos da Rosa',7),(4,'05442027081','fernando@email.com','2024-05-17 10:37:15.000000','2024-05-17 10:37:15.000000','fernando@email.com','Fernando Kursky',8),(5,'40829560009','maria@email.com','2024-05-17 10:37:38.000000','2024-05-17 10:37:38.000000','maria@email.com','Maria Gomes',9),(6,'72031430076','robson@email.com','2024-05-17 10:38:01.000000','2024-05-17 10:38:01.000000','robson@email.com','Robson Crusué',10);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_tem_vagas`
--

DROP TABLE IF EXISTS `clientes_tem_vagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_tem_vagas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cor` varchar(45) NOT NULL,
  `criado_por` varchar(255) DEFAULT NULL,
  `data_criacao` datetime(6) DEFAULT NULL,
  `data_entrada` datetime(6) NOT NULL,
  `data_modificacao` datetime(6) DEFAULT NULL,
  `data_saida` datetime(6) DEFAULT NULL,
  `desconto` decimal(7,2) DEFAULT NULL,
  `marca` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `modificado_por` varchar(255) DEFAULT NULL,
  `placa` varchar(8) NOT NULL,
  `numero_recibo` varchar(15) NOT NULL,
  `valor` decimal(7,2) DEFAULT NULL,
  `id_cliente` bigint(20) NOT NULL,
  `id_vaga` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_agpe1wwe3uc5qblayk35eob6k` (`numero_recibo`),
  KEY `FK5ntw30dh0og8dcyng5pcyixgx` (`id_cliente`),
  KEY `FKs0tf5qlrta3jj8cuqgwf0qsf2` (`id_vaga`),
  CONSTRAINT `FK5ntw30dh0og8dcyng5pcyixgx` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `FKs0tf5qlrta3jj8cuqgwf0qsf2` FOREIGN KEY (`id_vaga`) REFERENCES `vagas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_tem_vagas`
--

LOCK TABLES `clientes_tem_vagas` WRITE;
/*!40000 ALTER TABLE `clientes_tem_vagas` DISABLE KEYS */;
INSERT INTO `clientes_tem_vagas` VALUES (1,'BRANCO','admin@email.com','2024-05-19 11:59:41.000000','2024-05-19 11:59:41.000000','2024-05-19 14:32:29.000000','2024-05-19 14:32:29.000000',0.00,'FIAT','UNO 1.0','admin@email.com','ABC-1234','20240519-115941',21.50,1,1),(2,'BRANCO','admin@email.com','2024-05-19 12:05:30.000000','2024-05-19 12:05:30.000000','2024-05-19 14:38:15.000000','2024-05-19 14:38:15.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-120530',21.50,2,2),(3,'BRANCO','admin@email.com','2024-05-19 14:34:54.000000','2024-05-19 14:34:54.000000','2024-05-19 14:35:44.000000','2024-05-19 14:35:44.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143454',5.00,2,1),(4,'BRANCO','admin@email.com','2024-05-19 14:36:03.000000','2024-05-19 14:36:03.000000','2024-05-19 14:36:17.000000','2024-05-19 14:36:17.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143603',5.00,2,1),(5,'BRANCO','admin@email.com','2024-05-19 14:36:57.000000','2024-05-19 14:36:57.000000','2024-05-19 14:37:03.000000','2024-05-19 14:37:03.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143657',5.00,2,1),(6,'BRANCO','admin@email.com','2024-05-19 14:37:10.000000','2024-05-19 14:37:10.000000','2024-05-19 14:37:15.000000','2024-05-19 14:37:15.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143710',5.00,2,1),(7,'BRANCO','admin@email.com','2024-05-19 14:37:54.000000','2024-05-19 14:37:54.000000','2024-05-19 14:37:59.000000','2024-05-19 14:37:59.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143754',5.00,2,1),(8,'BRANCO','admin@email.com','2024-05-19 14:38:41.000000','2024-05-19 14:38:41.000000','2024-05-19 14:38:59.000000','2024-05-19 14:38:59.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143841',5.00,2,1),(9,'BRANCO','admin@email.com','2024-05-19 14:38:43.000000','2024-05-19 14:38:43.000000','2024-05-19 14:39:06.000000','2024-05-19 14:39:06.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143843',5.00,2,2),(10,'BRANCO','admin@email.com','2024-05-19 14:38:44.000000','2024-05-19 14:38:44.000000','2024-05-19 14:39:15.000000','2024-05-19 14:39:15.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143844',5.00,2,3),(12,'BRANCO','admin@email.com','2024-05-19 14:39:26.000000','2024-05-19 14:39:26.000000','2024-05-19 14:39:34.000000','2024-05-19 14:39:34.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143926',5.00,2,1),(13,'BRANCO','admin@email.com','2024-05-19 14:39:39.000000','2024-05-19 14:39:39.000000','2024-05-19 14:39:44.000000','2024-05-19 14:39:44.000000',1.50,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-143939',5.00,2,1),(14,'BRANCO','admin@email.com','2024-05-19 14:40:04.000000','2024-05-19 14:40:04.000000','2024-05-19 14:40:09.000000','2024-05-19 14:40:09.000000',0.00,'HONDA','CR-X','admin@email.com','ABC-1010','20240519-144004',5.00,2,1),(15,'BRANCO','admin@email.com','2024-05-20 10:47:40.000000','2024-05-20 10:47:40.000000','2024-05-20 10:47:52.000000','2024-05-20 10:47:52.000000',0.00,'TOYOTA','AE 86','admin@email.com','ABC-1012','20240520-104740',5.00,2,1),(16,'BRANCO','admin@email.com','2024-05-20 20:16:33.000000','2024-05-20 20:16:33.000000','2024-05-20 20:17:01.000000','2024-05-20 20:17:01.000000',0.00,'TOYOTA','AE 86','admin@email.com','ABC-1012','20240520-201633',5.00,2,1),(17,'BRANCO','admin@email.com','2024-05-20 20:20:17.000000','2024-05-20 20:20:17.000000','2024-05-20 20:23:27.000000','2024-05-20 20:23:27.000000',0.00,'TOYOTA','AE 86','admin@email.com','ABC-1012','20240520-202017',5.00,2,1),(18,'BRANCO','admin@email.com','2024-05-20 20:20:28.000000','2024-05-20 20:20:28.000000','2024-05-20 20:23:45.000000','2024-05-20 20:23:45.000000',0.00,'TOYOTA','COROLA','admin@email.com','ABC-1012','20240520-202028',5.00,2,2),(19,'BRANCO','admin@email.com','2024-05-20 20:20:58.000000','2024-05-20 20:20:58.000000','2024-05-20 20:24:14.000000','2024-05-20 20:24:14.000000',0.00,'TOYOTA','COROLA CROSS','admin@email.com','ABC-1012','20240520-202058',5.00,2,3),(20,'BRANCO','admin@email.com','2024-05-20 20:21:07.000000','2024-05-20 20:21:07.000000','2024-05-20 20:24:04.000000','2024-05-20 20:24:04.000000',0.00,'TOYOTA','HILUX','admin@email.com','ABC-1012','20240520-202107',5.00,2,4);
/*!40000 ALTER TABLE `clientes_tem_vagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `criado_por` varchar(255) DEFAULT NULL,
  `data_criacao` datetime(6) DEFAULT NULL,
  `data_modificacao` datetime(6) DEFAULT NULL,
  `modificado_por` varchar(255) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `role` enum('ROLE_ADMIN','ROLE_CLIENTE') NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m2dvbwfge291euvmk6vkkocao` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'anonymousUser','2024-05-17 10:33:43.000000','2024-05-17 10:33:43.000000','anonymousUser','$2a$10$RsI/JCy4owAgc16uQYmAb.cAzDwB0.Gh5I.fpF3I1lMWBw.FU1ahu','ROLE_ADMIN','admin@email.com'),(2,'anonymousUser','2024-05-17 10:33:45.000000','2024-05-17 10:33:45.000000','anonymousUser','$2a$10$dbJ141iIYUjd3j2GYErj9.PuYU5vw51fUQfw3QX.72ceNZgcEVIIi','ROLE_ADMIN','ana@email.com'),(3,'anonymousUser','2024-05-17 10:34:07.000000','2024-05-17 10:34:07.000000','anonymousUser','$2a$10$FR0Go7irEZxZYGF2q8ZfQuqaNdJn8tRGhHhI2v.j7dDOGTnZeD/d2','ROLE_CLIENTE','bia@email.com'),(4,'anonymousUser','2024-05-17 10:34:10.000000','2024-05-17 10:34:10.000000','anonymousUser','$2a$10$68GAR0aR22s8dxIIbHGDcO1AB5QBjBCly1rpAgeg3x4C/ZI5Dbv6S','ROLE_CLIENTE','bob@email.com'),(5,'anonymousUser','2024-05-17 10:34:18.000000','2024-05-17 10:34:18.000000','anonymousUser','$2a$10$934tPPLo05PHBq1ADf/99eTki6E4dL0I0UgM/YqQ/CmbIgh0arcNm','ROLE_CLIENTE','toby@email.com'),(6,'anonymousUser','2024-05-17 10:34:23.000000','2024-05-17 10:34:23.000000','anonymousUser','$2a$10$cnhih0nCpciRNpL/vV6IN.668frJqUUqPt/XlfQAwJLpOp9mN9RI6','ROLE_CLIENTE','maguire@email.com'),(7,'anonymousUser','2024-05-17 10:34:28.000000','2024-05-17 10:34:28.000000','anonymousUser','$2a$10$fr1CBjeb6RrdURv3y6C.euaawXu7nxPQsue.HJfwlRMq3yyPqP6xi','ROLE_CLIENTE','carlos@email.com'),(8,'anonymousUser','2024-05-17 10:34:32.000000','2024-05-17 10:34:32.000000','anonymousUser','$2a$10$7v.A0zQilL6Wb.YAlE3OQ.zpOdDfGb9jKrsjfgeCnB4kXfsN7U4A6','ROLE_CLIENTE','fernando@email.com'),(9,'anonymousUser','2024-05-17 10:34:36.000000','2024-05-17 10:34:36.000000','anonymousUser','$2a$10$zMggUNe7/nJ0fx6ZN7nXGe8DPBAtr1gcROrg/tgiMju7ZWCmjpfaG','ROLE_CLIENTE','maria@email.com'),(10,'anonymousUser','2024-05-17 10:34:42.000000','2024-05-17 10:34:42.000000','anonymousUser','$2a$10$KdMPP.t6YGcOaHUTYZDCNORG7nvOtt1cK4Bbk28cqHsamxvmDEflu','ROLE_CLIENTE','robson@email.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagas`
--

DROP TABLE IF EXISTS `vagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(4) NOT NULL,
  `criado_por` varchar(255) DEFAULT NULL,
  `data_criacao` datetime(6) DEFAULT NULL,
  `data_modificacao` datetime(6) DEFAULT NULL,
  `modificado_por` varchar(255) DEFAULT NULL,
  `status` enum('LIVRE','OCUPADA') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_54hpxc5myuvl930vp05tvrd14` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagas`
--

LOCK TABLES `vagas` WRITE;
/*!40000 ALTER TABLE `vagas` DISABLE KEYS */;
INSERT INTO `vagas` VALUES (1,'A-01','admin@email.com','2024-05-17 13:45:30.000000','2024-05-20 20:23:27.000000','admin@email.com','LIVRE'),(2,'A-02','admin@email.com','2024-05-19 11:55:26.000000','2024-05-20 20:23:45.000000','admin@email.com','LIVRE'),(3,'A-03','admin@email.com','2024-05-19 11:55:29.000000','2024-05-20 20:24:14.000000','admin@email.com','LIVRE'),(4,'A-04','admin@email.com','2024-05-19 11:55:31.000000','2024-05-20 20:24:04.000000','admin@email.com','LIVRE');
/*!40000 ALTER TABLE `vagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'demo_park'
--

--
-- Dumping routines for database 'demo_park'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 20:48:22
