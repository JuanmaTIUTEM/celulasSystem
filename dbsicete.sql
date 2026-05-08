-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbsicete
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `bitacora_accesos`
--

DROP TABLE IF EXISTS `bitacora_accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_accesos` (
  `idBitacora` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int DEFAULT NULL,
  `accion` enum('LOGIN','LOGOUT') NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `userAgent` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idBitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_accesos`
--

LOCK TABLES `bitacora_accesos` WRITE;
/*!40000 ALTER TABLE `bitacora_accesos` DISABLE KEYS */;
INSERT INTO `bitacora_accesos` VALUES (1,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 07:57:31'),(2,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 08:06:18'),(3,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 08:06:20'),(4,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 09:27:39'),(5,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 09:27:40'),(6,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 09:28:12'),(7,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 09:28:13'),(8,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 09:29:40'),(9,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0','2026-02-10 09:29:41'),(10,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-16 19:54:09'),(11,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-16 19:54:16'),(12,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-16 19:54:16'),(13,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 10:19:16'),(14,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 10:19:35'),(15,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 10:21:41'),(16,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 10:25:51'),(17,2,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 10:25:59'),(18,2,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 11:08:28'),(19,2,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 11:08:38'),(20,2,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-17 11:09:16'),(21,2,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36','2026-02-24 11:13:42'),(22,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','2026-04-13 18:13:37'),(23,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','2026-04-13 18:16:04'),(24,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','2026-04-13 18:16:19'),(25,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','2026-04-13 18:16:30'),(26,2,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','2026-04-13 18:17:04'),(27,2,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','2026-04-14 09:18:25'),(28,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36','2026-04-14 09:18:37');
/*!40000 ALTER TABLE `bitacora_accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `celulatecnologica`
--

DROP TABLE IF EXISTS `celulatecnologica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `celulatecnologica` (
  `idCT` int NOT NULL AUTO_INCREMENT,
  `claveCT` varchar(10) NOT NULL,
  `nombreCT` varchar(150) NOT NULL,
  `areaAcademicaCT` varchar(150) DEFAULT NULL,
  `idCoordinadorCT` int DEFAULT NULL,
  `objetivoGeneralCT` text,
  `impactoEsperado` text,
  PRIMARY KEY (`idCT`),
  UNIQUE KEY `claveCT` (`claveCT`),
  KEY `idCoordinadorCT` (`idCoordinadorCT`),
  CONSTRAINT `celulatecnologica_ibfk_1` FOREIGN KEY (`idCoordinadorCT`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celulatecnologica`
--

LOCK TABLES `celulatecnologica` WRITE;
/*!40000 ALTER TABLE `celulatecnologica` DISABLE KEYS */;
/*!40000 ALTER TABLE `celulatecnologica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronograma`
--

DROP TABLE IF EXISTS `cronograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cronograma` (
  `id_cronograma` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `actividad` varchar(255) DEFAULT NULL,
  `bimestre_1` tinyint(1) DEFAULT NULL,
  `bimestre_2` tinyint(1) DEFAULT NULL,
  `bimestre_3` tinyint(1) DEFAULT NULL,
  `bimestre_4` tinyint(1) DEFAULT NULL,
  `bimestre_5` tinyint(1) DEFAULT NULL,
  `bimestre_6` tinyint(1) DEFAULT NULL,
  `bimestre_7` tinyint(1) DEFAULT NULL,
  `bimestre_8` tinyint(1) DEFAULT NULL,
  `bimestre_9` tinyint(1) DEFAULT NULL,
  `bimestre_10` tinyint(1) DEFAULT NULL,
  `bimestre_11` tinyint(1) DEFAULT NULL,
  `bimestre_12` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_cronograma`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `cronograma_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronograma`
--

LOCK TABLES `cronograma` WRITE;
/*!40000 ALTER TABLE `cronograma` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentos` (
  `idDocumento` int NOT NULL AUTO_INCREMENT,
  `idCelula` int NOT NULL,
  `tipoDocumento` enum('FOR-04-D_r0','FOR-04-E_r0','FOR-04-F_r0','FOR-04-G_r0','FOR-04-H_r0') NOT NULL,
  `nombreArchivo` varchar(255) NOT NULL,
  `rutaArchivo` varchar(255) NOT NULL,
  `fechaSubida` datetime DEFAULT CURRENT_TIMESTAMP,
  `subidoPor` int DEFAULT NULL,
  PRIMARY KEY (`idDocumento`),
  KEY `idCelula` (`idCelula`),
  CONSTRAINT `documentos_ibfk_1` FOREIGN KEY (`idCelula`) REFERENCES `celulatecnologica` (`idCT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `carrera` varchar(150) NOT NULL,
  `semestre` int NOT NULL,
  `turno` enum('matutino','vespertino') NOT NULL,
  `capacidad` int DEFAULT '30',
  `activo` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unica_clave` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrante`
--

DROP TABLE IF EXISTS `integrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrante` (
  `id_integrante` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `categoria` enum('Responsable','Colaborador','Alumno') DEFAULT NULL,
  `horas_semana` int DEFAULT NULL,
  PRIMARY KEY (`id_integrante`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `integrante_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrante`
--

LOCK TABLES `integrante` WRITE;
/*!40000 ALTER TABLE `integrante` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `idPersona` int NOT NULL AUTO_INCREMENT,
  `clavePersona` varchar(10) NOT NULL,
  `nombrePersona` varchar(100) NOT NULL,
  `apellidosPersona` varchar(150) NOT NULL,
  `emailContacto` varchar(150) DEFAULT NULL,
  `telefonoContacto` varchar(20) DEFAULT NULL,
  `genero` enum('Masculino','Femenino','Otro') DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `curpPersona` varchar(20) NOT NULL,
  `rfcPersona` varchar(15) NOT NULL,
  `institucion` varchar(150) DEFAULT NULL,
  `puesto` varchar(100) DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPersona`),
  UNIQUE KEY `clavePersona` (`clavePersona`),
  UNIQUE KEY `curpPersona` (`curpPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'PER5087','Juan Manuel','Fernández Alvarez',NULL,NULL,NULL,NULL,'CURP2959','RFC9536',NULL,NULL,'2026-02-10 13:37:25'),(2,'PER8668','Juan Manuel','Fernandez Alvarez',NULL,NULL,NULL,NULL,'CURP8292','RFC5460',NULL,NULL,'2026-02-17 16:21:26');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planactividad`
--

DROP TABLE IF EXISTS `planactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planactividad` (
  `idPlanActividad` int NOT NULL AUTO_INCREMENT,
  `clavePlanActividad` varchar(10) NOT NULL,
  `idPlanTrabajo` int NOT NULL,
  `descripcion` text NOT NULL,
  `responsable` varchar(150) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `estatus` enum('Pendiente','En curso','Completada') DEFAULT 'Pendiente',
  PRIMARY KEY (`idPlanActividad`),
  UNIQUE KEY `clavePlanActividad` (`clavePlanActividad`),
  KEY `idPlanTrabajo` (`idPlanTrabajo`),
  CONSTRAINT `planactividad_ibfk_1` FOREIGN KEY (`idPlanTrabajo`) REFERENCES `plantrabajo` (`idPlanTrabajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planactividad`
--

LOCK TABLES `planactividad` WRITE;
/*!40000 ALTER TABLE `planactividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `planactividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planmeta`
--

DROP TABLE IF EXISTS `planmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planmeta` (
  `idPlanMeta` int NOT NULL AUTO_INCREMENT,
  `clavePlanMeta` varchar(10) NOT NULL,
  `idPlanTrabajo` int NOT NULL,
  `descripcion` text NOT NULL,
  `indicador` varchar(100) DEFAULT NULL,
  `fechaCompromiso` date DEFAULT NULL,
  `estatus` enum('Pendiente','Alcanzada','No alcanzada') DEFAULT 'Pendiente',
  PRIMARY KEY (`idPlanMeta`),
  UNIQUE KEY `clavePlanMeta` (`clavePlanMeta`),
  KEY `idPlanTrabajo` (`idPlanTrabajo`),
  CONSTRAINT `planmeta_ibfk_1` FOREIGN KEY (`idPlanTrabajo`) REFERENCES `plantrabajo` (`idPlanTrabajo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planmeta`
--

LOCK TABLES `planmeta` WRITE;
/*!40000 ALTER TABLE `planmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `planmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantrabajo`
--

DROP TABLE IF EXISTS `plantrabajo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantrabajo` (
  `idPlanTrabajo` int NOT NULL AUTO_INCREMENT,
  `clavePlanTrabajo` varchar(10) NOT NULL,
  `idCelula` int NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text,
  `fechaElaboracion` date DEFAULT NULL,
  `periodo` varchar(50) DEFAULT NULL,
  `responsable` varchar(150) DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPlanTrabajo`),
  UNIQUE KEY `clavePlanTrabajo` (`clavePlanTrabajo`),
  KEY `idCelula` (`idCelula`),
  CONSTRAINT `plantrabajo_ibfk_1` FOREIGN KEY (`idCelula`) REFERENCES `celulatecnologica` (`idCT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantrabajo`
--

LOCK TABLES `plantrabajo` WRITE;
/*!40000 ALTER TABLE `plantrabajo` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantrabajo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyecto` (
  `id_proyecto` int NOT NULL AUTO_INCREMENT,
  `idCelula` int NOT NULL,
  `clave_proyecto` varchar(50) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `objetivo` text,
  `resumen` text,
  `linea_investigacion` text,
  `experiencia_previa` text,
  `carrera` varchar(150) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`),
  UNIQUE KEY `clave_proyecto` (`clave_proyecto`),
  KEY `idCelula` (`idCelula`),
  CONSTRAINT `proyecto_ibfk_1` FOREIGN KEY (`idCelula`) REFERENCES `celulatecnologica` (`idCT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `nombreRol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idRol`),
  UNIQUE KEY `nombreRol` (`nombreRol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titular`
--

DROP TABLE IF EXISTS `titular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titular` (
  `id_titular` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `nombre_completo` varchar(200) DEFAULT NULL,
  `puesto` varchar(150) DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_titular`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `titular_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titular`
--

LOCK TABLES `titular` WRITE;
/*!40000 ALTER TABLE `titular` DISABLE KEYS */;
/*!40000 ALTER TABLE `titular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `claveUsuario` varchar(10) NOT NULL,
  `idPersona` int NOT NULL,
  `correoInstitucional` varchar(100) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `rol` enum('Administrador','Académico','Coordinador','Dirección','Rectoría','Alumno','Empresario','Vinculación') DEFAULT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bActivo` bit(1) DEFAULT b'0',
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `claveUsuario` (`claveUsuario`),
  UNIQUE KEY `correoInstitucional` (`correoInstitucional`),
  KEY `idPersona` (`idPersona`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'USR8803',1,'manuel-fernandez@utem.edu.mx','a005a4777f8a90774460256b7f36af7a','Administrador','2026-02-10 13:37:25',_binary ''),(2,'USR2421',2,'juan-fernandez@utem.edu.mx','a005a4777f8a90774460256b7f36af7a','Académico','2026-02-17 16:21:26',_binary '');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_rol`
--

DROP TABLE IF EXISTS `usuario_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_rol` (
  `idUsuario` int NOT NULL,
  `idRol` int NOT NULL,
  PRIMARY KEY (`idUsuario`,`idRol`),
  KEY `fk_usuarioRol_rol` (`idRol`),
  CONSTRAINT `fk_usuarioRol_rol` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRol`) ON DELETE CASCADE,
  CONSTRAINT `fk_usuarioRol_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_rol`
--

LOCK TABLES `usuario_rol` WRITE;
/*!40000 ALTER TABLE `usuario_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_celulas_coordinador`
--

DROP TABLE IF EXISTS `vw_celulas_coordinador`;
/*!50001 DROP VIEW IF EXISTS `vw_celulas_coordinador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_celulas_coordinador` AS SELECT 
 1 AS `idCT`,
 1 AS `claveCT`,
 1 AS `nombreCT`,
 1 AS `areaAcademicaCT`,
 1 AS `objetivoGeneralCT`,
 1 AS `impactoEsperado`,
 1 AS `coordinadorCorreo`,
 1 AS `coordinadorRol`,
 1 AS `nombrePersona`,
 1 AS `apellidosPersona`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_cronograma_proyecto`
--

DROP TABLE IF EXISTS `vw_cronograma_proyecto`;
/*!50001 DROP VIEW IF EXISTS `vw_cronograma_proyecto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cronograma_proyecto` AS SELECT 
 1 AS `clave_proyecto`,
 1 AS `actividad`,
 1 AS `bimestres`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usuariopersona`
--

DROP TABLE IF EXISTS `vw_usuariopersona`;
/*!50001 DROP VIEW IF EXISTS `vw_usuariopersona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_usuariopersona` AS SELECT 
 1 AS `idPersona`,
 1 AS `idUsuario`,
 1 AS `clavePersona`,
 1 AS `nombre`,
 1 AS `apellidos`,
 1 AS `emailContacto`,
 1 AS `telefonoContacto`,
 1 AS `genero`,
 1 AS `fechaNacimiento`,
 1 AS `curpPersona`,
 1 AS `rfcPersona`,
 1 AS `institucion`,
 1 AS `puesto`,
 1 AS `claveUsuario`,
 1 AS `correoInstitucional`,
 1 AS `rol`,
 1 AS `nombreCompleto`,
 1 AS `bActivo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_celulas_coordinador`
--

/*!50001 DROP VIEW IF EXISTS `vw_celulas_coordinador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_celulas_coordinador` AS select `ct`.`idCT` AS `idCT`,`ct`.`claveCT` AS `claveCT`,`ct`.`nombreCT` AS `nombreCT`,`ct`.`areaAcademicaCT` AS `areaAcademicaCT`,`ct`.`objetivoGeneralCT` AS `objetivoGeneralCT`,`ct`.`impactoEsperado` AS `impactoEsperado`,`u`.`correoInstitucional` AS `coordinadorCorreo`,`u`.`rol` AS `coordinadorRol`,`p`.`nombrePersona` AS `nombrePersona`,`p`.`apellidosPersona` AS `apellidosPersona` from ((`celulatecnologica` `ct` left join `usuario` `u` on((`ct`.`idCoordinadorCT` = `u`.`idUsuario`))) left join `persona` `p` on((`u`.`idPersona` = `p`.`idPersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_cronograma_proyecto`
--

/*!50001 DROP VIEW IF EXISTS `vw_cronograma_proyecto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cronograma_proyecto` AS select `p`.`clave_proyecto` AS `clave_proyecto`,`c`.`actividad` AS `actividad`,concat_ws(',',if(`c`.`bimestre_1`,1,NULL),if(`c`.`bimestre_2`,2,NULL),if(`c`.`bimestre_3`,3,NULL),if(`c`.`bimestre_4`,4,NULL),if(`c`.`bimestre_5`,5,NULL),if(`c`.`bimestre_6`,6,NULL),if(`c`.`bimestre_7`,7,NULL),if(`c`.`bimestre_8`,8,NULL),if(`c`.`bimestre_9`,9,NULL),if(`c`.`bimestre_10`,10,NULL),if(`c`.`bimestre_11`,11,NULL),if(`c`.`bimestre_12`,12,NULL)) AS `bimestres` from (`cronograma` `c` join `proyecto` `p` on((`c`.`id_proyecto` = `p`.`id_proyecto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_usuariopersona`
--

/*!50001 DROP VIEW IF EXISTS `vw_usuariopersona`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuariopersona` AS select `p`.`idPersona` AS `idPersona`,`u`.`idUsuario` AS `idUsuario`,`p`.`clavePersona` AS `clavePersona`,`p`.`nombrePersona` AS `nombre`,`p`.`apellidosPersona` AS `apellidos`,`p`.`emailContacto` AS `emailContacto`,`p`.`telefonoContacto` AS `telefonoContacto`,`p`.`genero` AS `genero`,`p`.`fechaNacimiento` AS `fechaNacimiento`,`p`.`curpPersona` AS `curpPersona`,`p`.`rfcPersona` AS `rfcPersona`,`p`.`institucion` AS `institucion`,`p`.`puesto` AS `puesto`,`u`.`claveUsuario` AS `claveUsuario`,`u`.`correoInstitucional` AS `correoInstitucional`,`u`.`rol` AS `rol`,concat(`p`.`nombrePersona`,' ',`p`.`apellidosPersona`) AS `nombreCompleto`,`u`.`bActivo` AS `bActivo` from (`persona` `p` join `usuario` `u` on((`p`.`idPersona` = `u`.`idPersona`))) */;
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

-- Dump completed on 2026-04-14 11:20:47
