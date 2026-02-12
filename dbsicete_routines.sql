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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-17 11:31:14
