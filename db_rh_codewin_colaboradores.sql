-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_rh_codewin
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `data_nascimento` date DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cargo_id` int DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `cargo_id` (`cargo_id`),
  KEY `departamento_id` (`departamento_id`),
  CONSTRAINT `colaboradores_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`),
  CONSTRAINT `colaboradores_ibfk_2` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (11,'João Silva','47895604111','1985-06-15','(12) 3456-7890','joao.silva@empresa.com',3,2,'2020-01-15',7500.00),(12,'Maria Souza','36985214709','1990-08-22','(11) 9876-5432','maria.souza@empresa.com',1,1,'2021-03-10',1500.00),(13,'William Douglas','11987654321','1994-10-05','(13) 9876-5432','william.douglas@empresa.com',3,2,'2019-05-10',4800.00),(14,'Alana Smith','52374521490','1996-01-03','(14) 98215-0020','alana.smith@empresa.com',2,4,'2019-04-10',3500.00),(15,'Luan Oliveira','12345678920','1975-04-25','(20) 9879-4158','luan.oliveira@empresa.com',6,2,'2018-06-04',2800.00),(16,'Mayara Alba','52149631820','2003-08-10','(45) 99123-3545','mayara.alba@empresa.com',4,2,'2021-11-27',2800.00),(17,'Roberto Luiz','02348569310','1969-07-22','(87) 98177-0001','roberto.luiz@empresa.com',2,4,'2015-02-09',3500.00),(18,'Letícia Silva','85696314758','1997-06-04','(13) 98823-6962','leticia.silva@empresa.com',5,2,'2020-03-11',2800.00),(19,'Walace Teixeira','30283540245','2002-12-10','(11) 98176-4321','walace.teixeira@empresa.com',9,1,'2022-05-29',1850.00),(20,'Eloá Guilherme','48730196429','2004-05-09','(11) 99876-0000','eloa.guilherme@empresa.com',9,2,'2021-03-10',1850.00);
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-04 22:51:41
