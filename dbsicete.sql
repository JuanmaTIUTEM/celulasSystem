-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbsicete
-- ------------------------------------------------------
-- Server version	8.0.44

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
CREATE DATABASE IF NOT EXISTS dbsicete;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_accesos`
--

LOCK TABLES `bitacora_accesos` WRITE;
/*!40000 ALTER TABLE `bitacora_accesos` DISABLE KEYS */;
INSERT INTO `bitacora_accesos` VALUES (1,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 12:45:30'),(2,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 12:51:06'),(3,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 12:56:20'),(4,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 12:56:23'),(5,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 12:57:53'),(6,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 12:57:56'),(7,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 14:07:00'),(8,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-15 14:07:02'),(9,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-16 11:28:53'),(10,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-16 11:35:00'),(11,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-16 11:48:43'),(12,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-16 11:48:45'),(13,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-16 13:59:39'),(14,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-16 13:59:43'),(15,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-17 11:08:10'),(16,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-17 11:08:12'),(17,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-17 11:18:57'),(18,1,'LOGIN','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-17 11:23:25'),(19,1,'LOGOUT','::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0','2025-12-17 11:23:28');
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
  CONSTRAINT `celulatecnologica_ibfk_1` FOREIGN KEY (`idCoordinadorCT`) REFERENCES `usuario` (`idUsuario`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `celulatecnologica`
--

LOCK TABLES `celulatecnologica` WRITE;
/*!40000 ALTER TABLE `celulatecnologica` DISABLE KEYS */;
INSERT INTO `celulatecnologica` VALUES (1,'CT001','TIC','Tecnologías de la Información',1,'Generar nuevos proyectos','Muchos papers');
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
-- Table structure for table `document_reminders`
--

DROP TABLE IF EXISTS `document_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_reminders` (
  `idReminder` int NOT NULL AUTO_INCREMENT,
  `idCelula` int NOT NULL,
  `emailTo` varchar(150) DEFAULT NULL,
  `createdBy` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idReminder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_reminders`
--

LOCK TABLES `document_reminders` WRITE;
/*!40000 ALTER TABLE `document_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_reminders` ENABLE KEYS */;
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
-- Table structure for table `financiamiento`
--

DROP TABLE IF EXISTS `financiamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financiamiento` (
  `id_financiamiento` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `equipo` decimal(12,2) DEFAULT NULL,
  `material` decimal(12,2) DEFAULT NULL,
  `otros` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`id_financiamiento`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `financiamiento_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financiamiento`
--

LOCK TABLES `financiamiento` WRITE;
/*!40000 ALTER TABLE `financiamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `financiamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuente_financiamiento`
--

DROP TABLE IF EXISTS `fuente_financiamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuente_financiamiento` (
  `id_fuente` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_fuente`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `fuente_financiamiento_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuente_financiamiento`
--

LOCK TABLES `fuente_financiamiento` WRITE;
/*!40000 ALTER TABLE `fuente_financiamiento` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuente_financiamiento` ENABLE KEYS */;
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
-- Table structure for table `integrantecelula`
--

DROP TABLE IF EXISTS `integrantecelula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrantecelula` (
  `idIntegrante` int NOT NULL AUTO_INCREMENT,
  `claveIntegrante` varchar(10) NOT NULL,
  `idCelulaInt` int DEFAULT NULL,
  `idUsuarioICT` int DEFAULT NULL,
  `rolEnCelula` varchar(100) DEFAULT NULL,
  `fechaIngreso` date DEFAULT NULL,
  PRIMARY KEY (`idIntegrante`),
  UNIQUE KEY `claveIntegrante` (`claveIntegrante`),
  KEY `idCelulaInt` (`idCelulaInt`),
  KEY `idUsuarioICT` (`idUsuarioICT`),
  CONSTRAINT `integrantecelula_ibfk_1` FOREIGN KEY (`idCelulaInt`) REFERENCES `celulatecnologica` (`idCT`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `integrantecelula_ibfk_2` FOREIGN KEY (`idUsuarioICT`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrantecelula`
--

LOCK TABLES `integrantecelula` WRITE;
/*!40000 ALTER TABLE `integrantecelula` DISABLE KEYS */;
/*!40000 ALTER TABLE `integrantecelula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineainvestigacion`
--

DROP TABLE IF EXISTS `lineainvestigacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineainvestigacion` (
  `idLinea` int NOT NULL AUTO_INCREMENT,
  `claveLinea` varchar(10) NOT NULL,
  `nombreLI` varchar(150) NOT NULL,
  `idCelulaLI` int DEFAULT NULL,
  PRIMARY KEY (`idLinea`),
  UNIQUE KEY `claveLinea` (`claveLinea`),
  KEY `idCelulaLI` (`idCelulaLI`),
  CONSTRAINT `lineainvestigacion_ibfk_1` FOREIGN KEY (`idCelulaLI`) REFERENCES `celulatecnologica` (`idCT`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineainvestigacion`
--

LOCK TABLES `lineainvestigacion` WRITE;
/*!40000 ALTER TABLE `lineainvestigacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineainvestigacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_planactividad`
--

DROP TABLE IF EXISTS `log_planactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_planactividad` (
  `idLog` int NOT NULL AUTO_INCREMENT,
  `idPlanActividad` int DEFAULT NULL,
  `accion` varchar(50) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idLog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_planactividad`
--

LOCK TABLES `log_planactividad` WRITE;
/*!40000 ALTER TABLE `log_planactividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_planactividad` ENABLE KEYS */;
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
  UNIQUE KEY `curpPers` (`curpPersona`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'FEAJ850930','Juan Manuel','Fernández Alvarez','manuel-fernandez@utem.edu.mx','3122100436','Masculino','1985-09-30','FEAJ850930HJCRLN07','FEAJ850930GV1','Universidad Tecnológica de Manzanillo','PTC TIC\'s','2025-10-15 21:43:11');
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
  CONSTRAINT `planactividad_ibfk_1` FOREIGN KEY (`idPlanTrabajo`) REFERENCES `plantrabajo` (`idPlanTrabajo`) ON DELETE CASCADE ON UPDATE CASCADE
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
  CONSTRAINT `planmeta_ibfk_1` FOREIGN KEY (`idPlanTrabajo`) REFERENCES `plantrabajo` (`idPlanTrabajo`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `planproyecto`
--

DROP TABLE IF EXISTS `planproyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planproyecto` (
  `idPlanProyecto` int NOT NULL AUTO_INCREMENT,
  `clavePlanProyecto` varchar(10) NOT NULL,
  `idPlanTrabajo` int NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `estado` enum('Planeado','En ejecución','Finalizado') DEFAULT 'Planeado',
  PRIMARY KEY (`idPlanProyecto`),
  UNIQUE KEY `clavePlanProyecto` (`clavePlanProyecto`),
  KEY `idPlanTrabajo` (`idPlanTrabajo`),
  CONSTRAINT `planproyecto_ibfk_1` FOREIGN KEY (`idPlanTrabajo`) REFERENCES `plantrabajo` (`idPlanTrabajo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planproyecto`
--

LOCK TABLES `planproyecto` WRITE;
/*!40000 ALTER TABLE `planproyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `planproyecto` ENABLE KEYS */;
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
  CONSTRAINT `plantrabajo_ibfk_1` FOREIGN KEY (`idCelula`) REFERENCES `celulatecnologica` (`idCT`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `produccion_proyecto`
--

DROP TABLE IF EXISTS `produccion_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produccion_proyecto` (
  `id_produccion` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `tipo` enum('Estadías','Prototipo','Patentes','Investigación Básica','Investigación Aplicada','Desarrollo Experimental','Servicio Público','Servicio Social','Servicio Productivo','Otros') DEFAULT NULL,
  PRIMARY KEY (`id_produccion`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `produccion_proyecto_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion_proyecto`
--

LOCK TABLES `produccion_proyecto` WRITE;
/*!40000 ALTER TABLE `produccion_proyecto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produccion_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produccion_seaes`
--

DROP TABLE IF EXISTS `produccion_seaes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produccion_seaes` (
  `id_seaes` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `criterio` enum('Responsabilidad Social','Equidad Social y de Género','Inclusión','Excelencia','Vanguardia','Innovación social','Interculturalidad') DEFAULT NULL,
  PRIMARY KEY (`id_seaes`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `produccion_seaes_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produccion_seaes`
--

LOCK TABLES `produccion_seaes` WRITE;
/*!40000 ALTER TABLE `produccion_seaes` DISABLE KEYS */;
/*!40000 ALTER TABLE `produccion_seaes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productosesperados`
--

DROP TABLE IF EXISTS `productosesperados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productosesperados` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `nombreProd` varchar(150) NOT NULL,
  `cantidadProd` int DEFAULT '1',
  `idCelulaPro` int DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `idCelulaPro` (`idCelulaPro`),
  CONSTRAINT `productosesperados_ibfk_1` FOREIGN KEY (`idCelulaPro`) REFERENCES `celulatecnologica` (`idCT`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productosesperados`
--

LOCK TABLES `productosesperados` WRITE;
/*!40000 ALTER TABLE `productosesperados` DISABLE KEYS */;
/*!40000 ALTER TABLE `productosesperados` ENABLE KEYS */;
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
  KEY `clave_Celula` (`idCelula`)
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
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publicacion` (
  `id_publicacion` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `tipo` enum('Artículo indexado','Artículo arbitrado','Divulgación','Memorias de Congreso','Estadía','Otra') DEFAULT NULL,
  `especificacion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_publicacion`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `publicacion_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
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
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usertype` (
  `idusertype` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `urol` enum('Administrador','Académico','Coordinador','Dirección','Rectoría','Alumno','Empresario','Vinculación') DEFAULT NULL,
  `fechaRegistro` datetime DEFAULT CURRENT_TIMESTAMP,
  `bAtivo` bit(1) DEFAULT b'1',
  PRIMARY KEY (`idusertype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
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
  `contrasena` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rol` enum('Administrador','Académico','Coordinador','Dirección','Rectoría','Alumno','Empresario','Vinculación') NOT NULL,
  `fechaRegistro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bActivo` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `claveUsuario` (`claveUsuario`),
  UNIQUE KEY `correoInstitucional` (`correoInstitucional`),
  KEY `idPersona` (`idPersona`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idPersona`) REFERENCES `persona` (`idPersona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'ADMIN01',1,'manuel-fernandez@utem.edu.mx','a005a4777f8a90774460256b7f36af7a','Administrador','2025-10-15 21:43:54',_binary '');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validacion`
--

DROP TABLE IF EXISTS `validacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `validacion` (
  `id_validacion` int NOT NULL AUTO_INCREMENT,
  `id_proyecto` int DEFAULT NULL,
  `presenta_nombre` varchar(200) DEFAULT NULL,
  `presenta_cargo` varchar(150) DEFAULT NULL,
  `recibe_nombre` varchar(200) DEFAULT NULL,
  `recibe_cargo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_validacion`),
  KEY `id_proyecto` (`id_proyecto`),
  CONSTRAINT `validacion_ibfk_1` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validacion`
--

LOCK TABLES `validacion` WRITE;
/*!40000 ALTER TABLE `validacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `validacion` ENABLE KEYS */;
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
 1 AS `idCoordinadorCT`,
 1 AS `objetivoGeneralCT`,
 1 AS `impactoEsperado`,
 1 AS `coordinadorCorreo`,
 1 AS `coordinadorRol`,
 1 AS `name`,
 1 AS `lastName`*/;
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
-- Temporary view structure for view `vw_integrantes_celula`
--

DROP TABLE IF EXISTS `vw_integrantes_celula`;
/*!50001 DROP VIEW IF EXISTS `vw_integrantes_celula`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_integrantes_celula` AS SELECT 
 1 AS `idIntegrante`,
 1 AS `rolEnCelula`,
 1 AS `fechaIngreso`,
 1 AS `claveUsuario`,
 1 AS `nombrePersona`,
 1 AS `apellidosPersona`,
 1 AS `idCelulaInt`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_plantrabajo_detalle`
--

DROP TABLE IF EXISTS `vw_plantrabajo_detalle`;
/*!50001 DROP VIEW IF EXISTS `vw_plantrabajo_detalle`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_plantrabajo_detalle` AS SELECT 
 1 AS `idPlanTrabajo`,
 1 AS `planTitulo`,
 1 AS `planDescripcion`,
 1 AS `idPlanActividad`,
 1 AS `actividadDescripcion`,
 1 AS `actividadEstatus`,
 1 AS `idPlanMeta`,
 1 AS `metaDescripcion`,
 1 AS `metaEstatus`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_proyectosgeneral`
--

DROP TABLE IF EXISTS `vw_proyectosgeneral`;
/*!50001 DROP VIEW IF EXISTS `vw_proyectosgeneral`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_proyectosgeneral` AS SELECT 
 1 AS `claveCT`,
 1 AS `celulatecnologica`,
 1 AS `id_proyecto`,
 1 AS `clave_proyecto`,
 1 AS `titulo`,
 1 AS `carrera`,
 1 AS `fecha_inicio`,
 1 AS `fecha_fin`,
 1 AS `linea_investigacion`,
 1 AS `id_titular`,
 1 AS `nombreTitular`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_proyectosseaes`
--

DROP TABLE IF EXISTS `vw_proyectosseaes`;
/*!50001 DROP VIEW IF EXISTS `vw_proyectosseaes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_proyectosseaes` AS SELECT 
 1 AS `clave_proyecto`,
 1 AS `titulo`,
 1 AS `criterio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_usuariopersona`
--

DROP TABLE IF EXISTS `vw_usuariopersona`;
/*!50001 DROP VIEW IF EXISTS `vw_usuariopersona`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_usuariopersona` AS SELECT 
 1 AS `idUsuario`,
 1 AS `claveUsuario`,
 1 AS `correoInstitucional`,
 1 AS `rol`,
 1 AS `bActivo`,
 1 AS `idPersona`,
 1 AS `clavePersona`,
 1 AS `nombrePersona`,
 1 AS `nombreCompleto`,
 1 AS `emailContacto`,
 1 AS `telefonoContacto`,
 1 AS `curp`,
 1 AS `rfc`,
 1 AS `institucion`,
 1 AS `puesto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwcelulac`
--

DROP TABLE IF EXISTS `vwcelulac`;
/*!50001 DROP VIEW IF EXISTS `vwcelulac`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwcelulac` AS SELECT 
 1 AS `idCT`,
 1 AS `nombreCT`,
 1 AS `objetivoGeneralCT`,
 1 AS `impactoEsperado`,
 1 AS `areaAcademicaCT`,
 1 AS `claveCT`,
 1 AS `coordinadorCorreo`,
 1 AS `coordinadorRol`,
 1 AS `idPersona`,
 1 AS `clavePersona`,
 1 AS `name`,
 1 AS `lastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_celulas_coordinador`
--

/*!50001 DROP VIEW IF EXISTS `vw_celulas_coordinador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_celulas_coordinador` AS select `ct`.`idCT` AS `idCT`,`ct`.`claveCT` AS `claveCT`,`ct`.`nombreCT` AS `nombreCT`,`ct`.`areaAcademicaCT` AS `areaAcademicaCT`,`ct`.`idCoordinadorCT` AS `idCoordinadorCT`,`ct`.`objetivoGeneralCT` AS `objetivoGeneralCT`,`ct`.`impactoEsperado` AS `impactoEsperado`,`u`.`correoInstitucional` AS `coordinadorCorreo`,`u`.`rol` AS `coordinadorRol`,`pe`.`nombrePersona` AS `name`,`pe`.`apellidosPersona` AS `lastName` from ((`celulatecnologica` `ct` left join `usuario` `u` on((`ct`.`idCoordinadorCT` = `u`.`idUsuario`))) left join `persona` `pe` on((`u`.`idPersona` = `pe`.`idPersona`))) */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`adminDB`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cronograma_proyecto` AS select `p`.`clave_proyecto` AS `clave_proyecto`,`c`.`actividad` AS `actividad`,concat(if(`c`.`bimestre_1`,'1,',''),if(`c`.`bimestre_2`,'2,',''),if(`c`.`bimestre_3`,'3,',''),if(`c`.`bimestre_4`,'4,',''),if(`c`.`bimestre_5`,'5,',''),if(`c`.`bimestre_6`,'6,',''),if(`c`.`bimestre_7`,'7,',''),if(`c`.`bimestre_8`,'8,',''),if(`c`.`bimestre_9`,'9,',''),if(`c`.`bimestre_10`,'10,',''),if(`c`.`bimestre_11`,'11,',''),if(`c`.`bimestre_12`,'12','')) AS `bimestres` from (`cronograma` `c` join `proyecto` `p` on((`c`.`id_proyecto` = `p`.`id_proyecto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_integrantes_celula`
--

/*!50001 DROP VIEW IF EXISTS `vw_integrantes_celula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_integrantes_celula` AS select `ic`.`idIntegrante` AS `idIntegrante`,`ic`.`rolEnCelula` AS `rolEnCelula`,`ic`.`fechaIngreso` AS `fechaIngreso`,`u`.`claveUsuario` AS `claveUsuario`,`p`.`nombrePersona` AS `nombrePersona`,`p`.`apellidosPersona` AS `apellidosPersona`,`ic`.`idCelulaInt` AS `idCelulaInt` from ((`integrantecelula` `ic` join `usuario` `u` on((`ic`.`idUsuarioICT` = `u`.`idUsuario`))) join `persona` `p` on((`u`.`idPersona` = `p`.`idPersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_plantrabajo_detalle`
--

/*!50001 DROP VIEW IF EXISTS `vw_plantrabajo_detalle`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_plantrabajo_detalle` AS select `pt`.`idPlanTrabajo` AS `idPlanTrabajo`,`pt`.`titulo` AS `planTitulo`,`pt`.`descripcion` AS `planDescripcion`,`pa`.`idPlanActividad` AS `idPlanActividad`,`pa`.`descripcion` AS `actividadDescripcion`,`pa`.`estatus` AS `actividadEstatus`,`pm`.`idPlanMeta` AS `idPlanMeta`,`pm`.`descripcion` AS `metaDescripcion`,`pm`.`estatus` AS `metaEstatus` from ((`plantrabajo` `pt` left join `planactividad` `pa` on((`pt`.`idPlanTrabajo` = `pa`.`idPlanTrabajo`))) left join `planmeta` `pm` on((`pt`.`idPlanTrabajo` = `pm`.`idPlanTrabajo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_proyectosgeneral`
--

/*!50001 DROP VIEW IF EXISTS `vw_proyectosgeneral`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`adminDB`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_proyectosgeneral` AS select `c`.`claveCT` AS `claveCT`,`c`.`nombreCT` AS `celulatecnologica`,`p`.`id_proyecto` AS `id_proyecto`,`p`.`clave_proyecto` AS `clave_proyecto`,`p`.`titulo` AS `titulo`,`p`.`carrera` AS `carrera`,`p`.`fecha_inicio` AS `fecha_inicio`,`p`.`fecha_fin` AS `fecha_fin`,`p`.`linea_investigacion` AS `linea_investigacion`,`t`.`id_titular` AS `id_titular`,`t`.`nombre_completo` AS `nombreTitular` from ((`proyecto` `p` left join `celulatecnologica` `c` on((`p`.`idCelula` = `c`.`idCT`))) join `titular` `t` on((`t`.`id_proyecto` = `p`.`id_proyecto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_proyectosseaes`
--

/*!50001 DROP VIEW IF EXISTS `vw_proyectosseaes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`adminDB`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_proyectosseaes` AS select `p`.`clave_proyecto` AS `clave_proyecto`,`p`.`titulo` AS `titulo`,`s`.`criterio` AS `criterio` from (`proyecto` `p` join `produccion_seaes` `s` on((`p`.`id_proyecto` = `s`.`id_proyecto`))) */;
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
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`adminDB`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_usuariopersona` AS select `u`.`idUsuario` AS `idUsuario`,`u`.`claveUsuario` AS `claveUsuario`,`u`.`correoInstitucional` AS `correoInstitucional`,`u`.`rol` AS `rol`,`u`.`bActivo` AS `bActivo`,`p`.`idPersona` AS `idPersona`,`p`.`clavePersona` AS `clavePersona`,`p`.`nombrePersona` AS `nombrePersona`,concat(`p`.`nombrePersona`,' ',`p`.`apellidosPersona`) AS `nombreCompleto`,`p`.`emailContacto` AS `emailContacto`,`p`.`telefonoContacto` AS `telefonoContacto`,`p`.`curpPersona` AS `curp`,`p`.`rfcPersona` AS `rfc`,`p`.`institucion` AS `institucion`,`p`.`puesto` AS `puesto` from (`usuario` `u` join `persona` `p` on((`u`.`idPersona` = `p`.`idPersona`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwcelulac`
--

/*!50001 DROP VIEW IF EXISTS `vwcelulac`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`adminDB`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vwcelulac` AS select `ct`.`idCT` AS `idCT`,`ct`.`nombreCT` AS `nombreCT`,`ct`.`objetivoGeneralCT` AS `objetivoGeneralCT`,`ct`.`impactoEsperado` AS `impactoEsperado`,`ct`.`areaAcademicaCT` AS `areaAcademicaCT`,`ct`.`claveCT` AS `claveCT`,`u`.`correoInstitucional` AS `coordinadorCorreo`,`u`.`rol` AS `coordinadorRol`,`pe`.`idPersona` AS `idPersona`,`pe`.`clavePersona` AS `clavePersona`,`pe`.`nombrePersona` AS `name`,`pe`.`apellidosPersona` AS `lastName` from ((`celulatecnologica` `ct` left join `usuario` `u` on((`ct`.`idCoordinadorCT` = `u`.`idUsuario`))) join `persona` `pe`) limit 0,25 */;
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

-- Dump completed on 2025-12-17 11:31:53
