-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: templi
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `abito`
--

DROP TABLE IF EXISTS `abito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abito` (
  `codice_abito` int NOT NULL,
  `codice_abito_nuovo` varchar(45) DEFAULT NULL,
  `tipologia_abito` varchar(45) DEFAULT NULL,
  `nome_abito` varchar(255) DEFAULT NULL,
  `descrizione_abito` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codice_abito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abito`
--

LOCK TABLES `abito` WRITE;
/*!40000 ALTER TABLE `abito` DISABLE KEYS */;
INSERT INTO `abito` VALUES (1,'AA1','skirt','pointy skirt','skirt with frontal pointy end closed on the waist by a belt with a tail'),(2,'AB1','skirt','tight skirt','tight skirt closed to the waist by a belt with a tail'),(3,'B1','belt','belt','belt that leaves open the belly. It is made by a band on the lower back and tails hanging down in front of the legs'),(4,'C1','dress','dress','sleeveless long tight dress that goes from the breast (exposed) to the ankles'),(5,'D1+AB6','corset, skirt, cloak','corset, tight skirt with cloak','corset. Below there is a tight skirt closed to the waist by a belt with a tail. A coat goes down to the feet'),(6,'C2','dress','feathered dress','sleeveless long tight dress decorated with feathers that goes from the breast (exposed) to the ankles'),(7,'ND','not defined','not defined','not defined'),(8,'AB2','skirt','pleated tight skirt','pleated tight skirt closed to the waist by a belt with a tail'),(9,'C3','dress','feathered dress with diagonal bands','sleeveless long tight dress decorated with vertical feathers alternated with diagonal bands. The dress goes from the breast (exposed) to the ankles'),(10,'AA4','skirt','pointy skirt with coat','pointy skirt with coat that goes down to the feet'),(11,'D2','corset','corset made by scales, straps','corset made by horizontal bands of scales, fastened to the shoulders by two straps'),(12,'AB1+D2','corset, skirt','corset made by scales, straps, tight skirt','corset made by horizontal bands of scales, fastened to the shoulders by two straps. Tight skirt closed to the waist by a belt with a tail'),(13,'C4','dress','dress decorated with diamond shapes','sleeveless long tight dress that goes from the breast (exposed) to the ankles. It is decorated by diamond shapes. In the middle of each diamond there is a dot'),(14,'AA3+ND','skirt','pointy skirt with convergent lines, upper body destroyed','skirt with frontal pointy end decorated by convergent lines, closed on the waist by a belt with a tail. The rest is destroyed'),(15,'Z','naked','naked','naked'),(16,'C5','dress','feathered dress with diagonal bands and fringes','sleeveless long tight dress decorated with feathers that goes from the breast (exposed) to the ankles. It ends with fringes'),(17,'D3','corset','corset','corset'),(18,'D3+AA1','corset, skirt','corset, pointy skirt','skirt with frontal pointy end closed on the waist by a belt. Corset'),(19,'D3+AB2','corset, skirt','corset, pleated tight skirt','pleated tight skirt closed to the waist by a belt with a tail. Corset'),(20,'AA2','skirt','pointy skirt with longitudinal lines','skirt with frontal pointy end decorated by longitudinal lines. It is closed on the waist by a belt'),(21,'AA2+D3','corset, skirt','corset, pointy skirt with longitudinal lines','skirt with frontal pointy end decorated by longitudinal lines. It is closed on the waist by a belt. Corset'),(22,'D3+AB1','corset.skirt','corset, tight skirt','tight skirt closed to the waist by a belt with a tail. Corset'),(23,'D2+AA1','corset, skirt','corset made by scales, straps, pointy skirt','corset made by horizontal bands of scales, fastened to the shoulders by two straps. Skirt with frontal pointy end closed on the waist by a belt'),(24,'C6','dress','dress decorated by twines','sleeveless long tight dress that goes from the breast (exposed) to the ankles. The upper part is divided in different areas, while the lower part is characterized by twines'),(25,'AB2+D2','corset, skirt','corset made by scales, straps, pleated tight skirt','corset made by horizontal bands of scales, fastened to the shoulders by two straps. Long pleated tight skirt closed to the waist by a belt with a tail'),(26,'E1','cloak','cloak','long cloak'),(27,'A5','skirt','tight skirt with cloak','tight skirt closed to the waist by a belt with a tail. A cloak runs down to the ankles'),(28,'F1','dress','leather dress','leather dress that goes from the shoulders to the ankles'),(29,'D4','corset','corset decorated by diamond shapes','corset decorated by diamond shapes'),(30,'AB5','skirt','tight skirt made by scales','tight skirt decorated by bands of scales'),(31,'AB5+D4','corset, skirt','corset made by scales, tight skirt',' corset decorated by diamond shapes. Tight skirt decorated by bands of scales'),(32,'C7','dress','feathered dress decorated by diagonal bands','sleeveless long tight dress decorated with feathers alternated with diagonal bands. It goes from the breast (exposed) to the ankles. It ends with fringes'),(33,'D2+AA3','corset, skirt','corset made by scales, pointy skirt with convergent lines','corset made by horizontal bands of scales. Skirt with frontal pointy end decorated by convergent lines, closed on the waist by a belt with a tail'),(34,'AA3','skirt','pointy skirt with convergent lines','skirt with frontal pointy end decorated by convergent lines, closed on the waist by a belt with a tail'),(35,'D3+AA3','corset, skirt','corset, pointy skirt with convergent lines','corset. Skirt with frontal pointy end decorated by convergent lines, closed on the waist by a belt with a tail'),(36,'C8','dress','dress decorated by dots','sleeveless long tight dress that goes from the breast (exposed) to the ankles, decorated by dots'),(37,'D1+AA3','corset, skirt, cloak','corset, pointy skirt with convergent lines, cloak','corset. Skirt with frontal pointy end decorated by convergent lines, closed on the waist by a belt with a tail. A coat goeas down to the feet from the belt'),(38,'D2+AB2','corset, skirt','corset made by scales, straps, tight pleated skirt','corset made by horizontal bands of scales, fastened to the shoulders by two straps. Pleated tight skirt closed to the waist by a belt with a tail'),(39,'Y','destroyed','destroyed','destroyed'),(40,'Z+E1','naked, cloak','naked with cloak','naked with cloack'),(41,'D1+Y','corset, lower destroyed','corset, lower part is destroyed','corset. The lower body part is destroyed'),(42,'E2','cloak','cloak decorated by diamond shapes','cloak decorated by diamond shapes realised with diagonal bands. In the middle of each diamond there is a dot'),(43,'Y+8','upper destroyed, skirt','upper body destroyed, pleated tight skirt','upper body is destroyed. Pleated tight skirt closed to the waist by a belt with a tail'),(44,'Y+AA1','upper destroyed, skirt','upper body destroyed, pointy skirt','upper body is destroyed. Skirt with frontal pointy end closed on the waist by a belt with a tail'),(45,'D5+AB2','corset, skirt','corset made by scales, tight pleated skirt','corset made by horizontal bands of scales. Pleated tight skirt closed to the waist by a belt with a tail'),(46,'D5','corset','corset made by scales','corset made by horizontal bands of scales'),(47,'D6','corset','corset with straps','corset fastened to the shoulders by two straps'),(48,'D6+AB2','corset, skirt','corset with straps, pleated tight skirt','corset fastened to the shoulders by two straps. Pleated tight skirt closed to the waist by a belt with a tail'),(49,'D5+AA4','corset, skirt, cloak','corset made by scales, pointy skirt with cloak','corset made by horizontal bands of scales. Pointy skirt with cloak that goes down to the feet'),(50,'AB6','skirt, cloak','tight skirt with cloak','tight skirt with coat that goes down to the feet'),(51,'D2+AB2','corset, skirt','corset made by scales, straps, pleated tight skirt','corset made by horizontal bands of scales, fastened to the shoulders by two straps. Pleated tight skirt closed to the waist by a belt with a tail'),(52,'D2+AA1','corset, skirt','corset made by scales, pointy skirt','corset made by horizontal bands of scales. Skirt with frontal pointy end closed on the waist by a belt with a tail'),(53,'D2+AA5','corset, skirt','corset made by scales, pointy skirt made by scales','corset made by horizontal bands of scales. Pointy skirt decorate by bands of scales'),(54,'Y+AB1','upper destroyed, skirt','upper body destroyed, tight skirt','tight skirt closed to the waist by a belt with a tail'),(55,'D6+AB1','corset, skirt','corset with straps, tight skirt','corset fastened to the shoulders by two straps. Tight skirt closed to the waist by a belt with a tail'),(56,'AB7','skirt','feathered tight skirt','tight skirt decorated with feathers and closed to the waist by a belt with a tail'),(57,'NNDD','no dress','no dress','no dress'),(58,'X','bird body','bird body','body of a bird, covered with feathers'),(59,'D1+AB7','corset, skirt','corset, feathered tight skirt','corset. Tight skirt decorated with feathers and closed to the waist by a belt with a tail'),(60,'D5+AB8','corset, skirt','corset made by scales, belt with uraeus, short tight skirt','corset made by horizontal bands of scales. Short and tight skirt closed to the waist by a belt with a tail. The frontal part of the belt ends with two uraei wearing the South Crown and the North Crown'),(61,'D2+AB6','corset, skirt','corset made by scales, straps, pleated tight skirt with coat','corset made by horizontal bands of scales, fastened to the shoulders by two straps. Below there is a tight skirt closed to the waist by a belt with a tail. A coat goes down to the feet'),(62,'C9','dress','dress with a vertical line and herringbone decoration','sleeveless long tight dress decorated with a vertical line and herringbone that goes from the breast (exposed) to the ankles');
/*!40000 ALTER TABLE `abito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `abitov`
--

DROP TABLE IF EXISTS `abitov`;
/*!50001 DROP VIEW IF EXISTS `abitov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `abitov` AS SELECT 
 1 AS `codice_abito`,
 1 AS `codice_abito_nuovo`,
 1 AS `tipologia_abito`,
 1 AS `nome_abito`,
 1 AS `descrizione_abito`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `accessorio`
--

DROP TABLE IF EXISTS `accessorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessorio` (
  `codice_accessorio` int NOT NULL,
  `nome_accessorio` varchar(255) DEFAULT NULL,
  `descrizione_accessorio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codice_accessorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessorio`
--

LOCK TABLES `accessorio` WRITE;
/*!40000 ALTER TABLE `accessorio` DISABLE KEYS */;
INSERT INTO `accessorio` VALUES (1,'two heset vases',NULL),(2,'ankh',NULL),(3,'was-sceptre',NULL),(4,'top of the sceptre destroyed',NULL),(5,'uncertain accessory',NULL),(6,'wadj-sceptre',NULL),(7,'rekh bird',NULL),(8,'necklace with jb-sign',NULL),(9,'flogger/fly swatter',NULL),(10,'destroyed',NULL),(11,'necklace',NULL),(12,'wrist bracelet',NULL),(13,'arm bracelet',NULL),(14,'false beard',NULL),(15,'wdjat eye on a nb sign',NULL),(16,'right hand raised',NULL),(17,'ankh and was on a nb sign',NULL),(18,'left hand raised',NULL),(19,'neck destroyed',NULL),(20,'arms destroyed',NULL),(21,'face destroyed',NULL),(22,'incense vase',NULL),(23,'right hand destroyed',NULL),(24,'incense vase ?',NULL),(25,'million of years sign on a nb sign',NULL),(26,'left hand destroyed',NULL),(27,'Red Crown',NULL),(28,'White Crown',NULL),(29,'Maat on a nb sign',NULL),(30,'two papyrus stems',NULL),(31,'finger to the mouth',NULL),(32,'two milk vases',NULL),(33,'two pieces of fabric',NULL),(34,'two nw vases',NULL),(35,'five vessels on a tray',NULL),(36,'two lotus flowers',NULL),(37,'ankle bracelet',NULL),(38,'vase of oil',NULL),(39,'right hand closed, thumb and little finger open',NULL),(40,'two mirrors',NULL),(41,'garland',NULL),(42,'vase',NULL),(43,'feet destroyed',NULL),(44,'two vases',NULL),(45,'one libation vase',NULL),(46,'piece of fabric ?',NULL),(47,'two stems of a plant',NULL),(48,'fields sign',NULL),(49,'one milk vase',NULL),(50,'one nw vase',NULL),(51,'bread on a tray',NULL),(52,'lotus flowers and kbh vases on a tray, below it papyrus stems',NULL),(53,'trees sign with papyrus',NULL),(54,'fields sign with papyrus and dead birds below it',NULL),(55,'destroyed tray',NULL),(56,'ḥḳꜣ scepter',NULL),(57,'incense grains',NULL),(58,'sḫm sceptre',NULL),(59,'mace and rod',NULL),(60,'big censer',NULL),(61,'two libation vases',NULL),(62,'bread',NULL),(63,'bread, vases and lotus flower on a tray',NULL),(64,'cylindrical necklace',NULL),(65,'not described',NULL),(66,'two trees',NULL),(67,'amulet in a shape of a sanctuary',NULL),(68,'scepter',NULL),(69,'both hands raised',NULL),(70,'was, ankh and djed signs',NULL),(71,'breeding Horus',NULL),(72,'two fileds signs',NULL),(73,'pedestal',NULL),(74,'lotus flowers in the background',NULL),(75,'hand extended forward',NULL),(76,'mace and sḫm sceptre',NULL),(77,'was, heka, flogger, djed and sa signs',NULL),(78,'tray ?',NULL),(79,'a piece of fabric',NULL),(80,'fields sign with stems and a bull below it',NULL),(81,'axe',NULL),(82,'prisoners',NULL),(83,'two milk vases ?',NULL),(84,'small naked god on an altar shaped payrus stem',NULL),(85,'two libation vases on a tray',NULL),(86,'trees sign',NULL);
/*!40000 ALTER TABLE `accessorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `accessoriov`
--

DROP TABLE IF EXISTS `accessoriov`;
/*!50001 DROP VIEW IF EXISTS `accessoriov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `accessoriov` AS SELECT 
 1 AS `codice_accessorio`,
 1 AS `nome_accessorio`,
 1 AS `descrizione_accessorio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ambiente`
--

DROP TABLE IF EXISTS `ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambiente` (
  `codice_ambiente` int NOT NULL,
  `tipo_ambiente` varchar(255) DEFAULT NULL COMMENT 'Se si tratta di una stanza (se è una stanza quale) o di un cortile, ecc.',
  `epoca_costruzione_ambiente` varchar(255) DEFAULT NULL,
  `committente_ambiente` varchar(255) DEFAULT NULL,
  `codice_tempio` int DEFAULT NULL,
  PRIMARY KEY (`codice_ambiente`),
  UNIQUE KEY `codice_ambiente_UNIQUE` (`codice_ambiente`),
  KEY `codice_tempio_FK_idx` (`codice_tempio`),
  CONSTRAINT `codice_tempio_FK` FOREIGN KEY (`codice_tempio`) REFERENCES `tempio` (`codice_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambiente`
--

LOCK TABLES `ambiente` WRITE;
/*!40000 ALTER TABLE `ambiente` DISABLE KEYS */;
INSERT INTO `ambiente` VALUES (1,'cella','Roman Period','Augustus',1),(2,'procella','Roman Period','Augustus',1),(3,'antechamber','Roman Period','Augustus',1),(4,'pronaos','Roman Period','Augustus',1),(5,'pylon','Roman Period','Augustus',1),(6,'court','Roman Period','Augustus',1);
/*!40000 ALTER TABLE `ambiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ambientev`
--

DROP TABLE IF EXISTS `ambientev`;
/*!50001 DROP VIEW IF EXISTS `ambientev`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ambientev` AS SELECT 
 1 AS `codice_ambiente`,
 1 AS `tipo_ambiente`,
 1 AS `epoca_costruzione_ambiente`,
 1 AS `committente_ambiente`,
 1 AS `codice_tempio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `appartiene`
--

DROP TABLE IF EXISTS `appartiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appartiene` (
  `codice_appartiene` int NOT NULL,
  `codice_personaggio` int DEFAULT NULL,
  `codice_accessorio` int DEFAULT NULL,
  PRIMARY KEY (`codice_appartiene`),
  KEY `codice_accessorio_FK_appartiene_idx` (`codice_accessorio`),
  KEY `codice_personaggio_FK_appartiene_idx` (`codice_personaggio`),
  CONSTRAINT `codice_accessorio_FK_appartiene` FOREIGN KEY (`codice_accessorio`) REFERENCES `accessorio` (`codice_accessorio`),
  CONSTRAINT `codice_personaggio_FK_appartiene` FOREIGN KEY (`codice_personaggio`) REFERENCES `personaggio` (`codice_personaggio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appartiene`
--

LOCK TABLES `appartiene` WRITE;
/*!40000 ALTER TABLE `appartiene` DISABLE KEYS */;
INSERT INTO `appartiene` VALUES (1,1,11),(2,1,12),(3,1,13),(4,1,14),(5,2,2),(6,2,3),(7,2,11),(8,2,12),(9,2,13),(10,2,14),(11,3,2),(12,3,6),(13,3,11),(14,3,12),(15,3,13),(16,4,11),(17,4,12),(18,4,13),(19,4,14),(20,4,1),(21,5,11),(22,5,12),(23,5,13),(24,5,14),(25,5,1),(26,6,11),(27,6,12),(28,6,13),(29,6,14),(30,6,1),(31,7,11),(32,7,12),(33,7,13),(34,7,14),(35,7,1),(36,8,11),(37,8,12),(38,8,13),(39,8,14),(40,8,1),(41,9,11),(42,9,12),(43,9,13),(44,9,14),(45,9,1),(46,10,11),(47,10,12),(48,10,13),(49,10,14),(50,10,1),(51,11,11),(52,11,12),(53,11,13),(54,11,14),(55,11,1),(56,12,11),(57,12,12),(58,12,13),(59,12,14),(60,12,1),(61,13,11),(62,13,12),(63,13,13),(64,13,14),(65,13,1),(66,14,11),(67,14,12),(68,14,13),(69,14,14),(70,14,1),(71,15,11),(72,15,12),(73,15,13),(74,15,14),(75,15,1),(76,16,11),(77,16,12),(78,16,13),(79,16,14),(80,16,1),(81,17,11),(82,17,12),(83,17,13),(84,17,14),(85,17,1),(86,18,11),(87,18,12),(88,18,13),(89,1,1),(90,19,11),(91,19,12),(92,19,13),(93,19,14),(94,19,1),(95,20,2),(96,20,6),(97,20,11),(98,20,12),(99,20,13),(100,21,2),(101,21,3),(102,21,11),(103,21,12),(104,21,13),(105,21,14),(106,22,11),(107,22,12),(108,22,13),(109,22,14),(110,22,1),(111,23,11),(112,23,12),(113,23,13),(114,23,14),(115,23,1),(116,24,11),(117,24,12),(118,24,13),(119,24,14),(120,24,1),(121,25,11),(122,25,12),(123,25,13),(124,25,14),(125,25,1),(126,26,11),(127,26,12),(128,26,13),(129,26,14),(130,26,1),(131,27,11),(132,27,12),(133,27,13),(134,27,14),(135,27,1),(136,28,11),(137,28,12),(138,28,13),(139,28,14),(140,28,1),(141,29,11),(142,29,12),(143,29,13),(144,29,14),(145,29,1),(146,30,11),(147,30,12),(148,30,13),(149,30,14),(150,30,1),(151,31,11),(152,31,12),(153,31,13),(154,31,14),(155,31,1),(156,32,11),(157,32,12),(158,32,13),(159,32,14),(160,32,1),(161,33,11),(162,33,12),(163,33,13),(164,33,14),(165,33,1),(166,34,11),(167,34,12),(168,34,13),(169,34,14),(170,34,1),(171,35,11),(172,35,12),(173,35,13),(174,35,14),(175,35,1),(176,36,11),(177,36,12),(178,36,13),(179,36,14),(180,36,1),(181,37,11),(182,37,12),(183,37,13),(184,37,14),(185,37,10),(186,38,2),(187,38,6),(188,38,11),(189,38,12),(190,38,13),(191,39,2),(192,39,3),(193,39,11),(194,39,12),(195,39,13),(196,39,14),(197,40,11),(198,40,12),(199,40,13),(200,40,14),(201,40,15),(202,40,16),(203,41,2),(204,41,3),(205,41,11),(206,41,12),(207,41,13),(208,41,14),(209,42,11),(210,42,12),(211,42,13),(212,42,14),(213,42,17),(214,42,16),(215,43,2),(216,43,3),(217,43,11),(218,43,12),(219,43,13),(220,43,14),(221,44,2),(222,44,6),(223,44,11),(224,44,12),(225,44,13),(226,45,2),(227,45,3),(228,45,11),(229,45,12),(230,45,13),(231,45,14),(232,46,11),(233,46,12),(234,46,13),(235,46,14),(236,46,16),(237,46,18),(238,47,2),(239,47,3),(240,47,11),(241,47,12),(242,47,13),(243,48,2),(244,48,6),(245,48,19),(246,48,12),(247,48,13),(248,49,2),(249,49,6),(250,49,11),(251,49,12),(252,49,13),(253,50,19),(254,50,20),(255,51,2),(256,51,3),(257,51,11),(258,51,8),(259,51,12),(260,51,13),(261,52,2),(262,52,6),(263,52,11),(264,52,12),(265,52,13),(266,53,11),(267,53,12),(268,53,13),(269,53,21),(270,53,22),(271,53,16),(272,54,2),(273,54,3),(274,54,11),(275,54,12),(276,54,13),(277,54,14),(278,55,2),(279,55,6),(280,55,11),(281,55,12),(282,55,13),(283,56,11),(284,56,12),(285,56,13),(286,56,14),(287,56,24),(288,56,23),(289,57,2),(290,57,3),(291,57,11),(292,57,12),(293,57,13),(294,57,14),(295,58,2),(296,58,6),(297,58,11),(298,58,12),(299,58,13),(300,59,11),(301,59,12),(302,59,13),(303,59,14),(304,59,25),(305,59,16),(306,60,26),(307,60,3),(308,60,11),(309,60,12),(310,60,13),(311,60,14),(312,61,2),(313,61,6),(314,61,11),(315,61,12),(316,61,13),(317,62,21),(318,62,20),(319,63,2),(320,63,4),(321,63,11),(322,63,12),(323,63,13),(324,63,14),(325,64,2),(326,64,16),(327,64,11),(328,64,12),(329,64,13),(330,65,11),(331,65,12),(332,65,13),(333,65,14),(334,65,27),(335,65,28),(336,66,2),(337,66,3),(338,66,11),(339,66,12),(340,66,13),(341,67,2),(342,67,6),(343,67,11),(344,67,12),(345,67,13),(346,68,2),(347,68,3),(348,68,11),(349,68,12),(350,68,13),(351,68,14),(352,69,11),(353,69,12),(354,69,13),(355,69,14),(356,69,29),(357,69,16),(358,70,2),(359,70,3),(360,70,11),(361,70,12),(362,70,13),(363,71,2),(364,71,6),(365,71,11),(366,71,12),(367,71,13),(368,72,2),(369,72,3),(370,72,11),(371,72,12),(372,72,13),(373,72,14),(374,73,19),(375,73,12),(376,73,13),(377,73,21),(378,73,30),(379,74,2),(380,74,6),(381,74,11),(382,74,12),(383,74,13),(384,75,7),(385,75,31),(386,75,11),(387,75,8),(388,75,12),(389,75,13),(390,76,11),(391,76,12),(392,76,13),(393,76,14),(394,76,32),(395,77,2),(396,77,31),(397,77,11),(398,77,8),(399,77,12),(400,77,13),(401,78,2),(402,78,16),(403,78,11),(404,78,12),(405,78,13),(406,79,11),(407,79,12),(408,79,13),(409,79,14),(410,79,33),(411,80,2),(412,80,3),(413,80,11),(414,80,12),(415,80,13),(416,80,14),(417,81,2),(418,81,6),(419,81,11),(420,81,12),(421,81,13),(422,82,11),(423,82,12),(424,82,13),(425,82,14),(426,82,34),(427,83,2),(428,83,3),(429,83,11),(430,83,12),(431,83,13),(432,83,14),(433,84,2),(434,84,3),(435,84,11),(436,84,8),(437,84,12),(438,84,13),(439,85,11),(440,85,12),(441,85,13),(442,85,21),(443,85,35),(444,86,2),(445,86,3),(446,86,11),(447,86,12),(448,86,13),(449,87,2),(450,87,6),(451,87,11),(452,87,12),(453,87,13),(454,88,11),(455,88,12),(456,88,13),(457,88,21),(458,88,16),(459,88,29),(460,89,2),(461,89,9),(462,89,11),(463,89,12),(464,89,13),(465,90,2),(466,90,3),(467,90,11),(468,90,12),(469,90,13),(470,90,14),(471,91,2),(472,91,6),(473,91,11),(474,91,12),(475,91,13),(476,92,2),(477,92,6),(478,92,11),(479,92,12),(480,92,13),(481,93,11),(482,93,12),(483,93,13),(484,93,14),(485,93,34),(486,94,2),(487,94,3),(488,94,11),(489,94,12),(490,94,13),(491,95,2),(492,95,6),(493,95,11),(494,95,12),(495,95,13),(496,96,2),(497,96,3),(498,96,11),(499,96,12),(500,96,13),(501,96,14),(502,97,11),(503,97,12),(504,97,13),(505,97,14),(506,97,36),(507,98,2),(508,98,6),(509,98,11),(510,98,12),(511,98,13),(512,98,37),(513,99,2),(514,99,3),(515,99,11),(516,99,12),(517,99,13),(518,99,14),(519,100,11),(520,100,12),(521,100,13),(522,100,14),(523,100,38),(524,100,39),(525,101,2),(526,101,4),(527,101,11),(528,101,12),(529,101,13),(530,102,2),(531,102,6),(532,102,11),(533,102,12),(534,102,13),(535,102,37),(536,103,11),(537,103,12),(538,103,13),(539,103,14),(540,103,16),(541,103,22),(542,104,2),(543,104,4),(544,104,11),(545,104,12),(546,104,13),(547,104,37),(548,105,2),(549,105,3),(550,105,11),(551,105,12),(552,105,13),(553,106,11),(554,106,12),(555,106,13),(556,106,14),(557,106,40),(558,107,2),(559,107,6),(560,107,11),(561,107,12),(562,107,13),(563,107,37),(564,108,23),(565,108,6),(566,108,11),(567,108,12),(568,108,13),(569,108,37),(570,109,11),(571,109,12),(572,109,13),(573,109,14),(574,109,41),(575,110,2),(576,110,4),(577,110,11),(578,110,12),(579,110,13),(580,110,14),(581,111,2),(582,111,18),(583,111,11),(584,111,12),(585,111,13),(586,111,37),(587,112,11),(588,112,12),(589,112,13),(590,112,14),(591,112,42),(592,112,18),(593,113,23),(594,113,4),(595,113,11),(596,113,12),(597,113,20),(598,114,2),(599,114,6),(600,114,11),(601,114,12),(602,114,13),(603,114,43),(604,115,2),(605,115,4),(606,115,11),(607,115,12),(608,115,13),(609,116,11),(610,116,12),(611,116,13),(612,116,14),(613,116,18),(614,116,29),(615,117,2),(616,117,3),(617,117,11),(618,117,12),(619,117,13),(620,117,14),(621,118,2),(622,118,6),(623,118,11),(624,118,12),(625,118,13),(626,118,37),(627,119,2),(628,119,3),(629,119,11),(630,119,12),(631,119,13),(632,120,11),(633,120,12),(634,120,13),(635,120,14),(636,120,36),(637,121,2),(638,121,6),(639,121,11),(640,121,12),(641,121,13),(642,121,37),(643,122,2),(644,122,3),(645,122,11),(646,122,12),(647,122,13),(648,122,14),(649,123,11),(650,123,12),(651,123,13),(652,123,14),(653,123,33),(654,124,31),(655,124,26),(656,124,11),(657,124,12),(658,124,13),(659,125,2),(660,125,16),(661,125,11),(662,125,12),(663,125,13),(664,125,37),(665,126,11),(666,126,12),(667,126,13),(668,126,14),(669,126,44),(670,127,2),(671,127,3),(672,127,11),(673,127,12),(674,127,13),(675,127,14),(676,128,26),(677,128,6),(678,128,11),(679,128,12),(680,128,13),(681,128,37),(682,129,10),(683,130,10),(684,131,11),(685,131,12),(686,131,13),(687,131,14),(688,131,45),(689,132,11),(690,132,12),(691,132,10),(692,133,11),(693,133,12),(694,133,13),(695,133,14),(696,133,46),(697,134,2),(698,134,3),(699,134,11),(700,134,12),(701,134,13),(702,135,11),(703,135,12),(704,135,13),(705,135,14),(706,135,47),(707,136,2),(708,136,6),(709,136,11),(710,136,12),(711,136,13),(712,136,37),(713,137,11),(714,137,12),(715,137,13),(716,137,14),(717,137,34),(718,138,26),(719,138,3),(720,138,11),(721,138,12),(722,138,13),(723,139,11),(724,139,12),(725,139,13),(726,139,14),(727,139,27),(728,139,28),(729,140,2),(730,140,3),(731,140,11),(732,140,12),(733,140,13),(734,140,14),(735,141,2),(736,141,6),(737,141,11),(738,141,12),(739,141,13),(740,141,43),(741,142,11),(742,142,12),(743,142,13),(744,142,14),(745,142,48),(746,143,2),(747,143,3),(748,143,11),(749,143,12),(750,143,13),(751,143,14),(752,144,11),(753,144,12),(754,144,13),(755,144,14),(756,144,45),(757,145,2),(758,145,3),(759,145,11),(760,145,12),(761,145,13),(762,145,14),(763,146,11),(764,146,12),(765,146,13),(766,146,14),(767,146,32),(768,147,2),(769,147,31),(770,147,11),(771,147,8),(772,147,12),(773,147,13),(774,148,11),(775,148,12),(776,148,13),(777,148,14),(778,148,50),(779,148,18),(780,149,2),(781,149,3),(782,149,11),(783,149,12),(784,149,13),(785,149,14),(786,150,11),(787,150,12),(788,150,13),(789,150,14),(790,150,49),(791,151,2),(792,151,3),(793,151,11),(794,151,12),(795,151,13),(796,152,11),(797,152,12),(798,152,13),(799,152,14),(800,152,27),(801,152,28),(802,153,2),(803,153,3),(804,153,11),(805,153,12),(806,153,13),(807,153,14),(808,154,2),(809,154,6),(810,154,11),(811,154,12),(812,154,13),(813,154,37),(814,155,11),(815,155,12),(816,155,13),(817,155,14),(818,155,32),(819,156,2),(820,156,3),(821,156,19),(822,156,12),(823,156,13),(824,156,14),(825,157,2),(826,157,18),(827,157,11),(828,157,12),(829,157,13),(830,157,43),(831,158,11),(832,158,12),(833,158,13),(834,158,14),(835,158,22),(836,158,16),(837,159,2),(838,159,3),(839,159,11),(840,159,12),(841,159,13),(842,159,14),(843,160,26),(844,160,16),(845,160,11),(846,160,12),(847,160,13),(848,160,43),(849,161,11),(850,161,12),(851,161,13),(852,161,14),(853,161,51),(854,162,2),(855,162,3),(856,162,11),(857,162,12),(858,162,13),(859,162,14),(860,163,2),(861,163,6),(862,163,11),(863,163,12),(864,163,13),(865,164,2),(866,164,3),(867,164,11),(868,164,12),(869,164,13),(870,165,11),(871,165,12),(872,165,13),(873,165,14),(874,165,52),(875,166,11),(876,166,12),(877,166,13),(878,166,37),(879,166,53),(880,167,11),(881,167,12),(882,167,13),(883,167,14),(884,167,52),(885,168,11),(886,168,12),(887,168,13),(888,168,37),(889,168,53),(890,169,11),(891,169,12),(892,169,13),(893,169,14),(894,169,52),(895,170,11),(896,170,12),(897,170,13),(898,170,37),(899,170,53),(900,171,11),(901,171,12),(902,171,13),(903,171,14),(904,171,52),(905,172,11),(906,172,12),(907,172,13),(908,172,37),(909,172,53),(910,173,11),(911,173,12),(912,173,13),(913,173,14),(914,173,52),(915,174,11),(916,174,12),(917,174,13),(918,174,14),(919,174,51),(920,175,2),(921,175,3),(922,175,11),(923,175,12),(924,175,13),(925,175,14),(926,176,31),(927,176,55),(928,176,11),(929,176,8),(930,176,12),(931,176,13),(932,177,2),(933,177,6),(934,177,11),(935,177,12),(936,177,13),(937,178,11),(938,178,12),(939,178,13),(940,178,14),(941,178,52),(942,179,11),(943,179,12),(944,179,13),(945,179,43),(946,179,53),(947,180,11),(948,180,12),(949,180,13),(950,180,14),(951,180,52),(952,181,11),(953,181,12),(954,181,13),(955,181,37),(956,181,54),(957,182,11),(958,182,12),(959,182,13),(960,182,14),(961,182,52),(962,183,11),(963,183,12),(964,183,13),(965,183,53),(966,184,11),(967,184,12),(968,184,13),(969,184,14),(970,184,52),(971,185,11),(972,185,12),(973,185,13),(974,185,37),(975,185,55),(976,186,11),(977,186,12),(978,186,13),(979,186,14),(980,186,52),(981,187,11),(982,187,12),(983,187,13),(984,187,37),(985,187,53),(986,188,11),(987,188,12),(988,188,13),(989,188,14),(990,188,52),(991,189,11),(992,189,12),(993,189,13),(994,189,37),(995,189,54),(996,190,11),(997,190,12),(998,190,13),(999,190,14),(1000,190,52),(1001,191,11),(1002,191,12),(1003,191,13),(1004,191,37),(1005,191,53),(1006,192,11),(1007,192,12),(1008,192,13),(1009,192,14),(1010,192,52),(1011,193,11),(1012,193,12),(1013,193,13),(1014,193,43),(1015,193,53),(1016,194,11),(1017,194,12),(1018,194,13),(1019,194,14),(1020,194,22),(1021,194,45),(1022,195,9),(1023,195,56),(1024,195,11),(1025,195,14),(1026,196,2),(1027,196,3),(1028,196,19),(1029,196,12),(1030,196,13),(1031,196,14),(1032,197,11),(1033,197,12),(1034,197,13),(1035,197,22),(1036,197,57),(1037,198,23),(1038,198,3),(1039,198,19),(1040,198,12),(1041,198,13),(1042,199,11),(1043,199,12),(1044,199,13),(1045,199,14),(1046,199,42),(1047,200,23),(1048,200,3),(1049,200,11),(1050,200,12),(1051,200,13),(1052,200,14),(1053,201,2),(1054,201,6),(1055,201,11),(1056,201,12),(1057,201,13),(1058,201,37),(1059,202,2),(1060,202,3),(1061,202,11),(1062,202,12),(1063,202,13),(1064,202,14),(1065,203,11),(1066,203,12),(1067,203,13),(1068,203,14),(1069,203,22),(1070,203,57),(1071,204,2),(1072,204,3),(1073,204,11),(1074,204,12),(1075,204,13),(1076,204,14),(1077,205,11),(1078,205,12),(1079,205,13),(1080,205,14),(1081,205,51),(1082,206,2),(1083,206,6),(1084,206,11),(1085,206,12),(1086,206,13),(1087,206,37),(1088,207,2),(1089,207,4),(1090,207,11),(1091,207,12),(1092,207,13),(1093,207,14),(1094,208,19),(1095,208,12),(1096,208,13),(1097,208,14),(1098,208,58),(1099,208,59),(1100,209,2),(1101,209,6),(1102,209,11),(1103,209,12),(1104,209,13),(1105,209,37),(1106,210,2),(1107,210,6),(1108,210,11),(1109,210,12),(1110,210,13),(1111,210,37),(1112,211,11),(1113,211,12),(1114,211,13),(1115,211,14),(1116,211,60),(1117,211,45),(1118,212,2),(1119,212,3),(1120,212,11),(1121,212,12),(1122,212,13),(1123,212,14),(1124,213,2),(1125,213,6),(1126,213,11),(1127,213,12),(1128,213,13),(1129,214,2),(1130,214,3),(1131,214,11),(1132,214,12),(1133,214,13),(1134,215,2),(1135,215,3),(1136,215,11),(1137,215,12),(1138,215,13),(1139,215,14),(1140,216,2),(1141,216,6),(1142,216,11),(1143,216,12),(1144,216,13),(1145,216,37),(1146,217,11),(1147,217,12),(1148,217,13),(1149,217,14),(1150,217,61),(1151,218,56),(1152,218,9),(1153,218,11),(1154,218,14),(1155,219,2),(1156,219,6),(1157,219,11),(1158,219,12),(1159,219,13),(1160,219,37),(1161,220,11),(1162,220,12),(1163,220,13),(1164,220,14),(1165,220,34),(1166,221,2),(1167,221,3),(1168,221,11),(1169,221,12),(1170,221,13),(1171,221,14),(1172,222,2),(1173,222,18),(1174,222,11),(1175,222,12),(1176,222,13),(1177,222,37),(1178,223,11),(1179,223,12),(1180,223,13),(1181,223,14),(1182,223,49),(1183,223,16),(1184,224,2),(1185,224,3),(1186,224,11),(1187,224,12),(1188,224,13),(1189,224,14),(1190,225,2),(1191,225,3),(1192,225,11),(1193,225,12),(1194,225,13),(1195,225,14),(1196,226,11),(1197,226,12),(1198,226,13),(1199,226,14),(1200,226,34),(1201,227,2),(1202,227,3),(1203,227,11),(1204,227,12),(1205,227,13),(1206,227,14),(1207,228,2),(1208,228,3),(1209,228,11),(1210,228,12),(1211,228,13),(1212,228,14),(1213,229,11),(1214,229,12),(1215,229,13),(1216,229,14),(1217,229,42),(1218,230,2),(1219,230,3),(1220,230,11),(1221,230,12),(1222,230,13),(1223,230,14),(1224,231,2),(1225,231,4),(1226,231,11),(1227,231,12),(1228,231,13),(1229,231,14),(1230,232,11),(1231,232,12),(1232,232,13),(1233,232,14),(1234,232,22),(1235,232,45),(1236,233,2),(1237,233,3),(1238,233,11),(1239,233,8),(1240,233,12),(1241,233,13),(1242,233,14),(1243,234,11),(1244,234,12),(1245,234,13),(1246,234,14),(1247,234,51),(1248,235,2),(1249,235,3),(1250,235,11),(1251,235,12),(1252,235,13),(1253,235,14),(1254,236,2),(1255,236,6),(1256,236,11),(1257,236,12),(1258,236,13),(1259,237,19),(1260,237,20),(1261,237,21),(1262,237,42),(1263,238,2),(1264,238,3),(1265,238,11),(1266,238,12),(1267,238,13),(1268,238,14),(1269,239,2),(1270,239,3),(1271,239,11),(1272,239,12),(1273,239,13),(1274,239,14),(1275,240,11),(1276,240,12),(1277,240,13),(1278,240,14),(1279,240,16),(1280,240,22),(1281,241,2),(1282,241,3),(1283,241,11),(1284,241,12),(1285,241,13),(1286,241,14),(1287,242,2),(1288,242,3),(1289,242,11),(1290,242,12),(1291,242,13),(1292,243,11),(1293,243,12),(1294,243,13),(1295,243,14),(1296,243,16),(1297,243,42),(1298,244,2),(1299,244,3),(1300,244,11),(1301,244,12),(1302,244,13),(1303,245,2),(1304,245,6),(1305,245,11),(1306,245,12),(1307,245,13),(1308,245,37),(1309,246,11),(1310,246,12),(1311,246,13),(1312,246,14),(1313,246,16),(1314,246,22),(1315,247,2),(1316,247,3),(1317,247,11),(1318,247,12),(1319,247,13),(1320,247,14),(1321,248,2),(1322,248,3),(1323,248,11),(1324,248,12),(1325,248,13),(1326,249,11),(1327,249,12),(1328,249,13),(1329,249,14),(1330,249,61),(1331,250,2),(1332,250,3),(1333,250,11),(1334,250,12),(1335,250,13),(1336,250,14),(1337,251,11),(1338,251,12),(1339,251,13),(1340,251,14),(1341,251,60),(1342,251,45),(1343,252,2),(1344,252,3),(1345,252,11),(1346,252,12),(1347,252,13),(1348,252,14),(1349,253,2),(1350,253,6),(1351,253,11),(1352,253,12),(1353,253,13),(1354,254,11),(1355,254,12),(1356,254,13),(1357,254,14),(1358,254,16),(1359,254,26),(1360,255,2),(1361,255,23),(1362,255,11),(1363,255,12),(1364,255,13),(1365,255,14),(1366,256,19),(1367,256,20),(1368,256,21),(1369,256,34),(1370,257,26),(1371,257,4),(1372,257,19),(1373,257,20),(1374,257,21),(1375,258,23),(1376,258,26),(1377,258,19),(1378,258,20),(1379,258,21),(1380,258,43),(1381,259,11),(1382,259,12),(1383,259,13),(1384,259,14),(1385,259,16),(1386,259,15),(1387,260,2),(1388,260,3),(1389,260,11),(1390,260,12),(1391,260,13),(1392,261,11),(1393,261,12),(1394,261,13),(1395,261,14),(1396,261,16),(1397,261,29),(1398,262,23),(1399,262,3),(1400,262,11),(1401,262,20),(1402,262,14),(1403,263,23),(1404,263,26),(1405,263,19),(1406,263,20),(1407,263,21),(1408,263,43),(1409,264,11),(1410,264,12),(1411,264,13),(1412,264,14),(1413,264,23),(1414,264,59),(1415,265,10),(1416,266,10),(1417,267,2),(1418,267,6),(1419,267,11),(1420,267,12),(1421,267,13),(1422,267,37),(1423,268,11),(1424,268,12),(1425,268,13),(1426,268,21),(1427,268,23),(1428,268,26),(1429,269,2),(1430,269,4),(1431,269,11),(1432,269,12),(1433,269,13),(1434,270,19),(1435,270,20),(1436,270,13),(1437,270,21),(1438,270,16),(1439,270,62),(1440,271,2),(1441,271,3),(1442,271,19),(1443,271,12),(1444,271,13),(1445,271,21),(1446,272,11),(1447,272,12),(1448,272,13),(1449,272,14),(1450,272,34),(1451,273,26),(1452,273,6),(1453,273,11),(1454,273,12),(1455,273,13),(1456,273,37),(1457,274,11),(1458,274,12),(1459,274,13),(1460,274,14),(1461,274,9),(1462,274,45),(1463,275,2),(1464,275,3),(1465,275,11),(1466,275,12),(1467,275,13),(1468,275,14),(1469,276,2),(1470,276,6),(1471,276,11),(1472,276,12),(1473,276,13),(1474,276,43),(1475,277,2),(1476,277,3),(1477,277,11),(1478,277,12),(1479,277,13),(1480,278,11),(1481,278,12),(1482,278,13),(1483,278,14),(1484,278,23),(1485,278,59),(1486,279,10),(1487,280,10),(1488,280,48),(1489,281,2),(1490,281,3),(1491,281,11),(1492,281,12),(1493,281,13),(1494,281,14),(1495,282,10),(1496,282,34),(1497,283,23),(1498,283,3),(1499,283,11),(1500,283,12),(1501,283,13),(1502,283,14),(1503,284,10),(1504,285,2),(1505,285,4),(1506,285,11),(1507,285,12),(1508,285,13),(1509,285,14),(1510,286,10),(1511,286,22),(1512,287,2),(1513,287,3),(1514,287,11),(1515,287,12),(1516,287,13),(1517,287,14),(1518,288,11),(1519,288,12),(1520,288,13),(1521,288,14),(1522,288,9),(1523,288,45),(1524,289,2),(1525,289,3),(1526,289,11),(1527,289,12),(1528,289,13),(1529,289,14),(1530,290,2),(1531,290,3),(1532,290,11),(1533,290,12),(1534,290,13),(1535,290,14),(1536,291,2),(1537,291,6),(1538,291,11),(1539,291,12),(1540,291,13),(1541,291,43),(1542,292,11),(1543,292,12),(1544,292,13),(1545,292,14),(1546,292,63),(1547,293,2),(1548,293,3),(1549,293,11),(1550,293,12),(1551,293,13),(1552,293,14),(1553,294,23),(1554,294,31),(1555,294,11),(1556,294,8),(1557,294,12),(1558,294,13),(1559,295,2),(1560,295,6),(1561,295,11),(1562,295,12),(1563,295,13),(1564,295,37),(1565,296,11),(1566,296,12),(1567,296,13),(1568,296,14),(1569,296,63),(1570,297,2),(1571,297,3),(1572,297,11),(1573,297,12),(1574,297,13),(1575,297,14),(1576,298,2),(1577,298,6),(1578,298,11),(1579,298,12),(1580,298,13),(1581,298,37),(1582,299,2),(1583,299,3),(1584,299,11),(1585,299,12),(1586,299,13),(1587,300,65),(1588,300,64),(1589,301,65),(1590,302,65),(1591,303,11),(1592,303,12),(1593,303,13),(1594,303,14),(1595,303,16),(1596,303,22),(1597,304,2),(1598,304,3),(1599,304,11),(1600,304,12),(1601,304,13),(1602,304,14),(1603,305,2),(1604,305,6),(1605,305,11),(1606,305,12),(1607,305,13),(1608,305,37),(1609,306,2),(1610,306,3),(1611,306,11),(1612,306,12),(1613,306,13),(1614,306,14),(1615,307,11),(1616,307,12),(1617,307,13),(1618,307,14),(1619,307,16),(1620,307,15),(1621,308,2),(1622,308,3),(1623,308,11),(1624,308,12),(1625,308,13),(1626,309,2),(1627,309,3),(1628,309,11),(1629,309,12),(1630,309,13),(1631,309,14),(1632,310,2),(1633,310,6),(1634,310,11),(1635,310,12),(1636,310,13),(1637,310,37),(1638,311,11),(1639,311,12),(1640,311,13),(1641,311,14),(1642,311,34),(1643,312,2),(1644,312,3),(1645,312,11),(1646,312,12),(1647,312,13),(1648,312,14),(1649,313,2),(1650,313,3),(1651,313,11),(1652,313,12),(1653,313,13),(1654,313,14),(1655,314,11),(1656,314,12),(1657,314,13),(1658,314,14),(1659,314,34),(1660,315,2),(1661,315,3),(1662,315,11),(1663,315,12),(1664,315,13),(1665,316,2),(1666,316,6),(1667,316,11),(1668,316,12),(1669,316,13),(1670,316,37),(1671,317,11),(1672,317,12),(1673,317,13),(1674,317,14),(1675,317,16),(1676,317,22),(1677,318,2),(1678,318,3),(1679,318,11),(1680,318,12),(1681,318,13),(1682,318,14),(1683,319,2),(1684,319,6),(1685,319,11),(1686,319,12),(1687,319,13),(1688,319,37),(1689,320,2),(1690,320,3),(1691,320,11),(1692,320,12),(1693,320,13),(1694,321,11),(1695,321,12),(1696,321,13),(1697,321,14),(1698,321,48),(1699,322,2),(1700,322,6),(1701,322,11),(1702,322,12),(1703,322,13),(1704,323,31),(1705,323,7),(1706,323,11),(1707,323,8),(1708,323,12),(1709,323,13),(1710,324,11),(1711,324,12),(1712,324,13),(1713,324,14),(1714,324,58),(1715,324,59),(1716,325,2),(1717,325,6),(1718,325,11),(1719,325,12),(1720,325,13),(1721,325,37),(1722,326,11),(1723,326,12),(1724,326,13),(1725,326,14),(1726,326,60),(1727,326,45),(1728,327,2),(1729,327,3),(1730,327,11),(1731,327,12),(1732,327,13),(1733,327,14),(1734,328,2),(1735,328,6),(1736,328,11),(1737,328,12),(1738,328,13),(1739,329,11),(1740,329,12),(1741,329,13),(1742,329,14),(1743,329,32),(1744,330,2),(1745,330,3),(1746,330,11),(1747,330,12),(1748,330,13),(1749,330,14),(1750,331,11),(1751,331,12),(1752,331,13),(1753,331,14),(1754,331,18),(1755,331,42),(1756,332,2),(1757,332,3),(1758,332,11),(1759,332,12),(1760,332,13),(1761,333,2),(1762,333,6),(1763,333,11),(1764,333,12),(1765,333,13),(1766,333,37),(1767,334,11),(1768,334,12),(1769,334,13),(1770,334,14),(1771,334,18),(1772,334,15),(1773,335,2),(1774,335,6),(1775,335,11),(1776,335,12),(1777,335,13),(1778,335,14),(1779,336,11),(1780,336,12),(1781,336,13),(1782,336,14),(1783,336,66),(1784,337,9),(1785,337,11),(1786,337,67),(1787,337,13),(1788,337,37),(1789,338,2),(1790,338,6),(1791,338,11),(1792,338,12),(1793,338,13),(1794,338,37),(1795,339,2),(1796,339,3),(1797,339,11),(1798,339,12),(1799,339,13),(1800,339,14),(1801,340,11),(1802,340,12),(1803,340,13),(1804,340,14),(1805,340,60),(1806,340,45),(1807,341,2),(1808,341,3),(1809,341,11),(1810,341,12),(1811,341,13),(1812,341,14),(1813,342,2),(1814,342,6),(1815,342,11),(1816,342,12),(1817,342,13),(1818,343,11),(1819,343,12),(1820,343,13),(1821,343,14),(1822,343,16),(1823,343,22),(1824,344,2),(1825,344,3),(1826,344,11),(1827,344,12),(1828,344,13),(1829,344,14),(1830,345,11),(1831,345,12),(1832,345,13),(1833,345,14),(1834,345,32),(1835,346,2),(1836,346,3),(1837,346,11),(1838,346,12),(1839,346,13),(1840,346,14),(1841,347,2),(1842,347,6),(1843,347,11),(1844,347,12),(1845,347,13),(1846,348,11),(1847,348,12),(1848,348,13),(1849,348,14),(1850,348,48),(1851,349,2),(1852,349,6),(1853,349,11),(1854,349,12),(1855,349,13),(1856,350,2),(1857,350,6),(1858,350,11),(1859,350,12),(1860,350,13),(1861,350,37),(1862,351,11),(1863,351,12),(1864,351,13),(1865,351,14),(1866,351,18),(1867,351,68),(1868,352,2),(1869,352,3),(1870,352,11),(1871,352,12),(1872,352,13),(1873,353,11),(1874,353,12),(1875,353,13),(1876,353,14),(1877,353,69),(1878,354,70),(1879,354,14),(1880,355,2),(1881,355,6),(1882,355,11),(1883,355,12),(1884,355,13),(1885,355,37),(1886,356,2),(1887,356,3),(1888,356,11),(1889,356,12),(1890,356,13),(1891,356,14),(1892,357,11),(1893,357,12),(1894,357,13),(1895,357,14),(1896,357,16),(1897,357,29),(1898,358,2),(1899,358,3),(1900,358,11),(1901,358,12),(1902,358,13),(1903,359,2),(1904,359,18),(1905,359,11),(1906,359,12),(1907,359,13),(1908,360,2),(1909,360,3),(1910,360,11),(1911,360,12),(1912,360,13),(1913,360,14),(1914,361,11),(1915,361,12),(1916,361,13),(1917,361,14),(1918,361,34),(1919,362,2),(1920,362,3),(1921,362,11),(1922,362,12),(1923,362,13),(1924,362,14),(1925,363,11),(1926,363,12),(1927,363,13),(1928,363,14),(1929,363,69),(1930,364,2),(1931,364,3),(1932,364,11),(1933,364,12),(1934,364,13),(1935,364,14),(1936,365,2),(1937,365,6),(1938,365,11),(1939,365,12),(1940,365,13),(1941,365,37),(1942,366,11),(1943,366,12),(1944,366,13),(1945,366,3),(1946,366,29),(1947,367,31),(1948,367,9),(1949,367,7),(1950,367,11),(1951,367,8),(1952,367,12),(1953,367,13),(1954,368,2),(1955,368,4),(1956,368,11),(1957,368,12),(1958,368,13),(1959,368,14),(1960,369,2),(1961,369,3),(1962,369,11),(1963,369,12),(1964,369,13),(1965,369,14),(1966,370,11),(1967,370,12),(1968,370,13),(1969,370,69),(1970,371,2),(1971,371,6),(1972,371,11),(1973,371,12),(1974,371,13),(1975,371,43),(1976,372,2),(1977,372,3),(1978,372,11),(1979,372,12),(1980,372,13),(1981,373,11),(1982,373,12),(1983,373,13),(1984,373,14),(1985,373,23),(1986,373,26),(1987,374,2),(1988,374,3),(1989,374,11),(1990,374,12),(1991,374,13),(1992,374,14),(1993,375,71),(1994,375,11),(1995,375,12),(1996,375,13),(1997,376,2),(1998,376,3),(1999,376,19),(2000,376,12),(2001,376,13),(2002,376,21),(2003,377,11),(2004,377,12),(2005,377,13),(2006,377,14),(2007,377,72),(2008,378,2),(2009,378,3),(2010,378,19),(2011,378,12),(2012,378,13),(2013,378,14),(2014,379,2),(2015,379,6),(2016,379,11),(2017,379,12),(2018,379,13),(2019,380,11),(2020,380,12),(2021,380,13),(2022,380,14),(2023,380,48),(2024,381,2),(2025,381,6),(2026,381,11),(2027,381,12),(2028,381,13),(2029,382,2),(2030,382,3),(2031,382,11),(2032,382,12),(2033,382,13),(2034,383,2),(2035,383,3),(2036,383,11),(2037,383,12),(2038,383,13),(2039,382,14),(2040,384,2),(2041,384,18),(2042,384,11),(2043,384,12),(2044,384,13),(2045,385,2),(2046,385,3),(2047,385,11),(2048,385,12),(2049,385,13),(2050,386,11),(2051,386,12),(2052,386,13),(2053,386,34),(2054,387,18),(2055,387,9),(2056,387,11),(2057,388,2),(2058,388,3),(2059,388,11),(2060,388,12),(2061,388,13),(2062,389,11),(2063,389,12),(2064,389,13),(2065,389,14),(2066,389,27),(2067,389,28),(2068,390,2),(2069,390,3),(2070,390,11),(2071,390,12),(2072,390,13),(2073,391,2),(2074,391,3),(2075,391,11),(2076,391,12),(2077,391,13),(2078,391,14),(2079,392,11),(2080,392,12),(2081,392,13),(2082,392,14),(2083,392,29),(2084,393,2),(2085,393,6),(2086,393,11),(2087,393,12),(2088,393,13),(2089,393,37),(2090,394,2),(2091,394,10),(2092,395,65),(2093,396,10),(2094,397,10),(2095,398,10),(2096,399,10),(2097,400,10),(2098,401,10),(2099,401,69),(2100,402,73),(2101,402,74),(2102,403,6),(2103,403,10),(2104,404,11),(2105,404,12),(2106,404,13),(2107,404,21),(2108,404,75),(2109,404,76),(2110,405,2),(2111,405,3),(2112,405,11),(2113,405,12),(2114,405,13),(2115,405,14),(2116,406,2),(2117,406,3),(2118,406,11),(2119,406,12),(2120,406,13),(2121,407,77),(2122,407,11),(2123,407,14),(2124,408,11),(2125,408,12),(2126,408,13),(2127,408,14),(2128,408,78),(2129,408,79),(2130,409,2),(2131,409,3),(2132,409,11),(2133,409,12),(2134,409,13),(2135,410,2),(2136,410,6),(2137,410,11),(2138,410,12),(2139,410,13),(2140,410,37),(2141,411,11),(2142,411,12),(2143,411,13),(2144,411,14),(2145,411,69),(2146,412,80),(2147,412,11),(2148,412,12),(2149,412,13),(2150,413,2),(2151,413,3),(2152,413,11),(2153,413,12),(2154,413,13),(2155,413,14),(2156,414,23),(2157,414,3),(2158,414,11),(2159,414,12),(2160,414,13),(2161,415,28),(2162,415,4),(2163,415,11),(2164,415,12),(2165,415,13),(2166,416,2),(2167,416,4),(2168,416,11),(2169,416,12),(2170,416,13),(2171,417,27),(2172,417,4),(2173,417,11),(2174,417,12),(2175,417,13),(2176,418,11),(2177,418,12),(2178,418,13),(2179,418,14),(2180,418,81),(2181,418,82),(2182,419,2),(2183,419,3),(2184,419,11),(2185,419,12),(2186,419,13),(2187,420,2),(2188,420,3),(2189,420,11),(2190,420,12),(2191,420,13),(2192,420,14),(2193,421,2),(2194,421,6),(2195,421,11),(2196,421,12),(2197,421,13),(2198,422,11),(2199,422,12),(2200,422,13),(2201,422,14),(2202,422,60),(2203,422,57),(2204,423,2),(2205,423,3),(2206,423,11),(2207,423,12),(2208,423,13),(2209,424,2),(2210,424,6),(2211,424,11),(2212,424,12),(2213,424,13),(2214,425,11),(2215,425,12),(2216,425,13),(2217,425,14),(2218,425,83),(2219,426,2),(2220,426,3),(2221,426,11),(2222,426,12),(2223,426,13),(2224,427,10),(2225,428,10),(2226,429,10),(2227,430,11),(2228,430,12),(2229,430,13),(2230,430,69),(2231,431,2),(2232,431,3),(2233,431,11),(2234,431,12),(2235,431,13),(2236,432,11),(2237,432,12),(2238,432,13),(2239,432,18),(2240,432,29),(2241,433,2),(2242,433,3),(2243,433,11),(2244,433,12),(2245,433,13),(2246,433,14),(2247,434,10),(2248,435,10),(2249,436,2),(2250,436,3),(2251,436,11),(2252,436,12),(2253,436,13),(2254,437,10),(2255,437,13),(2256,437,34),(2257,438,2),(2258,438,4),(2259,438,11),(2260,438,12),(2261,438,13),(2262,439,10),(2263,440,10),(2264,440,11),(2265,440,12),(2266,441,11),(2267,441,12),(2268,441,13),(2269,441,18),(2270,441,15),(2271,442,23),(2272,442,3),(2273,442,11),(2274,442,12),(2275,442,13),(2276,442,21),(2277,443,2),(2278,443,6),(2279,443,11),(2280,443,12),(2281,443,13),(2282,444,2),(2283,444,3),(2284,444,11),(2285,444,12),(2286,444,13),(2287,445,11),(2288,445,12),(2289,445,13),(2290,445,22),(2291,445,45),(2292,446,26),(2293,446,3),(2294,446,11),(2295,446,12),(2296,446,13),(2297,446,14),(2298,447,11),(2299,447,12),(2300,447,13),(2301,447,16),(2302,447,29),(2303,448,2),(2304,448,6),(2305,448,11),(2306,448,12),(2307,448,13),(2308,449,11),(2310,449,12),(2311,449,13),(2312,449,69),(2313,450,2),(2314,450,3),(2315,450,11),(2316,450,12),(2317,450,13),(2318,451,2),(2319,451,3),(2320,451,11),(2321,451,12),(2322,451,13),(2323,452,11),(2324,452,12),(2325,452,13),(2326,452,18),(2327,452,84),(2328,453,85),(2329,453,11),(2330,453,12),(2331,453,23),(2332,453,26),(2333,454,86),(2334,454,11),(2335,454,12),(2336,454,13),(2337,455,31),(2338,455,9),(2339,455,11),(2340,455,12),(2341,455,13),(2342,456,2),(2343,456,41),(2344,456,11),(2345,456,12),(2346,456,13),(2347,456,43),(2348,457,11),(2349,457,12),(2350,457,13),(2351,457,14),(2352,457,48),(2353,458,2),(2354,458,3),(2355,458,11),(2356,458,12),(2357,458,13),(2358,458,14),(2359,459,2),(2360,459,3),(2361,459,11),(2362,459,12),(2363,459,13),(2364,459,21),(2365,460,2),(2366,460,3),(2367,460,11),(2368,460,12),(2369,460,13),(2370,460,14),(2371,461,11),(2372,461,12),(2373,461,13),(2374,461,14),(2375,461,18),(2376,461,22),(2377,462,2),(2378,462,6),(2379,462,11),(2380,462,12),(2381,462,13),(2382,463,2),(2383,463,3),(2384,463,11),(2385,463,12),(2386,463,13),(2387,464,2),(2388,464,3),(2389,464,11),(2390,464,12),(2391,464,13),(2392,464,14),(2393,465,11),(2394,465,12),(2395,465,13),(2396,465,60),(2397,465,45),(2398,466,23),(2399,466,3),(2400,466,11),(2401,466,12),(2402,466,13),(2403,466,14),(2404,467,2),(2405,467,4),(2406,467,11),(2407,467,12),(2408,467,13),(2409,468,2),(2410,468,3),(2411,468,11),(2412,468,12),(2413,468,13);
/*!40000 ALTER TABLE `appartiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `appartienev`
--

DROP TABLE IF EXISTS `appartienev`;
/*!50001 DROP VIEW IF EXISTS `appartienev`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `appartienev` AS SELECT 
 1 AS `codice_appartiene`,
 1 AS `codice_personaggio`,
 1 AS `codice_accessorio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bibliografia_epiteto`
--

DROP TABLE IF EXISTS `bibliografia_epiteto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliografia_epiteto` (
  `codice_bibliografia_epiteto` int NOT NULL,
  `titolo_bibliografia_epiteto` varchar(255) DEFAULT NULL,
  `autore_bibliografia_epiteto` varchar(255) DEFAULT NULL,
  `anno_pubblicazione_bibliografia_epiteto` int DEFAULT NULL,
  `volume_bibliografia_epiteto` varchar(45) DEFAULT NULL,
  `pagina_bibliografia_epiteto` int DEFAULT NULL,
  `codice_epiteto` int DEFAULT NULL,
  PRIMARY KEY (`codice_bibliografia_epiteto`),
  UNIQUE KEY `codice_bibliografia_epiteto_UNIQUE` (`codice_bibliografia_epiteto`),
  KEY `codice_epiteto_FK_bibliografia_epiteto_idx` (`codice_epiteto`),
  CONSTRAINT `codice_epiteto_FK_bibliografia_epiteto` FOREIGN KEY (`codice_epiteto`) REFERENCES `epiteto` (`codice_epiteto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografia_epiteto`
--

LOCK TABLES `bibliografia_epiteto` WRITE;
/*!40000 ALTER TABLE `bibliografia_epiteto` DISABLE KEYS */;
INSERT INTO `bibliografia_epiteto` VALUES (1,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',542,1),(2,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',395,2),(3,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',568,3),(4,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',324,4),(5,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',492,5),(6,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',650,6),(7,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',598,7),(8,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',79,8),(9,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',444,9),(10,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',782,10),(11,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',NULL,11),(12,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',6,12),(13,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',161,13),(14,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',19,14),(15,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',116,15),(16,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',548,16),(17,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',22,17),(18,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',322,18),(19,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',333,19),(20,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',587,20),(21,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',95,21),(22,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',502,22),(23,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',444,24),(24,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',227,25),(25,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',458,26),(26,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',49,28),(27,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',189,29),(28,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',48,31),(29,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',333,36),(30,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',542,37),(32,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',767,39),(33,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',597,41),(34,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',767,42),(35,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',31,43),(36,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',388,44),(37,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',185,45),(38,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',186,46),(39,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',934,47),(40,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',320,48),(41,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',129,49),(42,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',57,50),(43,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',54,51),(44,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',578,52),(45,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',776,53),(46,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',317,54),(47,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',734,55),(48,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',44,56),(49,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',70,57),(50,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',18,58),(51,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',871,59),(52,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',48,60),(53,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',214,61),(54,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',308,62),(55,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',184,64),(56,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',372,65),(57,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',412,66),(58,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',313,67),(59,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',478,69),(60,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',890,70),(61,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',594,71),(62,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',343,72),(63,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',52,73),(64,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',180,74),(65,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,NULL,NULL,75),(66,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',298,76),(67,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',459,77),(68,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',129,78),(69,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',60,79),(70,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',32,80),(71,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',525,81),(72,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',327,82),(73,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',223,83),(74,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',76,84),(75,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',524,85),(76,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',347,86),(77,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',462,87),(78,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',758,88),(79,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',861,89),(80,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',444,90),(81,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',54,92),(82,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',2,93),(83,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',312,94),(84,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',22,95),(85,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',384,96),(86,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',465,97),(87,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',314,98),(88,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',118,99),(89,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',325,100),(90,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',589,101),(91,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',875,102),(92,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',81,103),(93,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',314,105),(94,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',60,106),(95,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',437,107),(96,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',79,108),(97,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',122,109),(98,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',698,110),(99,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',81,111),(100,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',301,112),(101,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',22,113),(102,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',759,114),(103,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',487,115),(104,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',600,116),(105,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',80,118),(106,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',413,119),(107,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',50,120),(108,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',647,121),(109,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',81,122),(110,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',163,123),(111,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',161,124),(112,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',168,125),(113,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',184,126),(114,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',208,127),(115,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',699,128),(116,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',312,129),(117,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',106,130),(118,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',782,131),(119,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',210,132),(120,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',613,134),(121,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',647,136),(122,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',310,138),(123,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',872,139),(124,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',733,140),(125,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',122,141),(126,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',52,142),(127,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',327,143),(128,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',503,144),(129,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',527,145),(130,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',549,146),(131,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',62,148),(132,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',284,149),(133,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',615,152),(134,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',709,153),(135,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',595,154),(136,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',263,155),(137,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',788,156),(138,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',702,157),(139,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',574,158),(140,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',86,159),(141,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',665,160),(142,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',417,161),(143,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',191,162),(144,'Lexikon der ägyptischen Götter und GötterbezeichnungenLexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',657,163),(145,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',610,165),(146,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',800,166),(147,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',624,167),(148,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',146,168),(149,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',49,169),(150,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',371,170),(151,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',24,171),(152,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',87,177),(153,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',671,178),(154,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',702,179),(155,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',677,180),(156,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',597,181),(157,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',263,182),(158,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',268,183),(159,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',677,186),(160,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',467,187),(161,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',428,189),(162,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',50,194),(163,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VI',89,201),(164,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',650,202),(165,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',409,205),(166,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',202,206),(167,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'VII',227,207),(168,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',404,208),(169,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',324,209),(170,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'IV',10,210),(171,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'I',580,211),(172,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',515,215),(173,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',324,216),(174,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',812,217),(175,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',617,218),(176,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'V',397,219),(177,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',18,222),(178,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'II',303,224),(179,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',48,225),(180,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',785,226),(181,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',574,230),(182,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',263,232),(183,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',165,233),(184,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',265,234),(185,'Lexikon der ägyptischen Götter und Götterbezeichnungen','Christian Leitz',2002,'III',268,235);
/*!40000 ALTER TABLE `bibliografia_epiteto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bibliografia_epitetov`
--

DROP TABLE IF EXISTS `bibliografia_epitetov`;
/*!50001 DROP VIEW IF EXISTS `bibliografia_epitetov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bibliografia_epitetov` AS SELECT 
 1 AS `codice_bibliografia_epiteto`,
 1 AS `titolo_bibliografia_epiteto`,
 1 AS `autore_bibliografia_epiteto`,
 1 AS `anno_pubblicazione_bibliografia_epiteto`,
 1 AS `volume_bibliografia_epiteto`,
 1 AS `pagina_bibliografia_epiteto`,
 1 AS `codice_epiteto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bibliografia_scena`
--

DROP TABLE IF EXISTS `bibliografia_scena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliografia_scena` (
  `codice_bibliografia_scena` int NOT NULL,
  `serie_bibliografia_scena` varchar(255) DEFAULT NULL,
  `titolo_b_s` varchar(255) DEFAULT NULL,
  `volume_bibliografia_scena` varchar(255) DEFAULT NULL,
  `autore_b_s` varchar(255) DEFAULT NULL,
  `anno_pubblicazione_b_s` int DEFAULT NULL,
  `n_pagina_b_s` varchar(255) DEFAULT NULL,
  `n_tavola` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codice_bibliografia_scena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografia_scena`
--

LOCK TABLES `bibliografia_scena` WRITE;
/*!40000 ALTER TABLE `bibliografia_scena` DISABLE KEYS */;
INSERT INTO `bibliografia_scena` VALUES (1,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'9','III A, III B, V A'),(2,NULL,'Kalabcha : textes du sanctuaire','A','Daumas F., Derchain P.',1960,'13; 14-17; 24-29; 34-37','-'),(3,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'19 (56)-(60)','-'),(4,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'13','XI A, XI B, XII A, XII B, XIII A, XIII B, XVI B'),(5,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'17','VI A'),(6,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'18','VI B'),(7,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'19','VII A'),(8,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'21','VII B'),(9,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'23','V A'),(10,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'24','III B'),(12,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'25','III A'),(13,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'26','IX A'),(14,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'28','IX A'),(15,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'30','VIII A'),(16,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'32','VIII B'),(17,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'34','IX B'),(18,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'36','X A'),(19,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'37','X B'),(20,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'38','XIII B'),(21,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'39','XIII A'),(22,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'40','XIV A, XVIII B'),(23,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'42','XIV B'),(24,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'44','XVI B'),(25,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'45','XI B'),(26,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'46','XI A'),(27,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','1','Gauthier H.',1911,'47','XVI A'),(28,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'19 (61)-(65)','-'),(29,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (56)','-'),(30,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18(56)','-'),(31,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (57)-(58)','-'),(32,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (59)-(60)','-'),(33,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (59)-(60)','-'),(34,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (59)-(60)','-'),(35,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (59)-(60)','-'),(36,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (56)','-'),(37,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (56)','-'),(38,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (57)-(58)','-'),(39,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (57)-(58)','-'),(40,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (59)-(60)','-'),(41,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (59)-(60)','-'),(42,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (59)-(60)','-'),(43,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (61)','-'),(44,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (61)','-'),(45,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (62)-(63)','-'),(46,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (62)-(63)','-'),(47,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (64)-(65)','-'),(48,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (64)-(65)','-'),(49,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (64)-(65)','-'),(50,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (61)','-'),(51,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (61)','-'),(52,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'48','XVI A'),(53,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (62)-(63)','-'),(54,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'50','XV A'),(55,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'52','XV B'),(56,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (62)-(63)','-'),(57,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'54','XVII A'),(58,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (64)-(65)','-'),(59,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'55','XVII B'),(60,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (64)-(65)','-'),(61,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'56','XVIII A'),(62,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'18 (64)-(65)','-'),(63,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'64','XIX B'),(64,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'16 (36)-(37)','-'),(65,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'65','XX A'),(66,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'66','XIX B'),(67,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'67','XIX B'),(68,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'68','XX A'),(69,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'71','XXI A'),(70,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'16 (40)-(41)','-'),(71,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'72','XXI A'),(72,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'74','XXI B'),(73,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'17 (42)-(45)','-'),(74,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'77','XXIII A, B'),(75,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'17 (46)-(49)','-'),(76,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'83','XXVI A, XXXVII B'),(77,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'16 (42)','-'),(78,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'85','XXVI B'),(79,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'16 (43)-(44)','-'),(80,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'86','XXVII A'),(81,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'88','XXVII B'),(82,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'89','XXVIII A'),(83,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'90','XXVIII B'),(84,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'93','XXIX A, B'),(85,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'96','XXX A'),(86,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'17 (45)','-'),(87,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'99','XXXI A'),(88,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'17 (46)','-'),(89,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'100','XXXI B'),(90,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'101','XXXII A'),(91,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'17 (47)-(48)','-'),(92,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'102','XXXII B'),(93,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'104','XXXIII A'),(94,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'17 (49)','-'),(95,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'105','XXXIII B'),(96,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'107','XXXIV A'),(97,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'108','XXXIV B'),(98,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'110','XXXV A'),(99,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'112','XXXVI A'),(100,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'114','XXXVI B'),(101,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'115','XXXVII A'),(102,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'127','XXXIX A'),(103,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'14 (24)-(25)','-'),(104,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'129','XXXIX B'),(105,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'130','XXXIX B'),(106,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'132','XL B'),(107,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'15 (26)-(27)','-'),(108,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'133','XL B'),(109,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'133','XLI A'),(110,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'134','XLI A'),(111,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'134','XLII A'),(112,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'135','XL C'),(113,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'136','XL C'),(114,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'136','XLI B'),(115,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'136','XLII B'),(116,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'138','XLIII A, B'),(117,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'16 (32)-(35)','-'),(118,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'140','XLV B'),(119,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'16 (28)-(31)','-'),(120,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'148','-'),(121,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'15 (28)','-'),(122,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'150','XLIX A'),(123,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'15 (29)-(30)','-'),(124,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'150','XLIX B'),(125,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'151','XLVIII B'),(126,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'152','L A'),(127,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'153','LI A'),(128,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'153','LI B'),(129,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'153','L B'),(130,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'15 (31)','-'),(131,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'154','LII A'),(132,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'15 (32)','-'),(133,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'160','LII B'),(134,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'161','LII B'),(135,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'162','LV A'),(136,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'15 (33)-(34)','-'),(137,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'162','LV B'),(138,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'164','LVI A'),(139,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'15 (35)','-'),(140,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'164','LVI B'),(141,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'165','LVII A'),(142,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'166','LVII B'),(143,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'166','LVIII A'),(144,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'167','LVIII B'),(145,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'168','LIX A'),(146,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'168','LIX B'),(147,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'210','LXXIV A'),(148,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'14 (20)-(21)','-'),(149,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'211','LXXIV B'),(150,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'212','LXXV A'),(151,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'213','LXXV B'),(152,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'215','LXXVI A'),(153,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'216','LXXVI B'),(154,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'217','LXXVI B'),(155,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'219','LXXVII A'),(156,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'220','LXXVII B'),(157,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'224','LXXIX A'),(158,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'14 (22)-(23)','-'),(159,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'226','LXXIX B'),(160,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'227','LXXX A'),(161,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'228','LXXX B'),(162,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'229','LXXXI A'),(163,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'230','LXXXI B'),(164,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'231','LXXXII A'),(165,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'232','LXXXII B'),(166,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'299','XCVIII B'),(167,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'11 (1)-(2)','-'),(168,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'300','XCVIII B'),(169,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'302','C A'),(170,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'11 (3)','-'),(171,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'304','C B'),(172,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'11 (4)','-'),(173,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'306','CI A'),(174,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'11 (5)-(6)','-'),(175,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'307','CII A'),(176,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'307','CII B'),(177,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'308','CII B'),(178,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'309','XCIX B'),(179,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'310','XCIX B'),(180,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'314','CIV A'),(181,'Topographical bibliography of ancient Egyptian hieroglyphic texts, reliefs, and paintings','Nubia, the deserts, and outside Egypt','VII','Porter B., Moss R. L. B.',1975,'19 (66)-(67)','-'),(182,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'315','CV A, B'),(183,'Les Temples Immergés de la Nubie','Le Temple de Kalabchah','I','Gauthier H.',1911,'316','CV B, CVI');
/*!40000 ALTER TABLE `bibliografia_scena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bibliografia_scenav`
--

DROP TABLE IF EXISTS `bibliografia_scenav`;
/*!50001 DROP VIEW IF EXISTS `bibliografia_scenav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bibliografia_scenav` AS SELECT 
 1 AS `codice_bibliografia_scena`,
 1 AS `serie_bibliografia_scena`,
 1 AS `titolo_b_s`,
 1 AS `volume_bibliografia_scena`,
 1 AS `autore_b_s`,
 1 AS `anno_pubblicazione_b_s`,
 1 AS `n_pagina_b_s`,
 1 AS `n_tavola`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `bibliografia_tempio`
--

DROP TABLE IF EXISTS `bibliografia_tempio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliografia_tempio` (
  `codice_bibliografia_tempio` int NOT NULL,
  `autore_bibliografia_tempio` varchar(255) DEFAULT NULL,
  `titolo_bibliografia_tempio` varchar(255) DEFAULT NULL,
  `rivista_bibliografia_tempio` varchar(255) DEFAULT NULL,
  `volume_bibliografia_tempio` varchar(45) DEFAULT NULL,
  `anno_pubblicazione_bibliografia_tempio` int DEFAULT NULL,
  `luogo_pubblicazione_bibliografia_tempio` varchar(45) DEFAULT NULL,
  `pagine_bibliografia_tempio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codice_bibliografia_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliografia_tempio`
--

LOCK TABLES `bibliografia_tempio` WRITE;
/*!40000 ALTER TABLE `bibliografia_tempio` DISABLE KEYS */;
INSERT INTO `bibliografia_tempio` VALUES (1,'Ampère, J. J.','Voyage En Égypte et En Nubie',NULL,NULL,1868,'Paris','pp. 477-478'),(2,'Arnold, D.','Die Tempel von Kalabsha',NULL,NULL,1975,'Cairo',NULL),(3,'Arnold, D.','Temples of the Last Pharaohs',NULL,NULL,1999,'New York',NULL),(4,'Arnold, D.','The Encyclopaedia of Ancient Egyptian Architecture',NULL,NULL,2003,'London','p. 255'),(5,'Ashby, S.','Milk Libations for Osiris: Nubian Piety at Philae','Near Eastern Archaeology 82','4',2019,NULL,'pp. 200-209'),(6,'Baedeker, K.','Egypt. Handbook for Travellers. Part Second: Upper Egypt, with Nubia as Far as the Second Cataract and the Western Oases',NULL,'2',1892,'Leipzig','pp. 307-309'),(7,'Baedeker, K.','Egypt and the Sudan. Handbook for Travellers',NULL,NULL,1914,'Leipzig','pp. 389-391'),(8,'Bartlett, W. H.','The Nile Boat: Or, Glimpses of the Land of Egypt',NULL,NULL,1851,'London','p. 214'),(9,'Beckerath, J. von','Handbuch Der Ägyptischen Königsnamen','Münchner Ägyptologische Studien','49',1999,'Mainz',NULL),(10,'Belzoni, G. B.','Narrative of the Operations and Recent Discoveries within the Pyramids, Temples, Tombs and Excavations, in Egypt and Nubia',NULL,NULL,1820,'London','pp. 67-69'),(11,'Bissing, Fr. W. von','Apotheosis by Drowning','Recueil de Travaux Relatifs à La Philologie et à l’archéologie Égyptiennes et Assyriennes','34',1912,'Paris','pp. 37-38'),(12,'Bénédite, G.','Égypte',NULL,NULL,1900,'Paris','pp. 586-587'),(13,'Blackman, A. M.','The Temple of Dendûr','Les Temples Immergés de La Nubie',NULL,1911,'Le Caire',NULL),(14,'Blackman, A. M.','The Temple of Bîgeh','Les Temples Immergés de La Nubie',NULL,1915,'Le Caire',NULL),(15,'Bonomi, J.','Egypt, Nubia, and Ethiopia',NULL,NULL,1862,'London','pp. 167-169, 171'),(16,'Bresciani, E., Pernigotti, S.','Assuan: E. Bresciani, Il Tempio Tolemaico Di Isi; S. Pernigotti, I Blocchi Decorati e Iscritti','Biblioteca Di Studi Antichi, Sezione Egittologia','16',1978,'Pisa',NULL),(17,'Budde, D., Dils, P., Goldbrunner, L., Mendel, D., Förster, F., Recklinghausen, D. von,  Ventker, B.','Lexikon Der Ägyptischen Götter Und Götterbezeichnungen','Orientalia Lovaniensia Analecta','110-116, 129',2002,'Leuven',NULL),(18,'Budge, E. A. W.','The Nile: Notes for Travellers in Egypt',NULL,NULL,1901,'London','p. 468'),(19,'Burckhardt, J. L.','Travels in Nubia',NULL,NULL,1822,'London','pp. 112-116'),(20,'Burney, E. W., Porter, B., Moss, R. L. B.','VII: Nubia, the Deserts, and Outside Egypt','Topographical Bibliography of Ancient Egyptian Hieroglyphic Texts, Reliefs, and Paintings',NULL,1951,'Oxford','pp. 10-21'),(21,'Cadalvène, E. de, Breuvery, J. de','L’Égypte et La Nubie',NULL,NULL,1841,'Paris','pp. 32-37'),(22,'Cailliaud, F.','Voyage à Méroé, Au Fleuve Blanc, Au-Delà de Fâzoql, Dans Le Midi Du Royaume de Sennâr, à Syouah et Dans Cinq Autres Oasis: Fait Dans Les Années 1819, 1820, 1821 et 1822',NULL,'I',1826,'Paris','p. 307'),(23,'Cailliaud, F.','Voyage à Méroé, Au Fleuve Blanc, Au-Delà de Fâzoql, Dans Le Midi Du Royaume de Sennâr, à Syouah et Dans Cinq Autres Oasis: Fait Dans Les Années 1819, 1820, 1821 et 1822',NULL,'III',1826,'Paris','pp. 268-269'),(24,'Cammas, H., Lefèvre, A.','La Vallée Du Nil: Impressions et Photographies',NULL,NULL,1862,'Paris','pp. 197-200'),(25,'Cauville, S.','La Théologie d’Osiris à Edfou','Bibliothèque d’étude','91',1983,'Le Caire',NULL),(26,'Cauville, S.','Une Règle de La “Grammaire” Du Temple.','Bulletin de l’Institut Français d’Archéologie Orientale','83',1983,NULL,'pp. 51-84'),(27,'Cauville, S.','Le Temple de Dendara',NULL,'11',2000,'Le Caire',NULL),(28,'Cauville, S.','Le Temple de Dendara',NULL,'12',2007,'Le Caire',NULL),(29,'Cauville, S.','L’offrande Aux Dieux Dans Le Temple Égyptien',NULL,NULL,2011,'Leuven',NULL),(30,'Cauville, S.','Dendara: Les Structures Décoratives Du Temple d’Hathor','Orientalia Lovaniensia Analecta','296',2020,'Leuven',NULL),(31,'Champollion, J.-F.','Monuments de l’Égypte et de La Nubie: Réduction Photographique de l’édition Originale',NULL,'I',1970,'Genève',NULL),(32,'Champollion, J.-F.','Lettres Écrites d’Égypte et de Nubie En 1828 et 1829',NULL,NULL,1973,'Genève','pp. 116-117, 154-159'),(33,'Champollion, J.-F.','Notices Descriptives','Collection Des Classiques Égyptologiques',NULL,1973,'Genève','pp. 144 bis-144 septième'),(34,'Christophe, L.-A.','La Salle V Du Temple de Séthi Ier à Gournah','Bulletin de l’Institut Français d’Archéologie Orientale','49',1950,NULL,'pp. 117–80'),(35,'Combes, E.','Voyage En Égypte, En Nubie, Dans Les Déserts de Beyouda, Des Bicharys et Sur Les Côtes de La Mer Rouge',NULL,NULL,1846,'Paris','pp. 285-286'),(36,'Coppens, F.','The Wabet: Tradition and Innovation in Temples of the Ptolemaic and Roman Period',NULL,NULL,2007,'Prague',NULL),(37,'Curto, S., Maragioglio V., Rinaldi C., Bongrani L.','Kalabsha','Orientis Antiqui Collection','5',1965,'Rome',NULL),(38,'Daumas, F.','La Ouabet de Kalabcha','Collection Scientifique','69',1969,'Le Caire',NULL),(39,'Daumas, F.','Valeurs Phonétiques Des Signes Hiéroglyphiques d’époque Gréco-Romaine',NULL,NULL,1995,'Montpellier',NULL),(40,'Daumas, François, Derchain, P.','Kalabcha: Textes Du Sanctuaire',NULL,NULL,1960,'Le Caire',NULL),(41,'Daumas, F., Lenthéric, B.','Le Temple de Dendara 9',NULL,NULL,1987,'Le Caire',NULL),(42,'Derchain, P., Derchain-Urtel, M.-T.','Harendotes (Celui à Qui Son Père Demande Des Comptes)','Göttinger Miszellen','233',2012,'Göttingen','pp. 5-8'),(43,'Didier, C.','500 Lieues Sur Le Nil',NULL,NULL,1858,'Paris','pp. 239-242'),(44,'Du Camp, M.','Le Nil: Égypte et Nubie',NULL,NULL,1854,'Paris','pp. 160-162'),(45,'Edwards, A. B.','A Thousand Miles up the Nile',NULL,NULL,1891,'London','pp.325-353'),(46,'Elkady, M., Kitat, S. and Ramzy, N.','The Solar Aspects of God Mandulis the Child during the Græco-Roman Period','Journal of The Faculty of Tourism and Hotels','16',2019,'Alexandria','pp. 12-22'),(47,'Fantusati, E.','Antica Nubia: Storia Dell’alta Valle Del Nilo','Biblioteca Di Cultura','584',1999,'Rome',NULL),(48,'Gauthier, H.','Le Temple de Kalabchah','Les Temples Immergés de La Nubie',NULL,1911,'Le Caire',NULL),(49,'Lepsius, C. R.','Denkmäler Aus Aegypten Und Aethiopien: Text (Reprographie A4 de l’édition Originale)','Collection Des Classiques Égyptologiques','5',1970,'Genève','pp. 18-45'),(50,'Rosellini, I.','Monumenti Dell’ Egitto e Della Nubia: Monumenti Storici; Monumenti Civili; Monumenti Del Culto','Collection Des Classiques Égyptologiques',NULL,1977,'Genève',NULL),(51,'Habachi, L.','Divinities Adored in the Area of Kalabsha, with a Special Reference to the Goddess Miket','Sixteen Studies on Lower Nubia',NULL,1981,'Le Caire','pp. 197-218'),(52,'Henniker, F.','Notes during a Visit to Egypt, Nubia, the Oasis, Mount Sinai, and Jerusalem',NULL,NULL,1824,'London','p. 156'),(53,'Horeau, H.','Panorama d’Égypte et de Nubie: Avec Un Portrait de Méhémet-Ali et Un Texte Orné de Vignettes',NULL,NULL,1841,'Paris','p. 29 bis'),(54,'Hoven, C. van den','Balancing the Gods: Planned Decoration in the Temple of Kalabsha','Current Research in Egyptology 2010: Proceedings of the Eleventh Annual Symposium, Which Took Place at Leiden University, the Netherlands, January 2010',NULL,2011,'Oxford','pp. 183-196'),(55,'Hölbl, G.','Altägypten Im Römischen Reich. Der Römische Pharao Und Seine Tempel II: Die Tempel Des Römischen Nubien',NULL,NULL,2004,'Mainz',NULL),(56,'Irby, C. L.','Travels in Egypt and Nubia, Syria, and Asia Minor, during the Years 1817 & 1818',NULL,NULL,1823,'London','pp. 101-103'),(57,'Jackson, R. B.','At Empire’s Edge: Exploring Rome’s Egyptian Frontier',NULL,NULL,2002,'London','pp. 129-156'),(58,'Laorty-Hadji, R. P.','L’Égypte',NULL,NULL,1858,'Paris','p. 393'),(59,'Legh, T.','Narrative of a Journey in Egypt and the Country beyond the Cataracts',NULL,NULL,1817,'Philadelphia','pp. 121-125'),(60,'Leitz, C.','Quellentexte Zur Ägyptischen Religion, I: Die Tempelinschriften Der Griechisch-Römanischen Zeit','Einführungen Und Quellentexte Zur Ägyptologie','2',2004,'Münster',NULL),(61,'Lepsius, R.','Briefe Aus Aegypten, Aethiopien Und Der Halbinsel Des Sinai: Geschrieben in Den Jahren 1842-1845 Während Der Auf Befehl Sr. Majestät Des Königs Friedrich Wilhelm IV. von Preußen Ausgeführten Wissenschaftlichen Expedition',NULL,NULL,1852,'Berlin','pp. 263-264'),(62,'Gau, F. C.','Antiquités de La Nubie: Ou, Monumens Inédits Des Bords Du Nil, Situés Entre La Première et La Seconde Cataracte, Dessinés et Mesurés',NULL,NULL,1822,'Paris','p. 15'),(63,'Labrique, F.','Stylistique et Théologie à Edfou: Le Rituel de l’offrande de La Campagne: Étude de La Composition','Orientalia Lovaniensia Analecta','51',1992,'Leuven',NULL),(64,'Laskowska-Kusztal, E.','Relations between the Cult Centre of Mandulis at Kalabsha and the Religious Centres on Elephantine and Philae','Ägyptologische Tempeltagung: Interconnections between Temples, Warschau, 22.-25. September 200','8',2010,'Wiesbaden','pp. 111-122'),(65,'Laskowska-Kusztal, E.','The “Centre for Development” of the Royal Authority in Kalabsha','Constructing Authority: Prestige, Reputation and the Perception of Power in Egyptian Kingship, Budapest, May 12-14, 2016. 8. Symposion Zur Ägyptischen Königsideologie / 8th Symposium on Egyptian Royal Ideology','8',2017,'Wiesbaden','pp. 157-176'),(66,'Light, H.','Travels in Egypt, Nubia, Holy Land, Mount Libanon, and Cyprus in the Year 1814',NULL,NULL,1818,'London','pp. 63-66'),(67,'Maspero, G.','Les Temples Immergés de La Nubie. Rapports Relatifs à La Consolidation Des Temples',NULL,NULL,1911,'Le Caire',NULL),(68,'Meulenaere, H. de, Dewachter, M.','La Chapelle Ptolémaique de Kalabcha: Fascicules 1 et 2','Collection Scientifique','70',1970,'Le Caire',NULL),(69,'Pascal, L.','La Cange: Voyage En Égypte',NULL,NULL,1861,'Paris','pp.245-247'),(70,'Prokesch, A. Ritter von Osten','Das Land Zwischen Den Katarakten Des Nil: Mit Einer Karte, Astronomisch Bestimmt Und Aufgenommen Im Jahre 1827',NULL,NULL,1831,'Wien','pp. 38-39, 88-97'),(71,'Redford, D. B., Bleiberg, E., Foster, J. L., Freed, R. E., Kadish, G. E., Leprohon, R. J.,  Silverman, D. P.','The Oxford Encyclopedia of Ancient Egypt',NULL,'2',2001,'Oxford','pp. 615-619'),(72,'Rifaud, J. J.','Tableau de l’Égypte, de La Nubie et Des Lieux Circonvoisins: Ou Itinéraire à l’usage Des Voyageurs Qui Visitent Ces Contrées',NULL,NULL,1830,'Paris','pp. 260-261'),(73,'Roberts, D.','The Holy Land, Syria, Idumea, Arabia, Egypt, and Nubia',NULL,'5',1856,'London',NULL),(74,'Shafer, B. E.','Temples of Ancient Egypt',NULL,NULL,1997,'London',NULL),(75,'Smith, A. C.','The Attractions of the Nile and Its Banks',NULL,'II',1868,'London','pp. 67-69'),(76,'Stock, H., Siegler, K. G.','Kalabsha: Der Grösste Tempel Nubiens Und Das Abenteuer Seiner Rettung',NULL,NULL,1965,'Wiesbaden',NULL),(77,'Teeter, E.','The Presentation of Maat: Ritual and Legitimacy in Ancient Egypt','Studies in Ancient Oriental Civilization','57',1997,'Chicago',NULL),(78,'Török, L.','Between Two Worlds. The Frontier Region between Ancient Nubia and Egypt 3700 BC-500 AD',NULL,NULL,2009,'Leiden',NULL),(79,'Veronese, V.','Message Spécial de M. Vittorino Veronese Directeur Général de l’Unesco','Le Courrier','XIII',1960,NULL,'p. 3'),(80,'Vyse, H.','Operations Carried on at the Pyramids of Gizeh in 1837: With an Account of a Voyage into Upper Egypt, and an Appendix',NULL,'I',1840,'London','pp. 37, 56'),(81,'Weigall, A. E. P.','A Report on the Antiquities of Lower Nubia (the First Cataract to the Sudan Frontier) and Their Condition in 1906-7',NULL,NULL,1907,'Oxford','pp. 68-73'),(82,'Wilkinson, G.','Modern Egypt and Thebes: Being a Description of Egypt, Including the Information Required for Travellers in That Country',NULL,'II',1843,'London','pp. 310-311'),(83,'Wilkinson, R. H.','The Complete Temples of Ancient Egypt',NULL,NULL,2000,'London',NULL),(84,'Wright, G. R. H.','Kalabsha: The Preserving of the Temple','Archäologische Veröffentlichungen, Deutsches Archäologisches Institut, Abteilung Kairo','2',1972,'Berlin',NULL),(85,'Wright, G. R. H.','Ptolemaic Remains from Kalabsha Temple Reconstituted on Elephantine Island (1974-1975)','Journal of Egyptian Archaeology','63',1977,NULL,'pp. 156-58'),(86,'Wright, G. R. H.','Kalabsha Band 3: The Ptolemaic Sanctuary of Kalabsha, Its Reconstruction on Elephantine Island','Archäologische Veröffentlichungen, Deutsches Archäologisches Institut, Abteilung Kairo','3',1987,'Mainz',NULL);
/*!40000 ALTER TABLE `bibliografia_tempio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `bibliografia_tempiov`
--

DROP TABLE IF EXISTS `bibliografia_tempiov`;
/*!50001 DROP VIEW IF EXISTS `bibliografia_tempiov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bibliografia_tempiov` AS SELECT 
 1 AS `codice_bibliografia_tempio`,
 1 AS `autore_bibliografia_tempio`,
 1 AS `titolo_bibliografia_tempio`,
 1 AS `rivista_bibliografia_tempio`,
 1 AS `volume_bibliografia_tempio`,
 1 AS `anno_pubblicazione_bibliografia_tempio`,
 1 AS `luogo_pubblicazione_bibliografia_tempio`,
 1 AS `pagine_bibliografia_tempio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `citata`
--

DROP TABLE IF EXISTS `citata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citata` (
  `codice_citata` int NOT NULL,
  `codice_scena` int DEFAULT NULL,
  `codice_bibliografia_scena` int DEFAULT NULL,
  PRIMARY KEY (`codice_citata`),
  UNIQUE KEY `codice_citata_UNIQUE` (`codice_citata`),
  KEY `codice_bibliografia_scena_FK_citata` (`codice_bibliografia_scena`),
  KEY `codice_scena_FK_citata` (`codice_scena`),
  CONSTRAINT `codice_bibliografia_scena_FK_citata` FOREIGN KEY (`codice_bibliografia_scena`) REFERENCES `bibliografia_scena` (`codice_bibliografia_scena`),
  CONSTRAINT `codice_scena_FK_citata` FOREIGN KEY (`codice_scena`) REFERENCES `scena` (`codice_scena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citata`
--

LOCK TABLES `citata` WRITE;
/*!40000 ALTER TABLE `citata` DISABLE KEYS */;
INSERT INTO `citata` VALUES (1,1,1),(2,1,2),(3,1,3),(4,4,4),(5,7,5),(6,8,6),(7,9,7),(8,10,8),(9,11,9),(10,12,10),(11,14,13),(12,15,14),(13,16,15),(14,17,16),(15,18,17),(16,13,12),(17,19,18),(18,20,19),(19,21,20),(20,22,21),(21,23,22),(22,24,23),(23,25,24),(24,26,25),(25,27,26),(26,28,27),(27,4,28),(28,7,29),(29,8,30),(30,9,31),(31,10,32),(32,11,33),(33,12,34),(34,13,35),(35,14,36),(36,15,37),(37,16,38),(38,17,39),(39,18,40),(40,19,41),(41,20,42),(42,21,43),(43,22,44),(44,23,45),(45,24,46),(46,25,47),(47,26,48),(48,27,49),(49,28,50),(50,29,51),(51,29,52),(52,30,53),(53,30,54),(54,31,55),(55,31,56),(56,32,57),(57,32,58),(58,33,59),(59,33,60),(60,34,61),(61,34,62),(62,35,63),(63,35,64),(64,36,63),(65,36,64),(66,37,63),(67,37,64),(68,38,65),(69,38,64),(70,39,64),(71,39,65),(72,40,65),(73,40,64),(74,41,64),(75,41,66),(76,42,64),(77,42,67),(78,43,64),(79,43,67),(80,44,68),(81,44,64),(82,45,64),(83,45,68),(84,46,64),(85,46,68),(86,47,69),(87,47,70),(88,48,71),(89,48,70),(90,49,72),(91,49,73),(92,52,74),(93,52,75),(94,55,76),(95,55,77),(96,56,78),(97,56,79),(98,57,80),(99,57,79),(100,58,81),(101,58,79),(102,59,82),(103,59,79),(104,60,83),(105,60,77),(106,61,84),(107,61,77),(108,62,85),(109,62,86),(110,63,87),(111,63,88),(112,64,89),(113,64,88),(114,65,90),(115,65,91),(116,66,92),(117,66,91),(118,67,93),(119,67,94),(120,68,95),(121,68,94),(122,69,96),(123,69,88),(124,70,97),(125,70,88),(126,71,98),(127,71,91),(128,72,99),(129,72,91),(130,73,100),(131,73,94),(132,74,101),(133,74,94),(134,75,102),(135,75,103),(136,76,102),(137,76,103),(138,77,104),(139,77,103),(140,78,105),(141,78,103),(142,79,106),(143,79,107),(144,80,108),(145,80,107),(146,81,108),(147,81,107),(148,82,109),(149,82,107),(150,83,110),(151,83,107),(152,84,111),(153,84,107),(154,85,112),(155,85,107),(156,86,112),(157,86,107),(158,87,113),(159,87,107),(160,88,114),(161,88,107),(162,89,114),(163,89,107),(164,90,115),(165,90,107),(166,91,116),(167,91,117),(168,92,118),(169,92,119),(170,93,120),(171,93,121),(172,94,122),(173,94,123),(174,95,124),(175,95,123),(176,96,125),(177,96,123),(178,97,126),(179,97,121),(180,98,127),(181,98,123),(182,99,128),(183,99,123),(184,100,129),(185,100,130),(186,101,131),(187,101,132),(188,102,131),(189,102,132),(190,103,133),(191,103,132),(192,104,134),(193,104,132),(194,105,135),(195,105,136),(196,106,137),(197,106,136),(198,107,138),(199,107,139),(200,108,140),(201,108,139),(202,109,141),(203,109,139),(204,110,142),(205,110,136),(206,111,143),(207,111,136),(208,112,144),(209,112,136),(210,113,145),(211,113,139),(212,114,146),(213,114,139),(214,115,147),(215,115,148),(216,116,149),(217,116,148),(218,117,150),(219,117,148),(220,118,151),(221,118,148),(222,119,152),(223,119,148),(224,120,153),(225,120,148),(226,121,154),(227,121,148),(228,122,155),(229,122,148),(230,123,156),(231,123,148),(232,124,157),(233,124,158),(234,125,159),(235,125,158),(236,126,160),(237,126,158),(238,127,161),(239,127,158),(240,128,162),(241,128,158),(242,129,163),(243,129,158),(244,130,164),(245,130,158),(246,131,165),(247,131,158),(248,132,166),(249,132,167),(250,133,166),(251,133,167),(252,134,168),(253,134,167),(254,135,168),(255,135,167),(256,136,169),(257,136,170),(258,137,171),(259,137,172),(260,138,173),(261,138,174),(262,139,173),(263,139,174),(264,140,175),(265,140,174),(266,141,176),(267,141,174),(268,142,177),(269,142,174),(270,143,178),(271,143,174),(272,144,179),(273,144,174),(274,145,180),(275,145,181),(276,146,182),(277,146,181),(278,147,183),(279,147,181);
/*!40000 ALTER TABLE `citata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `citatav`
--

DROP TABLE IF EXISTS `citatav`;
/*!50001 DROP VIEW IF EXISTS `citatav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `citatav` AS SELECT 
 1 AS `codice_citata`,
 1 AS `codice_scena`,
 1 AS `codice_bibliografia_scena`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `corona`
--

DROP TABLE IF EXISTS `corona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corona` (
  `codice_corona` int NOT NULL,
  `codice_corona_nuovo` varchar(45) NOT NULL,
  `codice_corona_Gauthier` varchar(45) DEFAULT NULL,
  `tipologia_corona` varchar(255) DEFAULT NULL,
  `descrizione_corona` varchar(900) DEFAULT NULL,
  PRIMARY KEY (`codice_corona`),
  UNIQUE KEY `codice_corona_UNIQUE` (`codice_corona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corona`
--

LOCK TABLES `corona` WRITE;
/*!40000 ALTER TABLE `corona` DISABLE KEYS */;
INSERT INTO `corona` VALUES (1,'A1','not present','Lower Egypt crown','Lower Egypt crown without uraeus'),(2,'B1','B7','Atef crown','three atef crowns with ram horns, uraeus and solar discs'),(3,'E4+B1','A4+B7','headgear, Atef crown','short headgear with an uraeus on the top and a strip tied at the back. On the top of it, there are three atef crowns with ram horns, uraeus and solar discs'),(4,'H1','not present','hieroglyph sign','clump of papyrus with buds bent down'),(5,'G1','D1','headgear','vulture-shaped headgear'),(6,'G2','D5','solar disc crown','two cow horns with a solar disk between them and a throne upon it. An uraeus is on the front side of the crown.'),(7,'G1+G2','D1+D5','headgear, solar disc crown','vulture-shaped headgear. On the top of it, there are two cow horns with a solar disk between them and a throne upon it. An uraeus is on the front side of the crown'),(8,'C1','C9','Atef crown','three Atef crowns made by reeds with three solar discs at the bottom and three on the top. On each side there are two ostrich feathers with an uraeus at the bottom of each, a solar disch on the top of each. This structure is on top of two ram horns'),(9,'E1','A1','headgear','pieces of striped head cloth with lappets and uraeus on the front part'),(10,'E2','A2','headgear','round-shaped head cloth with an uraeus on front of it'),(11,'F3','B5','solar disc crown','solar disc between two ostrich feathers with two uraeus, everything on the top of two ram horns decorated with two uraeus'),(12,'E2+F3','A2+B5','solar disc crown','round-shaped head cloth with an uraeus on front of it. On the top of it, there is a solar disc between two ostrich feathers with two uraeus, everything on the top of two ram horns decorated with two uraeus '),(13,'A2','B6','Upper Egypt crown','Upper Egypt crown'),(14,'E3','A6','headgear','headgear with straight end and a braid on one side'),(15,'E4+D1','A4+A11','headgear, feathered crown','short headgear with an uraeus on the top and a strip tied at the back. On the top of it, there are two ostrich feathers are between two uraeus with a solar disc on their head. A solar disc is in front of the two feathers. The two feathers are on the top of a pair of ram horns'),(16,'D1','A11','feathered crown','two ostrich feathers are between two uraeus with a solar disc on their head. A solar disc is in front of the two feathers. The two feathers are on the top of a pair of ram horns'),(17,'E4','A4','headgear','short headgear with an uraeus on the top and a strip tied at the back'),(18,'B2','C8','Atef crown','Atef crown made by reeds between two ostrich feathers on the top of ram horns, an uraeus in front of it and two solar discs: one on the top of the crown, the other on the side of it'),(19,'E4+C1','A4+C9','headgear, Atef crown','short headgear with an uraeus on the top and a strip tied at the back. On the top of it, there are three Atef crowns made by reeds with three solar discs at the bottom and three on the top. On each side there are two ostrich feathers with an uraeus at the bottom of each, a solar disch on the top of each. This structure is on top of two ram horns '),(20,'A1+A2','B12','pshent','Upper Egypt crown on the top of the Lower Egypt crown'),(21,'E3+F4','A6+A8','headgear, solar disc crown','headgear with straight end and a braid on one side. On the top of it, there is a solar disc on the top of a crescent moon'),(22,'F4','A8','solar disc crown','solar disc on the top of a crescent moon'),(23,'E3+C1','A6+C9','headgear, Atef crown','headgear with straight end and a braid on one side. On the top of it, there are three Atef crowns made by reeds with three solar discs at the bottom and three on the top. On each side there are two ostrich feathers with an uraeus at the bottom of each, a solar disch on the top of each. This structure is on top of two ram horns'),(24,'F1','B3','solar disc crown','solar disc between two ostrich feathers on the top of two ram horns'),(25,'G3','D3','solar disc crown','solar disc between two ox horns with an uraeus on the front'),(26,'G1+G3','D1+D3','headgear, solar disc crown','vulture-shaped headgear. On th top of it, there is a solar disc between two ox hornswith an uraeus on the front'),(27,'D2','A12','feathered crown','a solar disc in front of two falcon feathers and an uraeus in front of it'),(28,'G1+A1+A2','D1+B12','headgear, pshent','vulture-shaped headgear. On the top of it, there is an Upper-Egypt crown on the top of the Lower-Egypt crown'),(29,'E3+A1+A2','A6+B12','headgear, pshent','headgear with straight end and a braid on one side. On the top of it, there is an Upper-Egypt crown on the top of the Lower-Egypt crown'),(30,'B3','B8','Atef crown','Atef crown made by a white crown between two ostrich feathers. In front of it there is an uraeus. On the side there is a solar disk'),(31,'E3u','not present','headgear','headgear with straight end and a braid on one side. On the front there is an uraeus'),(32,'A1u','B11','Lower Egypt crown','Lower Egypt crown. It has an uraeus on the front'),(33,'A1c','not present','Lower Egypt crown','Lower Egypt crown without uraeus, characterized by small circles'),(34,'E4+d','not present','headgear, destroyed','short headgear with an uraeus on the top and a strip tied at the back. The rest is destroyed'),(35,'E3+F2','A6+B4','headgear, solar disc crown','headgear with straight end and a braid on one side. On the top of it there is a diadem made by a solar disc between two ostrich feathers with two uraeus, everything on the top of two ram horn'),(36,'A3','A5','blue crown','crown with a round shape on the front and a pointy end on the top of it'),(37,'F5','not present','solar disc crown','a solar disc between two uraeus'),(38,'A3+F5','not present','blue crown, solar disc crown','blue crown. On the top of it there is a a solar disc between two uraeus'),(39,'B4','C7','Atef crown','Atef crown made by reeds between two ostrich feathers between two uraeus on the top of ram horns, an uraeus in front of it and two solar discs: one on the top of the crown, the other at the bottom'),(40,'B4nd','not present','Atef crown','Atef crown made by reeds between two ostrich feathers between two uraeus on the top of ram horns, an uraeus in front of it and a solar disc on the top of the crown'),(41,'G4','D7','solar disc crown','two ostrich feathers. In front of them a solar disc between a pair of cow horns'),(42,'G5','D6','solar disc crown','a solar disc between a pair of cow horns and an uraeus on the front. On the top of the solar disc there is the Nebet-hyt sign'),(43,'G1+G5','D1+D6','headgear, solar disc crown','vulture-shaped headgear. On the top of it there is a solar disc between a pair of cow horns and an uraeus on the front. On the top of the solar disc there is the Nebet-hyt sign'),(44,'A1u+F5','B11+not present','Lower Egypt crown, solar disc crown','Lower Egypt crown. It has an uraeus on the front. On the top of the crown there is a solar disc between two uraeus '),(45,'A1u+B4','C4','Lower Egypt crown, Atef crown','Lower Egypt crown. It has an uraeus on the front. On the top of it there is an Atef crown made by reeds between two ostrich feathers between two uraeus on the top of ram horns, an uraeus in front of it and two solar discs: one on the top of the crown, the other on the bottom '),(46,'ND','not present','-','destroyed'),(47,'G1+G4','D1+D7','headgear, feathered crown','vulture-shaped headgear. On the top of it there is a crown made by two ostrich feathers. In front of them a solar disc between a pair of cow horns'),(48,'G6','D8','Upper Egypt crown with horns','Upper Egypt crown between two thin horns and with an uraeus on the front'),(49,'D3','B1','feathered crown','two high falcon feathers on the top of a headgear decorated with a ribbon'),(50,'G1+A1+A2nu','D1+B12nu','headgear, pshent','vulture-shaped headgear. On the top of it, there is the pshent without the uraeus'),(51,'E1+ F5','A1+not present','headgear, solar disc crown','pieces of striped head cloth with lappets and uraeus on the front part. Upper, there is a a solar disc between two uraeus'),(52,'A3+F3','A5+B5','bluel crown, solar disc crown','crown with a round shape on the front and a pointy end on the top of it. On the top of it there is a solar disc between two ostrich feathers with two uraeus, everything on the top of two ram horns decorated with two uraeus'),(53,'I1+A1+A2','C1','pshent with ram horns','Upper Egypt crown on the top of the Lower Egypt crown. This combined crown is on the top of a pair of horizontal ram horns with two uraeus'),(54,'I1','not present','basic element','a pair of horizontal ram horns with two uraeus'),(55,'F2','B4','solar disc crown','diadem made by a solar disc between two ostrich feathers with two uraeus, everything on the top of two ram horns'),(56,'B5','B10','Atef crown','Atef crown made by a white crown between two ostrich ffeathers with an uraeus on the front and a pair of ram horns on the side'),(57,'D4','A13','feathered crown','a solar disc in front of two falcon feathers between thwo uraeus. The feathers are on the top of a pair of ram horns '),(58,'B5','C6','Atef crown','Atef crown made by reeds between two ostrich feathers between, an uraeus in front of it and two solar discs: one on the top of the crown, the other at the bottom'),(59,'E3','A3','headgear','short headgear with a pointy end and an uraeus on the front'),(60,'B2nu','not present','Atef crown','Atef crown made by reeds between two ostrich feathers on the top of ram horns and two solar discs: one on the top of the crown, the other on the side of it'),(61,'C2','C10','Atef crown','Atef crown made by reeds between two falcon feathers on a pair of ram horns with a solar disc between a pair of cow horns. In the middle fo the crown there is also a falcon with its wings spreaded. The two falcon feathers are between two uraei that are on the top of a lotus flower. Five solar discs are on the top of the uraei, the falcon feathers and the reeds'),(62,'F3','B5','solar disc crown','Atef crown bade by reeds between two ostrich feathers. On the top of the reeds there is a solar disc. Another one stands in the front of them. From the feathers come two uraei, crowned by tho solar discs. The Atef crown is on the top of two ram horns. Below these, there is a decorated Red Crown'),(63,'C3','C11','Atef crown','three Atef crowns made by reeds between two falcon feathers. Underneat these feathers appear two uraei with a solar disc on the top of their head. In front of each bunch of reeds there is a solar disc. On the top of each bunch of reeds there is a falcon with a solar disc on the top of its head. All of this is on the top of two ram horns. The pointy end and the curled element of the Red Crown appear behind this structure'),(64,'G2','D2','solar disc crown','a solar disc with an uraeus in front of it'),(65,'E4+F3','A4+B5','headgear, solar disc crown','solar disc between two ostrich feathers with two uraeus, everything on the top of two ram horns decorated with two uraeus. This is on the top of a short headgear decorated with a band'),(66,'D5','B2','feathered crown','on the top of a small base there are four high falcon feathers'),(67,'D6','A10','feathered crown','a single ostrich feather'),(68,'G6','D4','solar disc crown','two cow horns with a solar disc between them and a throne upon it. An uraeus is on the front side of the crown. On the top of the solar disc, there is a nw vase'),(69,'F4','A7','solar disc crown','a big solar disc with an uraeus in front of it'),(70,'G7','D10','hyerogliphic sign crown','a shrine is on the top of a rectangular base. There are three uraei: one in front of the door of the shrine, the other two on the sides of the structure, in addition to two long decorations similar to the curled ornament of the Red Crown'),(71,'A1u+B4c','C5','Lower Egypt crown, Atef crown','decorated Lower Egypt crown. It has an uraeus on the front. On the top of it there is an Atef crown made by reeds between two ostrich feathers between two uraeus on the top of ram horns, an uraeus in front of it and two solar discs: one on the top of the crown, the other on the bottom '),(73,'A1u+D4','C2','Lower Egypt crown, feathered crown','Lower Egypt crown. It has an uraeus on the front. On the top of this crown, there is another crown: a solar disc in front of two falcon feathers between thwo uraeus. The feathers are on the top of a pair of ram horns'),(74,'A3+D1','A5+A11','blue crown, feathered crown','crown with a round shape on the front and a pointy end on the top of it. On the top of this crown, there is another crown made by two ostrich feathers are between two uraeus with a solar disc on their head. A solar disc is in front of the two feathers. The two feathers are on the top of a pair of ram horns '),(75,'G8','D11','hyerogliphic sign crown','crown shaped as an Hathoric capital'),(76,'D2+F2','A12+B4','feathered crown, solar disc crown','a solar disc in front of two falcon feathers and an uraeus in front of it. This crown is combined with two high falcon feathers on the top of a headgeare decorated with a ribbon'),(77,'A3+F2','A5+B4','blue crown, solar disc crown','crown with a round shape on the front and a pointy end on the top of it. On the top of this crown, there is a diadem made by a solar disc between two ostrich feathers with two uraeus, everything on the top of two ram horns'),(78,'A1u+A2+D1','B12+A11','pshent crown, feathered crown','Upper Egypt crown on the top of the Lower Egypt crown. Behind it, there is an ostrich feather. In front of it, there are two ram horns with a solar disc'),(79,'A1u+B4','B11+C7nu','Upper Egypt crown, Atef crown','Lower Egypt crown. It has an uraeus on the front. On the top of it, there is an Atef crown made by reeds between two ostrich feathers on the top of ram horns and two solar discs: one on the top of the crown, the other at the bottom'),(80,'H2','not present','hieroglyph sign','fields'),(81,'A1u+A2+D6','B12+A10','pshent, feathered crown','Upper Egypt crown on the top of the Lower Egypt crown. Behind it, there is an ostrich feather'),(82,'A3+F1','A5+B3','blue crown, solar disc crown','crown with a round shape on the front and a pointy end on the top of it. On the top of this crown, there is a solar disc between two ostrich feathers on the top of two ram horns'),(83,'A3+D1+D4','A5+A11+A13','blue crown, feathered crown','crown with a round shape on the front and a pointy end on the top of it. On the top of this crown, there iare two ostrich feathers between two falcon feathers upon a solar disc and a pair of ram horns. In front of the feathers there is a winged solar disc. On both sides of them, there is the curled decoration of the Red Crown');
/*!40000 ALTER TABLE `corona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `coronav`
--

DROP TABLE IF EXISTS `coronav`;
/*!50001 DROP VIEW IF EXISTS `coronav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coronav` AS SELECT 
 1 AS `codice_corona`,
 1 AS `codice_corona_nuovo`,
 1 AS `codice_corona_Gauthier`,
 1 AS `tipologia_corona`,
 1 AS `descrizione_corona`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `costruito`
--

DROP TABLE IF EXISTS `costruito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costruito` (
  `codice_costruzione` int NOT NULL,
  `codice_tempio` int DEFAULT NULL,
  `codice_sovrano` int DEFAULT NULL,
  PRIMARY KEY (`codice_costruzione`),
  KEY `codice_tempio_FK_costruito_idx` (`codice_tempio`),
  KEY `codice_sovrano_FK_costruito_idx` (`codice_sovrano`),
  CONSTRAINT `codice_sovrano_FK_costruito` FOREIGN KEY (`codice_sovrano`) REFERENCES `sovrano_tempio` (`codice_sovrano`),
  CONSTRAINT `codice_tempio_FK_costruito` FOREIGN KEY (`codice_tempio`) REFERENCES `tempio` (`codice_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costruito`
--

LOCK TABLES `costruito` WRITE;
/*!40000 ALTER TABLE `costruito` DISABLE KEYS */;
INSERT INTO `costruito` VALUES (1,1,1),(2,1,23),(3,1,7),(4,2,2),(5,3,1),(6,5,9),(7,5,10),(8,5,1),(9,5,6),(10,6,11),(11,6,12),(12,6,13),(13,6,1),(14,6,6),(15,7,1),(16,8,2),(17,9,1),(18,10,3),(19,10,2),(20,11,2),(21,12,4),(22,13,14),(23,13,15),(24,13,16),(25,13,17),(26,13,2),(27,13,18),(28,13,19),(29,14,20),(30,14,21),(31,14,13),(32,14,11),(33,14,23),(34,15,24),(35,16,2),(36,17,2),(37,18,25),(38,19,26),(39,19,14),(40,20,27),(41,20,26),(42,20,14),(43,20,15),(44,21,1),(45,22,14);
/*!40000 ALTER TABLE `costruito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `costruitov`
--

DROP TABLE IF EXISTS `costruitov`;
/*!50001 DROP VIEW IF EXISTS `costruitov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `costruitov` AS SELECT 
 1 AS `codice_costruzione`,
 1 AS `codice_tempio`,
 1 AS `codice_sovrano`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dedicato`
--

DROP TABLE IF EXISTS `dedicato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dedicato` (
  `codice_dedicato` int NOT NULL,
  `codice_tempio` int DEFAULT NULL,
  `codice_divinita` int DEFAULT NULL,
  PRIMARY KEY (`codice_dedicato`),
  KEY `codice_tempio_FK_dedicato_idx` (`codice_tempio`),
  KEY `codice_divinita_FK_dedicato_idx` (`codice_divinita`),
  CONSTRAINT `codice_divinita_FK_dedicato` FOREIGN KEY (`codice_divinita`) REFERENCES `divinita_elenco` (`codice_divinita`),
  CONSTRAINT `codice_tempio_FK_dedicato` FOREIGN KEY (`codice_tempio`) REFERENCES `tempio` (`codice_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dedicato`
--

LOCK TABLES `dedicato` WRITE;
/*!40000 ALTER TABLE `dedicato` DISABLE KEYS */;
INSERT INTO `dedicato` VALUES (1,1,1),(2,3,2),(3,5,4),(4,6,3),(5,6,5),(7,7,3),(8,7,6),(9,7,7),(10,8,8),(11,9,3),(12,9,9),(13,10,10),(14,10,11),(15,11,11),(16,12,12),(17,13,8),(18,13,11),(19,14,3),(20,15,13),(21,15,14),(22,15,15),(23,15,16),(24,16,17),(25,16,8),(26,16,18),(27,16,19),(28,17,16),(29,18,0),(30,19,20),(31,19,21),(32,20,18),(33,21,3),(34,22,11),(35,22,10),(36,22,22);
/*!40000 ALTER TABLE `dedicato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dedicatov`
--

DROP TABLE IF EXISTS `dedicatov`;
/*!50001 DROP VIEW IF EXISTS `dedicatov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dedicatov` AS SELECT 
 1 AS `codice_dedicato`,
 1 AS `codice_tempio`,
 1 AS `codice_divinita`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dinastia`
--

DROP TABLE IF EXISTS `dinastia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dinastia` (
  `codice_dinastia` int NOT NULL,
  `nome_dinastia` varchar(45) DEFAULT NULL,
  `anni` varchar(45) DEFAULT NULL,
  `codice_epoca` int DEFAULT NULL,
  PRIMARY KEY (`codice_dinastia`),
  KEY `codice_epoca_FK_dinastia_idx` (`codice_epoca`),
  CONSTRAINT `codice_epoca_FK_dinastia` FOREIGN KEY (`codice_epoca`) REFERENCES `epoca` (`codice_epoca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinastia`
--

LOCK TABLES `dinastia` WRITE;
/*!40000 ALTER TABLE `dinastia` DISABLE KEYS */;
INSERT INTO `dinastia` VALUES (1,'First Dynasty','3150–2890 BC',10),(2,'Second Dynasty','2890–2686 BC',10),(3,'Third Dynasty','2686–2613 BC',1),(4,'Fourth Dynasty','2613–2498 BC',1),(5,'Fifth Dynasty','2498–2345 BC',1),(6,'Sixth Dynasty','2345–2181 BC',1),(7,'Seventh Dynasty','2181 BC',2),(8,'Eighth Dynasty','2181–2160 BC',2),(9,'Ninth Dynasty','2160–2130 BC',2),(10,'Tenth Dynasty','2130–2040 BC',2),(11,'Eleventh Dynasty','2134–1991 BC',2),(12,'Twelfth Dynasty','1991–1803 BC',3),(13,'Thirteenth Dynasty','1803–1649 BC',3),(14,'Fourteenth Dynasty','1705–1690 BC',4),(15,'Fifteenth Dynasty (Hyksos)','1674–1535 BC',4),(16,'Sixteenth Dynasty','1660–1600 BC',4),(17,'Abydos Dynasty','1650–1600 BC',4),(18,'Seventeenth Dynasty','1580–1549 BC',4),(19,'Eighteenth Dynasty','1549–1292 BC',5),(20,'Nineteenth Dynasty','1292–1189 BC',5),(21,'Twentieth Dynasty','1189–1077 BC',5),(22,'Twenty-first Dynasty','1069–945 BC',6),(23,'Twenty-second Dynasty','945–720 BC',6),(24,'Twenty-third Dynasty','837–728 BC',6),(25,'Twenty-fourth Dynasty','732–720 BC',6),(26,'Twenty-fifth Dynasty (Nubian)','732–653 BC',6),(27,'Twenty-sixth Dynasty','672–525 BC',7),(28,'Twenty-seventh Dynasty','525–404 BC',7),(29,'Twenty-eighth Dynasty','404–398 BC',7),(30,'Twenty-ninth Dynasty','398–380 BC',7),(31,'Thirtieth Dynasty','380–343 BC',7),(32,'Thirty-first Dynasty','343–332 BC',7),(33,'Thirty-second Dynasty','332–305 BC',8),(34,'Thirty-third Dynasty','305–30 BC',8),(35,'Thirty-fourth Dynasty','30 BC – 313 AD',9);
/*!40000 ALTER TABLE `dinastia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dinastiav`
--

DROP TABLE IF EXISTS `dinastiav`;
/*!50001 DROP VIEW IF EXISTS `dinastiav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dinastiav` AS SELECT 
 1 AS `codice_dinastia`,
 1 AS `nome_dinastia`,
 1 AS `anni`,
 1 AS `codice_epoca`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `divinita_elenco`
--

DROP TABLE IF EXISTS `divinita_elenco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divinita_elenco` (
  `codice_divinita` int NOT NULL,
  `nome_divinita` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codice_divinita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divinita_elenco`
--

LOCK TABLES `divinita_elenco` WRITE;
/*!40000 ALTER TABLE `divinita_elenco` DISABLE KEYS */;
INSERT INTO `divinita_elenco` VALUES (0,'-'),(1,'Merur'),(2,'Osiris'),(3,'Isis'),(4,'Thot'),(5,'Amun of Debod'),(6,'Pedesi'),(7,'Pihor'),(8,'Re-Horakhty'),(9,'Serapis'),(10,'Horus'),(11,'Amun'),(12,'Aten'),(13,'Ptah'),(14,'Ptah-Tatenen'),(15,'Hathor'),(16,'Ramesses II'),(17,'Amun-Re'),(18,'Khnum'),(19,'Anuket'),(20,'Dedun'),(21,'Sesostris III'),(22,'Satet'),(23,'Uadjet'),(24,'Nephthy'),(25,'Jj-m-hetep'),(26,'Hor-nedj-itef'),(27,'Merur the young'),(28,'Hathor'),(29,'Tenenet'),(30,'Hor-pa-hred'),(31,'Mut'),(32,'Tetun');
/*!40000 ALTER TABLE `divinita_elenco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divinita_personaggio`
--

DROP TABLE IF EXISTS `divinita_personaggio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `divinita_personaggio` (
  `codice_divinita` int NOT NULL,
  `codice_personaggio_divinità` int NOT NULL,
  `nome_divinita` varchar(45) DEFAULT NULL,
  `codice_dono_divinita` int DEFAULT NULL,
  `codice_scena` int DEFAULT NULL,
  PRIMARY KEY (`codice_personaggio_divinità`,`codice_divinita`),
  KEY `codice_dono_FK_divinita_idx` (`codice_dono_divinita`),
  KEY `codice_scena_FK_divinita_idx` (`codice_scena`),
  CONSTRAINT `codice_dono_FK_divinita` FOREIGN KEY (`codice_dono_divinita`) REFERENCES `dono` (`codice_dono`),
  CONSTRAINT `codice_personaggio_FK_divinita` FOREIGN KEY (`codice_personaggio_divinità`) REFERENCES `personaggio` (`codice_personaggio`),
  CONSTRAINT `codice_scena_FK_divinita` FOREIGN KEY (`codice_scena`) REFERENCES `scena` (`codice_scena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divinita_personaggio`
--

LOCK TABLES `divinita_personaggio` WRITE;
/*!40000 ALTER TABLE `divinita_personaggio` DISABLE KEYS */;
INSERT INTO `divinita_personaggio` VALUES (1,2,'Osiris',1,1),(2,3,'Merur',2,1),(3,18,'Merur',1,1),(4,20,'Isis',3,4),(5,21,'Merur',4,4),(6,36,'?',1,4),(7,38,'Isis',5,7),(8,39,'Merur',4,7),(9,41,'Merur the Young ?',1,8),(10,43,'Osiris',4,9),(11,44,'Isis',6,9),(12,45,'Merur',7,9),(13,47,'Merur the Young',5,10),(14,48,'Nekhbet ?',8,10),(15,49,'Uadjet',9,10),(16,51,'Merur the Young',7,11),(17,52,'Uadjet',10,11),(18,54,'Merur',11,12),(19,55,'Uadjet',12,12),(20,57,'Osiris',4,13),(21,58,'Isis',13,13),(22,60,'Osiris',4,14),(23,61,'Isis',13,14),(24,63,'Merur',14,15),(25,64,'Uadjet',15,15),(26,66,'Hor-nedj-jtef',16,16),(27,67,'Hathor',17,16),(28,68,'Merur the Young',4,16),(29,70,'Amon Ra Hor-em-ahet',5,17),(30,71,'Tanenet',18,17),(31,72,'Merur',4,17),(32,74,'Isis',19,18),(33,75,'Hor-pa-hred',20,18),(34,77,'Merur the Young',21,19),(35,78,'Uadjet',15,19),(36,80,'Merur',5,20),(37,81,'Uadjet',23,20),(38,83,'Merur',24,21),(39,84,'Merur the Young',25,21),(40,86,'Merur the Young ?',26,22),(41,87,'Uadjet',27,22),(42,90,'Osiris',28,23),(43,91,'Isis',29,23),(44,92,'Nephthys',3,23),(45,94,'Hor-nedj-itef',30,24),(46,95,'Hathor',31,24),(47,96,'Merur',32,24),(48,98,'Isis',33,25),(49,99,'Hor-pa-hred',34,25),(50,101,'Merur',32,26),(51,102,'Uadjet',35,26),(52,104,'Isis',36,27),(53,105,'Hor-nedj-itef',37,27),(54,107,'Isis',38,28),(55,108,'Hathor',39,28),(56,110,'Merur',40,NULL),(57,111,'Uadjet',22,NULL),(58,113,'Khnum',42,NULL),(59,114,'Satet',43,NULL),(60,115,'Merur',34,NULL),(61,117,'Amon-Ra',41,NULL),(62,118,'Mut',42,NULL),(63,119,'Hor-nedj-itef',3,NULL),(64,121,'Merur',1,NULL),(65,122,'Uadjet',22,NULL),(66,124,'Merur the young',45,NULL),(67,125,'Uadjet?',46,NULL),(68,127,'Merur',47,NULL),(69,128,'Uadjet',41,NULL),(70,130,'destroyed',22,NULL),(71,132,'Osiris',22,NULL),(72,134,'Hor-nedj-itef',48,NULL),(73,136,'Nephthys',1,NULL),(74,138,'Hor-nedj-itef',1,NULL),(75,140,'Osiris',1,NULL),(76,141,'Isis',1,NULL),(77,143,'Merur',49,NULL),(78,145,'Merur',50,NULL),(79,147,'Merur',1,NULL),(80,149,'Merur',51,NULL),(81,151,'Merur',1,NULL),(82,153,'Merur',1,NULL),(83,154,'Uadjet',1,NULL),(84,156,'Osiris',41,NULL),(85,157,'Isis',22,NULL),(86,159,'Merur',53,NULL),(87,160,'Uadjet',52,NULL),(88,162,'Osiris',45,NULL),(89,163,'Isi',54,NULL),(90,164,'Hor-nedj-itef',55,NULL),(91,175,'Merur',24,NULL),(92,176,'Merur the young',25,NULL),(93,177,'Uadjet',56,NULL),(94,195,'Osiris',1,NULL),(95,196,'Merur',57,NULL),(96,198,'Tetun',58,NULL),(97,200,'Osiris',59,NULL),(98,201,'Isis',15,NULL),(99,202,'Merur',60,NULL),(100,204,'Jj-m-hetep',61,NULL),(101,206,'Isis',62,NULL),(102,207,'Merur',63,NULL),(103,209,'Isis',15,NULL),(104,210,'Satet',64,NULL),(105,212,'Osiris',45,NULL),(106,213,'Isis',65,NULL),(107,214,'Hor-nedj-itef',66,NULL),(108,215,'Merur',67,NULL),(109,216,'Uadjet',38,NULL),(110,218,'Osiris',1,NULL),(111,219,'Isis',42,NULL),(112,221,'Iri-hemes-nefer',69,NULL),(113,222,'Tefnut',34,NULL),(114,224,'Merur',11,NULL),(115,225,'Iri-hemes-nefer',70,NULL),(116,227,'Merur',24,NULL),(117,228,'Merur the Young',25,NULL),(118,230,'Merur',24,NULL),(119,231,'Merur the Young',25,NULL),(120,233,'Merur',15,NULL),(121,235,'Merur',71,NULL),(122,236,'Uadjet',63,NULL),(123,238,'Merur',55,NULL),(124,239,'Thot',1,NULL),(125,241,'Merur',8,NULL),(126,242,'Amun',72,NULL),(127,244,'Khnum',68,NULL),(128,245,'Satet',64,NULL),(129,247,'Amun of Napata',73,NULL),(130,248,'Amun of Primis',74,NULL),(131,250,'Merur the Young',75,NULL),(132,252,'Merur',32,NULL),(133,253,'Uadjet',56,NULL),(134,255,'Merur',1,NULL),(135,257,'Osiris',22,NULL),(136,258,'Isis',1,NULL),(137,260,'Horus',1,NULL),(138,262,'Merur',22,NULL),(139,263,'Uadjet',1,NULL),(140,265,'?',22,NULL),(141,267,'Isis',22,NULL),(142,269,'Osiris',1,NULL),(143,271,'Pharaoh of Bigge',1,NULL),(144,273,'Isis',1,NULL),(145,275,'Osiris',22,NULL),(146,276,'Isis',1,NULL),(147,277,'Hor-nedj-itef',1,NULL),(148,279,'?',22,NULL),(149,281,'Merur',22,NULL),(150,283,'?',22,NULL),(151,285,'Shu',1,NULL),(152,287,'Merur',1,NULL),(153,289,'Merur',1,NULL),(154,290,'Merur',1,NULL),(155,291,'Uadjet',1,NULL),(156,293,'Merur',76,NULL),(157,294,'Merur the Young',1,NULL),(158,295,'Uadjet',1,NULL),(159,297,'Osiris',77,NULL),(160,298,'Isis',1,NULL),(161,299,'Hor-nedj-itef',1,NULL),(162,301,'Shu',1,NULL),(163,302,'Tefnut',70,NULL),(164,304,'Duat-netjer',11,NULL),(165,305,'Nut',1,NULL),(166,306,'Merur',1,NULL),(167,308,'Hor-nedj-itef',78,NULL),(168,309,'Merur',1,NULL),(169,310,'Uadjet',1,NULL),(170,312,'Osiris',53,NULL),(171,313,'Merur',1,NULL),(172,315,'Hor-em-akhet',79,NULL),(173,316,'Hathor',1,NULL),(174,318,'Osiris',80,NULL),(175,319,'Isis',80,NULL),(176,320,'Horus',80,NULL),(177,322,'Isis',80,NULL),(178,323,'Merur the Young',80,NULL),(179,325,'Isis',80,NULL),(180,327,'Merur',81,NULL),(181,328,'Uadjet',82,NULL),(182,330,'Merur',83,NULL),(183,332,'Khnum',1,NULL),(184,333,'Hathor',1,NULL),(185,335,'Merur',1,NULL),(186,337,'Min',1,NULL),(187,338,'Isis',1,NULL),(188,339,'Merur',1,NULL),(189,341,'Merur',1,NULL),(190,342,'Uadjet',1,NULL),(191,344,'Merur',22,NULL),(192,346,'Merur',22,NULL),(192,347,'Uadjet',1,NULL),(193,349,'Isis',80,NULL),(194,350,'Mut?',80,NULL),(195,352,'Khnum',80,NULL),(196,354,'Ptah',80,NULL),(197,355,'Sekhmet',80,NULL),(198,356,'Merur',80,NULL),(199,358,'Thot',80,NULL),(200,359,'Safekh-abui?',80,NULL),(201,360,'Merur',1,NULL),(202,362,'Merur',84,NULL),(203,364,'Merur',85,NULL),(204,365,'Uadjet',1,NULL),(205,367,'Hor-pa-hred',22,NULL),(206,368,'Merur?',53,NULL),(207,369,'?',86,NULL),(208,371,'Isis',87,NULL),(209,372,'Merur',22,NULL),(210,374,'Osiris',1,NULL),(211,375,'Isis',1,NULL),(212,376,'Merur',88,NULL),(213,378,'Merur',89,NULL),(214,379,'Isis',90,NULL),(215,381,'Isis',1,NULL),(216,382,'Merur',1,NULL),(217,383,'Horus',1,NULL),(218,385,'Hor-em-akhet',1,NULL),(219,387,'Min',1,NULL),(220,388,'Merur',1,NULL),(221,390,'Horus of Edfu',65,NULL),(222,391,'Merur',91,NULL),(223,393,'Hathor',1,NULL),(224,394,'Hor-pa-hred',1,NULL),(225,395,'sphinx',80,NULL),(226,397,'Isis',80,NULL),(227,398,'Merur',80,NULL),(228,399,'Horus?',80,NULL),(229,400,'?',80,NULL),(230,402,'Ba bird',80,NULL),(231,403,'Isis',22,NULL),(232,405,'Amun',22,NULL),(233,406,'Thot',22,NULL),(234,407,'Khonsu?',22,NULL),(235,409,'Merur the Young',80,NULL),(236,410,'Hathor?',80,NULL),(237,413,'Osiris',22,NULL),(238,414,'Merur',22,NULL),(239,416,'Merur',22,NULL),(240,419,'Horus',80,NULL),(241,420,'Shu',80,NULL),(242,421,'Tefnut',80,NULL),(243,423,'Merur',22,NULL),(244,424,'Uadjet?',22,NULL),(245,426,'Merur',1,NULL),(246,428,'Osiris',22,NULL),(247,429,'Isis',22,NULL),(248,431,'Horus',1,NULL),(249,433,'Merur',22,NULL),(250,434,'Uadjet',22,NULL),(251,436,'Merur',81,NULL),(252,438,'Hor-nedj-itef',22,NULL),(253,440,'Horus',1,NULL),(254,442,'Merur',1,NULL),(255,444,'Merur the Young',22,NULL),(256,446,'Osiris',1,NULL),(257,448,'Isis',93,NULL),(258,450,'Osiris',1,NULL),(259,451,'Hor-nedj-itef',22,NULL),(260,455,'Merur the Young',22,NULL),(261,456,'Isis',1,NULL),(262,458,'Merur?',80,NULL),(263,459,'?',80,NULL),(264,460,'?',80,NULL),(265,462,'Isis',80,NULL),(266,463,'Horus',80,NULL),(267,464,'Merur',80,NULL),(268,466,'Osiris',80,NULL),(269,467,'Isis',80,NULL),(270,468,'Horus',80,NULL);
/*!40000 ALTER TABLE `divinita_personaggio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `divinita_personaggiov`
--

DROP TABLE IF EXISTS `divinita_personaggiov`;
/*!50001 DROP VIEW IF EXISTS `divinita_personaggiov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `divinita_personaggiov` AS SELECT 
 1 AS `codice_divinita`,
 1 AS `codice_personaggio_divinità`,
 1 AS `nome_divinita`,
 1 AS `codice_dono_divinita`,
 1 AS `codice_scena`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dono`
--

DROP TABLE IF EXISTS `dono`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dono` (
  `codice_dono` int NOT NULL,
  `nome_dono` varchar(45) DEFAULT NULL,
  `verbo_dono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codice_dono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dono`
--

LOCK TABLES `dono` WRITE;
/*!40000 ALTER TABLE `dono` DISABLE KEYS */;
INSERT INTO `dono` VALUES (1,'no gift','no gift'),(2,'ḳnt','dj'),(3,'ꜥnḫ wꜣs nbw snb nbw','dj'),(4,'ḫꜣswt nbwt','dj'),(5,'tꜣwy nbwy','dj'),(6,'ꜥnḫ wꜣs nbw','dj'),(7,'prw m Pwnt','dj'),(8,'ꜣwt-jb nbw snb nbw','dj'),(9,'nsjwt n Ḥr n P','dj'),(10,'ḳnt mj sꜣ Ꜣst','dj'),(11,'tꜣ-nṯr','dj'),(12,'ḥbw-sd ꜥšꜣt','dj'),(13,'nsjwt n sꜣ Ḥr-Bḥdtj','dj'),(14,'wnt-ḥr','dj'),(15,'ꜥnḫ nb snb nbw','dj'),(16,'šmꜥs mḥws','dj'),(17,'nḫt nbw','dj'),(18,'ꜣwt-jb nbw','dj'),(19,'sḫt','dj'),(20,'ḥḥ','dj'),(21,'mnmnt nbt','dj'),(22,'destroyed','destroyed'),(23,'ꜥnḫ wꜣs nbw - the rest is destroyed','dj'),(24,'tḫ wḥm.k tḫ n ḫrj','dj'),(25,'ḳnj nḫt r ḫpš.k','dj'),(26,'nsywt n Rꜥ n pt (sic)','dj'),(27,'tꜣw nbw ẖr st ḥr-nb','dj'),(28,'ꜥẖmw m rnpt m ḥtp','dj'),(29,'ḫꜣswt rsjwt ḫr jm.sn','dj'),(30,'ḳnt nb nḫt nb','dj'),(31,'ꜥšꜣt mrwt.k ḫr ḥr-nb','dj'),(32,'snb nbw ꜣwt-jb nbw','dj'),(33,'rwḏ ḥr st tꜣwy','dj'),(34,'prw nbw m ꜣḫt','dj'),(35,'pr(w) nb(w) m tꜣ-nṯr','dj'),(36,'nsjwt n Ḥr-Bḥdtj n P','dj'),(37,'tꜣwy nbwy ḫr st ḥr-nb','dj'),(38,'nsjwt n sꜣ Ḥr','dj'),(39,'ḥsꜣ ḫr ṯꜣjw','dj'),(40,'mrwt.k ḫr ḥr-nb','dj'),(41,'partially destroyed','partially destroyed'),(42,'ḥꜥpy pr m qrtj','dj'),(43,'rwḏw nbw ḥr st tꜣ','dj'),(44,'ḳbḥwt ḫr ṯꜣjw - tꜣ ḏr.f','dj'),(45,'mrwt ḫr ḥr-nb','dj'),(46,'ꜥšꜣt šfyt.k ḫr tꜣwy nbwy','dj'),(47,'šfyt.k m tꜣwy nbwy','dj'),(48,'rsy mḥt m jꜣw','dj'),(49,'sḫt ḫr kꜣw.s','dj'),(50,'tꜣ-nṯr ḫr prjt jm.f','dj'),(51,'nḫt wḫm n.k','dj'),(52,'kꜣw - destroyed','dj'),(53,'destroyed','dj'),(54,'ꜥnḫ nbw snb','dj'),(55,'kꜣw r mr jb.k','dj'),(56,'prw nbw m tꜣ-nṯr','dj'),(57,'kꜣw nbw r sḥtp jb.k','dj'),(58,'ḳbḥ prj jm.j','mn'),(59,'rdwy','dj'),(60,'kꜣw jt.j ḏfꜣw ꜥšꜣw','dj'),(61,'destroyed','dj'),(62,'sbꜥḥj ꜥꜣbt nbt','dj'),(63,'kꜣw nbw - destroyed','dj'),(64,'šnw n jtn','dj'),(65,'ḫꜣswt nbwt ẖr ṯbwty.k','dj'),(66,'ḳnj nb nḫt nb','dj'),(67,'pḥty n Rꜥ n pt','dj'),(68,'ḥꜥpy m qrtj','dj'),(69,'mrwt (?) ḫr ḥr-nb','dj'),(70,'tꜣwy nbwy m ḥtp','dj'),(71,'jdb Ḥr sdw m ꜥꜣbt nbt','dj'),(72,'ḥtpw-nṯrw nbw','dj'),(73,'Mꜣꜥt mrjt.k','dj'),(74,'ḥst nṯr m ḥry-jb','dj'),(75,'tꜣ-nṯr ḫr jmj.f nb','dj'),(76,'mrwt.f nbw','dj'),(77,'kꜣw n kꜣ.k','dj'),(78,'wbn n šnw n jtn','dj'),(79,'swn ḫr jmj.f','dj'),(80,'no inscriptions','no inscriptions'),(81,'Pwnt ḫr jmj.f tꜣ-nṯr ḫr prt jm.f','dj'),(82,'destroyed - tꜣ-nṯr ḫr prt jm.f','destroyed'),(83,'rsj mḫt jmnt jꜣbtt','dj'),(84,'ḥswt ḫr tꜣjw ḥmwt','dj'),(85,'tꜣwy nbwy m ḥtp wn-ḥr.k nṯr pn šps','dj'),(86,'ꜥḫt sḫm - destroyed','dj'),(87,'šmꜥ mḥw ḫr - destroyed','dj'),(88,'ḥḥ','destroyed'),(89,'ḥtp n nṯrw ḫꜥ n.f nbw','jr'),(90,'destroyed - jw-k mn ḥr nst nt Rꜥ','smn'),(91,'tꜣwy nbwy ḥr mw','dj'),(92,'no inscriptions','no inscriptions'),(93,'tꜣwy nbwy ḥr ṯbwty.k','dj');
/*!40000 ALTER TABLE `dono` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `donov`
--

DROP TABLE IF EXISTS `donov`;
/*!50001 DROP VIEW IF EXISTS `donov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `donov` AS SELECT 
 1 AS `codice_dono`,
 1 AS `nome_dono`,
 1 AS `verbo_dono`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `elemento_architettonico`
--

DROP TABLE IF EXISTS `elemento_architettonico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elemento_architettonico` (
  `codice_e_a` int NOT NULL,
  `tipo_e_a` varchar(255) DEFAULT NULL COMMENT 'Se è parete, oppure se di una porta è architrave o stipite.',
  `orientamento_spaziale` varchar(255) DEFAULT NULL COMMENT 'Se si trova a nord, sud, est o ovest della stanza.',
  `epoca_realizzazione_e_a` varchar(255) DEFAULT NULL,
  `committente_e_a` varchar(255) DEFAULT NULL,
  `codice_ambiente` int DEFAULT NULL,
  PRIMARY KEY (`codice_e_a`),
  UNIQUE KEY `codice_e_a_UNIQUE` (`codice_e_a`),
  KEY `codice_ambiente_FK_e_a_idx` (`codice_ambiente`),
  CONSTRAINT `codice_ambiente_FK_e_a` FOREIGN KEY (`codice_ambiente`) REFERENCES `ambiente` (`codice_ambiente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elemento_architettonico`
--

LOCK TABLES `elemento_architettonico` WRITE;
/*!40000 ALTER TABLE `elemento_architettonico` DISABLE KEYS */;
INSERT INTO `elemento_architettonico` VALUES (1,'wall','west','Roman Period','Augustus',1),(2,'wall','south','Roman Period','Augustus',1),(3,'wall','east','Roman Period','Augustus',1),(4,'wall','north','Roman Period','Augustus',1),(5,'door','external facade','Roman Period','Augustus',2),(6,'door','inner facade','Roman Period','Augustus',2),(7,'wall','west','Roman Period','Augustus',2),(8,'wall','south','Roman Period','Augustus',2),(9,'wall','east','Roman Period','Augustus',2),(10,'wall','north','Roman Period','Augustus',2),(11,'door','external facade','Roman Period','Augustus',3),(12,'door','inner facade','Roman Period','Augustus',3),(13,'wall','west','Roman Period','Augustus',3),(14,'wall','north','Roman Period','Augustus',3),(15,'wall','east','Roman Period','Augustus',3),(16,'wall','south','Roman Period','Augustus',3),(17,'wall','southern wing','Roman Period','Augustus',4),(18,'wall','northern wing','Roman Period','Augustus',4),(19,'door','external facade','Roman Period','Augustus',5),(20,'door','thickness','Roman Period','Augustus',5),(21,'door','inner facade','Roman Period','Augustus',5),(22,'wall','external hallway','Roman Period','Augustus',6);
/*!40000 ALTER TABLE `elemento_architettonico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `elemento_architettonicov`
--

DROP TABLE IF EXISTS `elemento_architettonicov`;
/*!50001 DROP VIEW IF EXISTS `elemento_architettonicov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `elemento_architettonicov` AS SELECT 
 1 AS `codice_e_a`,
 1 AS `tipo_e_a`,
 1 AS `orientamento_spaziale`,
 1 AS `epoca_realizzazione_e_a`,
 1 AS `committente_e_a`,
 1 AS `codice_ambiente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `epiteto`
--

DROP TABLE IF EXISTS `epiteto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epiteto` (
  `codice_epiteto` int NOT NULL,
  `epiteto_traslitterato` varchar(255) DEFAULT NULL,
  `epiteto_tradotto` varchar(255) DEFAULT NULL,
  `epiteto_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codice_epiteto`),
  UNIQUE KEY `codice_epiteto_UNIQUE` (`codice_epiteto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epiteto`
--

LOCK TABLES `epiteto` WRITE;
/*!40000 ALTER TABLE `epiteto` DISABLE KEYS */;
INSERT INTO `epiteto` VALUES (1,'Wnnfr mꜣꜥ-ḫrw','Unnefer true of voice',NULL),(2,'nṯr-ꜥꜣ','great god',NULL),(3,'nb-Jꜣt-wꜥbt','lord of Abaton',NULL),(4,'nsw-bjty','king of the Upper and Lower Egypt',NULL),(5,'ḥḳꜣ','ruler',NULL),(6,'nb-mswt','lord of the births',NULL),(7,'jty-n-nṯrw-nbw','ruler of all the gods',NULL),(8,'pr-m-ẖt-jꜥrt-m-ḥꜢt.f','the one who comes out from the womb with the uraeus on his forehead',NULL),(9,'jr-jtn-m-ẖt-mwt.f','the one who creates the solar disc inside the womb of his mother',NULL),(10,'nb-Trms','lord of Kalabsha',NULL),(11,'dj-ꜥnḫ','given life',NULL),(12,'nbt-Jꜣt-wꜥbt','lady of Abaton',NULL),(13,'ḥnwt','mistress',NULL),(14,'nbt-Jrḳ','lady of File',NULL),(15,'nbt-ḫꜣswt-rsywt','lady of the southern foreign lands',NULL),(16,'ḥkꜣt-m-šnw-n-jtn','ruler nearby the solar disc',NULL),(17,'ꜥꜢ-pḥty-nḫt','the one who has a mighty strength',NULL),(18,'smꜣ-ḫfty','the one who kills the enemy',NULL),(19,'nswt-nṯrw','king of the gods',NULL),(20,'nb-Jrḳ','lord of Philae',NULL),(21,'ḥwn-nfr','perfect child',NULL),(22,'bnr-mrwt','sweet of love',NULL),(23,'wr-p-ḫnty','great chief',NULL),(24,'wr-mrwt','the one who is very popular',NULL),(25,'ꜥšꜢt-ḫprw','the one who has many shapes',NULL),(26,'jr-mr.f','the one who acts as he desires',NULL),(27,'jrt-Rꜥ','eye of Re',NULL),(28,'nbt-pt','lady of the sky',NULL),(29,'ḥnwt-nṯrw-nbw','mistress of all the gods',NULL),(30,'incomplete','incomplete',NULL),(31,'nbt-P-Dp','lady of Buto',NULL),(32,'jꜥrt-n-jꜢbt-m-tp-n-ḥm','uraeus snake that is on the top of the head of the majesty',NULL),(33,'wr-ḫnty-Trms','great chief of Kalabsha',NULL),(34,'destroyed','destroyed',NULL),(35,'mwt-nṯr','mother of the god',NULL),(36,'nsw-nṯrw','king of gods',NULL),(37,'sḫm-šps','august divine power',NULL),(39,'nb-ḥḏt','lord of the White Crown',NULL),(40,'dgj-ḫꜥ-m.s-nṯr-nb','of which every god sees the appearance thanks to her',NULL),(41,'jty-nfr','perfect ruler',NULL),(42,'nb-gsw-prw','lord of the temple',NULL),(43,'pꜥpꜥ-m-ḫnmt-wrt','the one who is born from the great unifier',NULL),(44,'snn-n-nbwt','image of the golden one',NULL),(45,'nbtj-m-šmsw.f','in his following there are the two milk cows',NULL),(46,'ḥnwt-nfrt','perfect mistress',NULL),(47,'ḫntyt-Trms','chief of Kalabsha',NULL),(48,'ḥry-jb-Jrḳ','the one who stays in the middle of Philae',NULL),(49,'nbt-Snmt','lady of Bigge',NULL),(50,'špst-wsrt','magnificent powerful',NULL),(51,'nbt-pr-ms','lady of the birth house',NULL),(52,'nb-Jwnw-šmꜥ','lord of the southern Heliopolis',NULL),(53,'ḫnty-Jꜣt-wꜥbt','chief of Abaton',NULL),(54,'ḥry-jb-Jwnw-šmꜥ','the one who stays in the middle of southern Heliopolis',NULL),(55,'nb-snḏ','lord of the fear',NULL),(56,'ꜥꜣ-šfyt','the one who is very respected',NULL),(57,'sꜣ-Ꜣst','son of Isis',NULL),(58,'ꜥꜣ-wr-tpy-n-Wsjr','the extremely great and firstborn of Osiris',NULL),(59,'ḫnty-tꜣ-nṯr','head of the land of the gods',NULL),(60,'nbt-P','lady of Buto',NULL),(61,'nfrw-ḥr','the one with a beautiful face',NULL),(62,'wbn-m-Bꜣẖw','the one that rises from the eastern mountain',NULL),(63,'ḫnty-jꜣbtt','head of the East',NULL),(64,'ḳbḥt-nfrt-nt-sn.s-Wsjr-tp-hrww-mḏ-nb','the one who makes the perfect libations for her brother Osiris at the beginning of every ten days','this epithet appeares only in this scene of the temple of Kalabsha'),(65,'snt-nṯr','sister of the god',NULL),(66,'ḥrjt-jb-jꜣt-wꜥb','the one who resides in Abaton',NULL),(67,'mnḫt-nṯrw','excellence of the gods',NULL),(68,'sꜣ-sms-n-Wsjr','the eldest son of Osiris',NULL),(69,'wrt','the great',NULL),(70,'ḫntyt','the one who stays ahead',NULL),(71,'jty-wr','the great king',NULL),(72,'ḥry-jb-ḫꜣswt','the one who stays in the middle of the desert',NULL),(73,'ẖrd-šps','the magnificent child',NULL),(74,'jwꜥ-n-sꜣ-ꜣst','the heir of the son of Isis',NULL),(75,'mwt-nṯr','mother of the god',NULL),(76,'sf-šps','the magnificent child',NULL),(77,'wr-snḏ','the one who enjoys great respect',NULL),(78,'jj-m-tꜣ-nṯr','the one who comes from the land of the god',NULL),(79,'špst-wsrt-m-ḫꜣswt-rsywt','the magnificent and great in the foreign lands','thie epithet belongs only to Isis and is present only in the temple of Kalabsha'),(80,'pꜥpꜥt-m-Jwnt','the one who is born in Dendera',NULL),(81,'jr-st.s-m-Snmt','the one who takes her place in Bigge',NULL),(82,'gsw-prw-nṯrw-grg.w-m-rn.s','the one in the name of god\'s temples were established',NULL),(83,'jfdwt-nt-tꜣ-ẖr-wḏt.s','the four regions of the world are under her command',NULL),(84,'sꜣ-Wsjr','son of Osiris',NULL),(85,'jr-st.s-m-Jrḳ','the one who takes her place in Philae','this epithet appeares only in the temple of Kalabsha'),(86,'nswt-bjtyt','queen',NULL),(87,'wr-šfyt','the one with the great appaerance',NULL),(88,'nb-ḳbḥw','lord of the libations',NULL),(89,'ḫnty-Snmt','head of Bigge',NULL),(90,'wr-mrwt-m-Ꜣbw','the one with great popularity from Elephantine',NULL),(91,'mḳmḳ-m-Jꜣt-wꜥbt','the one who rests in Abaton',NULL),(92,'ꜥꜣt','the great',NULL),(93,'nbt-Ꜣbw','lady of Elephantine',NULL),(94,'ḥry-jb-Jꜣt-wꜥbt','the one who stays in the middle of Abaton',NULL),(95,'nbt-Išrw','lady of Isheru waters',NULL),(96,'snfr-tꜣwy-m-prt.f-m-Bꜣẖw','the one that makes the Two Lands perfect when he comes from the western mountains',NULL),(97,'jr-nḫt-n-ꜥnḫw','the one who generates the strength for the livings','this epithet appeares only in this scene'),(98,'nḫt-ḫpš','the one with a strong arm',NULL),(99,'jj-m-ꜥš-n.f','the one who comes from the one who calls him',NULL),(100,'wbn-m-tꜣwy-nṯrw','the one who comes from the Two Lands of the gods','this epithet appeares only in this scene'),(101,'jty','lord',NULL),(102,'ḫnty-Trms','head of Kalabsha','this epithet appeares only in the temple of Kalabsha'),(103,'pr-m-sꜣ-Wsjr','the one who comes out from Osiris',NULL),(104,'wꜣḏt-nṯrw-nbw','the lively of all the gods',NULL),(105,'nb-wp','lord of the restorations',NULL),(106,'pr-m-Bꜣḫw','the one who comes from the East',NULL),(107,'wr-pḥty','the one with great strength',NULL),(108,'pr-m-ḥt-jꜥrt-m-tp.f','the one who comes from the womb wearing the uraeus on his head',NULL),(109,'ꜥn-m-ḫꜥw-mj-jtn-m-nfr.f','the one who is beautiful in his aspect as the solar disc in his beams','this epithet appeares only in the temple of Kalabsha, only in two scenes and it belongs only to Merur'),(110,'ḫpr-ḫnt','the one who shapes himself at the beginning',NULL),(111,'pr-m-sꜣ-Ꜣst','the one who comes out from the son of Isis',NULL),(112,'sf-šps-n-sꜣ-Wsjr','magnificent son of Osiris\' son','this epithet appeares only in Kalabsha and it belongs only to Merur'),(113,'ꜥꜢ-pḥty','the one with great strength',NULL),(114,'nb-ḳbḥwy','lord of the two regions of the water',NULL),(115,'sḥr-sbj','the one who throws out the rebels',NULL),(116,'jty-m-spꜢwt-nbwt','king in all districts',NULL),(117,'nb-tꜣwy','lord of the Two Lands',NULL),(118,'sꜢ-Ptḥ','son of Ptah',NULL),(119,'ms-n-špst-wsrt','the one who had a mighty and venerable birth',NULL),(120,'ẖrd-ꜥnḫ','the living child',NULL),(121,'Rꜥt-m-šnw-n-jtn','counselor nearby the solar disc',NULL),(122,'nbt-pt-tꜢ-dwꜢt','lady of the sky, the earth and the afterlife',NULL),(123,'ḥnwt-jꜢbtt','mistress of the West',NULL),(124,'nbt-tpj-rnpt','lady of the beginning of the year',NULL),(125,'ḥnwt-Jrḳ','mistress of Philae',NULL),(126,'ḳbḥt-nfrt-nt-sn.s-tp-hrww-mḏ-nb','the one who makes the perfect libations for her brother at the beginning of every ten days','this epithet appeares only in this scene of the temple of Kalabsha'),(127,'mꜢj-ꜥꜢ','great lion',NULL),(128,'BꜢ-ꜥnḫ','living Ba',NULL),(129,'nḫt-ꜥ','the one that has a strong arm',NULL),(130,'sꜢt-Rꜥ','daughter of Re',NULL),(131,'nb-Tmdd','lord of Temeded',NULL),(132,'mꜢj-rsj','lion of the South',NULL),(133,'nḫt-wr-ꜥ','the one that has a strong and great arm',NULL),(134,'nb-Wr-ḫnt','lord of Urhenet',NULL),(135,'not able to transliterate it','not able to transliterate it',NULL),(136,'Ḏḥwtj-n-Pr-nbs','Thot of Pnubs',NULL),(137,'jty-mrwt','beloved king',NULL),(138,'ḥry-jb-Ꜣbw','the one in the middle of Elephantine',NULL),(139,'ḫnty-TꜢ-sty','head of Nubia',NULL),(140,'nb-Snmt','lord of Bigge',NULL),(141,'nbt-ḫkrw','lady of ornaments',NULL),(142,'pr-m-jꜢbtt','the one who comes from the East',NULL),(143,'nswt-n-pt','king of the sky',NULL),(144,'ḥkꜣ-wr','great ruler',NULL),(145,'ḥkꜣ-tꜣ-nṯr','ruler of the land of the god',NULL),(146,'nwn-wr','great Nun',NULL),(147,'pr-m-nswt-bjt','the one who comes out from the king',NULL),(148,'pr-m-Pwnt','the one who comes out from Punt',NULL),(149,'Ḥr-sꜣ-Ꜣst-sꜣ-Wsjr','Horus son of Isis and son of Osiris',NULL),(150,'pr-m - destroyed','the one who comes out from...',NULL),(151,'destroyed -Trms','...of Kalabsha',NULL),(152,'ḫy','child',NULL),(153,'nb-ḫt','lord of the sacrificial offering',NULL),(154,'jty-wr-m-ḫꜣswt','great ruler of the foreign lands','this epithet belongs only to Merur and only in the temple of Kalabsha'),(155,'wꜣḏt-ꜥnḫ','the one with lively vitality',NULL),(156,'ḫnty-Jrḳ','head of Philae',NULL),(157,'nb-ḥrjt-tp','lord of the uraeus snake',NULL),(158,'nb-Jw-wꜥb-Jrḳ','lord of Bigge and Philae',NULL),(159,'sꜣ-Rꜥ','son of Re',NULL),(160,'rpꜥt-nṯrw','the first of the gods',NULL),(161,'ms-nṯrw','the one who gives birth to the gods',NULL),(162,'ḥnwt-nṯrwt','mistress of the goddesses',NULL),(163,'nb-njwwt','lord of the cities',NULL),(164,'destroyed -m-spꜣt','...from the district',NULL),(165,'nb-Wꜥb','lord of Abaton',NULL),(166,'nb-Ḏdw','lord of Busiris',NULL),(167,'nb-pt','lord of the sky',NULL),(168,'sꜣb-šwt','the one who has multi-colored feathers',NULL),(169,'pr-m-ꜣḫt','the one who comes out from the horizon',NULL),(170,'wpš-ndb-m-nḳr','the one who lightens the Earth with gold dust',NULL),(171,'nbt-jtn','lady of the solar disc',NULL),(172,'no inscriptions','no inscriptions',NULL),(173,'snḏmt-ḥry-tp.k-mj-sꜣ-n-Ꜣst','the one who makes herself pleasant over you like the son of Isis',NULL),(174,'wdt-hh-r-sbyw-nbw','the one who sends the fire breath against all the enemies',NULL),(175,'jj-m-ḥtp','the one who comes in peace',NULL),(176,'destroyed -m-Trms','... from Kalabsha',NULL),(177,'pr-m-tꜣ-nṯr','the one who comes out form the Land of the God',NULL),(178,'Bꜣ-ꜥnḫ-n-Rꜥ','living Ba of Re',NULL),(179,'Bꜣ-šf-ḥꜣwty','Ba with a majestic face',NULL),(180,'Bꜣ-wsr-m-Ꜣbw','powerful Ba in Elephantine',NULL),(181,'jty-n-nḥḥ','lord of eternity',NULL),(182,'kꜣ-nḫt','strong bull',NULL),(183,'mwt-nt-nṯrw-nbw','mother of all the gods',NULL),(184,'pr-m-jꜣbtt-r-st.f','the one who comes out from the east for his place',NULL),(185,'ḥḳꜣ-Pwnt','king of Punt',NULL),(186,'nb-nṯrw-nbw','lord of all the gods',NULL),(187,'sḥtp-nsrt','the one who calms the fire',NULL),(188,'no epithet','no epithet',NULL),(189,'nṯr-nfr','perfect god',NULL),(190,'nb-Jw-wꜥb-ḏt','lord of Abaton for the eternity',NULL),(191,'rrt-Ḥr-nḏ-it.f','the one who raises Hor-nedj-itef',NULL),(192,'nb-ḥryt-destroyed','lord of...',NULL),(193,'jtn-m-tꜣwy','solar disc from the Two Lands',NULL),(194,'pr-m-ꜣḫt-jꜣbtt','the one that comes out from the eastern horizon',NULL),(195,'destroyed -tꜣ(?)-nṯrw-nbw','...all the gods',NULL),(196,'mwt-nṯr- destroyed','mother of the god...',NULL),(197,'mrwt- destroyed','the one who is popular...',NULL),(198,'ḥmt-nfrt','the perfect woman',NULL),(199,'nbt-Trms','lady of Kalabsha',NULL),(200,'nbt-spꜣt','lady fo the district',NULL),(201,'sꜣ-Ḥr','son of Horus','this epithet appears mostly in the temple of Kalabsha'),(202,'nb-Msn','lord of Mesen',NULL),(203,'pr-m-sꜣ.f-šps-wr','the one who comes out from his great and august son',NULL),(204,'nb-ḏt','lord of the eternity',NULL),(205,'mst-ḥmwt','the one who created the artisans',NULL),(206,'ḳmꜣ-swḥt','the one who created the egg',NULL),(207,'ḳd-nḥpw','the one who created the potters',NULL),(208,'nṯr-ꜥꜣ-wr','the very great god',NULL),(209,'wbn-m-štꜣt-tp-dwꜣw-ḏt','the one who shines eternally in the morning from the secret','this epithet appeares only in this scene of the temple of Kalabsha'),(210,'nb-Jwnt','lady od Dendera',NULL),(211,'jt-nṯrw','father of the gods',NULL),(212,'ḳd-nṯrwt','the one who created the goddesses',NULL),(213,'destroyed -n-Ꜣst','...of Isis',NULL),(214,'nswt-byt-šps','august king of the Upper and Lower Egypt',NULL),(215,'ḥḳꜣ-nṯrw','ruler of the gods',NULL),(216,'wbn-m-štꜣt','the one who rises from the mistery',NULL),(217,'ḫnty-psḏt','head of the Ennead',NULL),(218,'ḫy-wꜣḏ','the blooming child',NULL),(219,'ḥry-tp-ḥḥ','head of the million',NULL),(220,'nb- destroyed','lord of...',NULL),(221,'pr-m-jꜢbtt-mj-jt.f','the one who comes from the East as his father',NULL),(222,'ꜥꜣ-wr-tpj-n-Wnn-nfr','the very great and firstborn of Unnefer','this epithet appeares only in this scene of the temple of Kalabsha'),(223,'ꜥꜣ-šwt','great feather',NULL),(224,'wbn-m-ꜣḫt','the one who rises from the horizon',NULL),(225,'pr-m- destroyed -n-Ꜣst','the one who...of Isis',NULL),(226,'nb-ṯr','lord of strength',NULL),(227,'destroyed -wꜥbt','...Abaton',NULL),(228,'smꜣ-ḫfty-ḥr-jt.f-Wsjr-m-Snmt','the one who kills the enemy in front of his father Osiris from Bigge',NULL),(229,'dj-ꜥnḫ-n-sꜣ.f mrwt.s','the one who gives life to her son, her beloved',NULL),(230,'nb-Jw-wꜥb','lord of Abaton',NULL),(231,'ḫb-jnw-n-tꜣ-nṯrw','the one who collect the tributes in the Land of the Gods',NULL),(232,'mwt-nṯr-nt-bjk-n-nbw','the goddess mother of the golden falcon',NULL),(233,'mwt-nṯr-nt-bjk-n-nbwt','the goddess mother of the falcon of the golden ones',NULL),(234,'mwt-nṯr-nt-nṯrw-nbw','the goddess mother of all the gods',NULL),(235,'mwt-nt-nṯrw-nbw','the mother of all the gods',NULL);
/*!40000 ALTER TABLE `epiteto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `epitetov`
--

DROP TABLE IF EXISTS `epitetov`;
/*!50001 DROP VIEW IF EXISTS `epitetov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `epitetov` AS SELECT 
 1 AS `codice_epiteto`,
 1 AS `epiteto_traslitterato`,
 1 AS `epiteto_tradotto`,
 1 AS `epiteto_note`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `epoca`
--

DROP TABLE IF EXISTS `epoca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `epoca` (
  `codice_epoca` int NOT NULL,
  `regno` varchar(255) DEFAULT NULL,
  `anni` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codice_epoca`),
  UNIQUE KEY `codice_epoca_UNIQUE` (`codice_epoca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epoca`
--

LOCK TABLES `epoca` WRITE;
/*!40000 ALTER TABLE `epoca` DISABLE KEYS */;
INSERT INTO `epoca` VALUES (1,'Old Kingdom','2686-2181 BC'),(2,'First Intermediate period','2181-2061 BC'),(3,'Middle Kingdom','2061-1649 BC'),(4,'Second Intermediate Period','1705-1549 BC'),(5,'New Kingdom','1549-1077 BC'),(6,'Third Intermediate Period','1069-653 BC'),(7,'Late Period','672-332 BC'),(8,'Ptolemaic Period','332-30 BC'),(9,'Roman Period','30 BC – 313 AD'),(10,'Early Period','3150-2686 BC');
/*!40000 ALTER TABLE `epoca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `epocav`
--

DROP TABLE IF EXISTS `epocav`;
/*!50001 DROP VIEW IF EXISTS `epocav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `epocav` AS SELECT 
 1 AS `codice_epoca`,
 1 AS `regno`,
 1 AS `anni`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `indossa`
--

DROP TABLE IF EXISTS `indossa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indossa` (
  `codice_indossa` int NOT NULL,
  `codice_personaggio` int DEFAULT NULL,
  `codice_abito` int DEFAULT NULL,
  PRIMARY KEY (`codice_indossa`),
  KEY `codice_abito_FK_indossa_idx` (`codice_abito`),
  KEY `codice_personaggio_FK_indossa_idx` (`codice_personaggio`),
  CONSTRAINT `codice_abito_FK_indossa` FOREIGN KEY (`codice_abito`) REFERENCES `abito` (`codice_abito`),
  CONSTRAINT `codice_personaggio_FK_indossa` FOREIGN KEY (`codice_personaggio`) REFERENCES `personaggio` (`codice_personaggio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indossa`
--

LOCK TABLES `indossa` WRITE;
/*!40000 ALTER TABLE `indossa` DISABLE KEYS */;
INSERT INTO `indossa` VALUES (1,1,1),(2,2,2),(3,3,2),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,3),(9,9,3),(10,10,3),(11,11,3),(12,12,3),(13,13,3),(14,14,3),(15,15,3),(16,16,3),(17,17,3),(18,18,2),(19,19,1),(20,20,4),(21,21,2),(22,22,3),(23,23,3),(24,24,3),(25,25,3),(26,26,3),(27,27,3),(28,28,3),(29,29,3),(30,30,3),(31,31,3),(32,32,3),(33,33,3),(34,34,3),(35,35,3),(36,36,7),(37,37,5),(38,38,6),(39,39,22),(40,40,8),(41,41,22),(42,42,2),(43,43,22),(44,44,9),(45,45,12),(46,46,1),(47,47,12),(48,48,13),(49,49,9),(50,50,14),(51,51,15),(52,52,16),(53,53,5),(54,54,22),(55,55,6),(56,56,1),(57,57,22),(58,58,4),(59,59,5),(60,60,19),(61,61,9),(62,62,35),(63,63,19),(64,64,4),(65,65,33),(66,66,19),(67,67,24),(68,68,19),(69,69,23),(70,70,25),(71,71,6),(72,72,19),(73,73,1),(74,74,4),(75,75,26),(76,76,23),(77,77,15),(78,78,6),(79,79,1),(80,80,2),(81,81,4),(82,82,21),(83,83,12),(84,84,15),(85,85,27),(86,86,22),(87,87,6),(88,88,20),(89,89,28),(90,90,22),(91,91,4),(92,92,4),(93,93,1),(94,94,22),(95,95,6),(96,96,22),(97,97,1),(98,98,4),(99,99,31),(100,100,18),(101,101,22),(102,102,32),(103,103,2),(104,104,4),(105,105,22),(106,106,22),(107,107,13),(108,108,16),(109,109,5),(110,110,12),(111,111,36),(112,112,37),(113,113,19),(114,114,6),(115,115,2),(116,116,1),(117,117,22),(118,118,6),(119,119,12),(120,120,1),(121,121,22),(122,122,4),(123,123,1),(124,124,15),(125,125,6),(126,126,18),(127,127,38),(128,128,6),(129,129,39),(130,130,39),(131,131,18),(132,132,39),(133,133,18),(134,134,22),(135,135,18),(136,136,4),(137,137,18),(138,138,22),(139,139,18),(140,140,22),(141,141,4),(142,142,18),(143,143,22),(144,144,18),(145,145,22),(146,146,18),(147,147,40),(148,148,18),(149,149,22),(150,150,18),(151,151,22),(152,152,18),(153,153,22),(154,154,6),(155,155,41),(156,156,39),(157,157,6),(158,158,18),(159,159,22),(160,160,6),(161,161,18),(162,162,22),(163,163,4),(164,164,22),(165,165,3),(166,166,3),(167,167,4),(168,168,3),(169,169,4),(170,170,3),(171,171,4),(172,172,3),(173,173,39),(174,174,18),(175,175,22),(176,176,40),(177,177,4),(178,178,3),(179,179,39),(180,180,3),(181,181,4),(182,182,3),(183,183,4),(184,184,3),(185,185,4),(186,186,3),(187,187,4),(188,188,3),(189,189,4),(190,190,3),(191,191,4),(192,192,3),(193,193,4),(194,194,18),(195,195,42),(196,196,19),(197,197,21),(198,198,43),(199,199,19),(200,200,19),(201,201,6),(202,202,12),(203,203,19),(204,204,12),(205,205,21),(206,206,9),(207,207,22),(208,208,44),(209,209,9),(210,210,9),(211,211,18),(212,212,38),(213,213,4),(214,214,45),(215,215,48),(216,216,32),(217,217,49),(218,218,42),(219,219,6),(220,220,1),(221,221,8),(222,222,6),(223,223,1),(224,224,19),(225,225,19),(226,226,1),(227,227,8),(228,228,48),(229,229,50),(230,230,48),(231,231,19),(232,232,52),(233,233,51),(234,234,52),(235,235,19),(236,236,4),(237,237,39),(238,238,8),(239,239,48),(240,240,52),(241,241,51),(242,242,8),(243,243,18),(244,244,19),(245,245,32),(246,246,52),(247,247,19),(248,248,45),(249,249,18),(250,250,51),(251,251,49),(252,252,51),(253,253,6),(254,254,1),(255,255,22),(256,256,39),(257,257,39),(258,258,39),(259,259,53),(260,260,48),(261,261,39),(262,262,39),(263,263,39),(264,264,39),(265,265,1),(266,266,39),(267,267,4),(268,268,1),(269,269,22),(270,270,44),(271,271,54),(272,272,44),(273,273,4),(274,274,41),(275,275,41),(276,276,4),(277,277,41),(278,278,18),(279,279,39),(280,280,39),(281,281,22),(282,282,39),(283,283,22),(284,284,39),(285,285,22),(286,286,39),(287,287,22),(288,288,1),(289,289,22),(290,290,22),(291,291,4),(292,292,18),(293,293,22),(294,294,40),(295,295,4),(296,296,18),(297,297,22),(298,298,4),(299,299,22),(300,300,7),(301,301,7),(302,302,7),(303,303,1),(304,304,22),(305,305,4),(306,306,22),(307,307,1),(308,308,22),(309,309,22),(310,310,4),(311,311,1),(312,312,22),(313,313,22),(314,314,1),(315,315,22),(316,316,4),(317,317,1),(318,318,22),(319,319,4),(320,320,22),(321,321,1),(322,322,4),(323,323,15),(324,324,18),(325,325,4),(326,326,1),(327,327,2),(328,328,4),(329,329,54),(330,330,22),(331,331,1),(332,332,22),(333,333,4),(334,334,1),(335,335,22),(336,336,1),(337,337,26),(338,338,4),(339,339,22),(340,340,1),(341,341,22),(342,342,4),(343,343,1),(344,344,2),(345,345,1),(346,346,22),(347,347,4),(348,348,1),(349,349,4),(350,350,4),(351,351,1),(352,352,22),(353,353,5),(354,354,26),(355,355,4),(356,356,22),(357,357,1),(358,358,22),(359,359,4),(360,360,22),(361,361,1),(362,362,22),(363,363,1),(364,364,22),(365,365,4),(366,366,39),(367,367,15),(368,368,55),(369,369,55),(370,370,1),(371,371,4),(372,372,55),(373,373,1),(374,374,22),(375,375,4),(376,376,22),(377,377,1),(378,378,56),(379,379,6),(380,380,1),(381,381,4),(382,382,22),(383,383,22),(384,384,55),(385,385,55),(386,386,1),(387,387,26),(388,388,55),(389,389,1),(390,390,22),(391,391,22),(392,392,1),(393,393,6),(394,394,7),(395,395,57),(396,396,39),(397,397,39),(398,398,39),(399,399,39),(400,400,39),(401,401,39),(402,402,58),(403,403,39),(404,404,5),(405,405,22),(406,406,22),(407,407,26),(408,408,39),(409,409,59),(410,410,6),(411,411,10),(412,412,4),(413,413,22),(414,414,41),(415,415,45),(416,416,6),(417,417,45),(418,418,60),(419,419,22),(420,420,22),(421,421,4),(422,422,1),(423,423,22),(424,424,4),(425,425,1),(426,426,19),(427,427,45),(428,428,39),(429,429,39),(430,430,1),(431,431,19),(432,432,1),(433,433,51),(434,434,39),(435,435,39),(436,436,19),(437,437,39),(438,438,19),(439,439,39),(440,440,39),(441,441,52),(442,442,51),(443,443,61),(444,444,9),(445,445,1),(446,446,51),(447,447,52),(448,448,9),(449,449,48),(450,450,51),(451,451,39),(452,452,19),(453,453,15),(454,454,62),(455,455,22),(456,456,39),(457,457,1),(458,458,22),(459,459,22),(460,460,22),(461,461,1),(462,462,9),(463,463,51),(464,464,51),(465,465,1),(466,466,22),(467,467,4),(468,468,51);
/*!40000 ALTER TABLE `indossa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `indossav`
--

DROP TABLE IF EXISTS `indossav`;
/*!50001 DROP VIEW IF EXISTS `indossav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `indossav` AS SELECT 
 1 AS `codice_indossa`,
 1 AS `codice_personaggio`,
 1 AS `codice_abito`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `menzionato`
--

DROP TABLE IF EXISTS `menzionato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menzionato` (
  `codice_mezionato` int NOT NULL,
  `codice_tempio` int NOT NULL,
  `codice_bibliografia_tempio` int NOT NULL,
  PRIMARY KEY (`codice_mezionato`,`codice_tempio`,`codice_bibliografia_tempio`),
  KEY `codice_tempio_FK_menzionato_idx` (`codice_tempio`),
  KEY `codice_bibliografia_tempio_FK_menzionato_idx` (`codice_bibliografia_tempio`),
  CONSTRAINT `codice_bibliografia_tempio_FK_menzionato` FOREIGN KEY (`codice_bibliografia_tempio`) REFERENCES `bibliografia_tempio` (`codice_bibliografia_tempio`),
  CONSTRAINT `codice_tempio_FK_menzionato` FOREIGN KEY (`codice_tempio`) REFERENCES `tempio` (`codice_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menzionato`
--

LOCK TABLES `menzionato` WRITE;
/*!40000 ALTER TABLE `menzionato` DISABLE KEYS */;
/*!40000 ALTER TABLE `menzionato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `menzionatov`
--

DROP TABLE IF EXISTS `menzionatov`;
/*!50001 DROP VIEW IF EXISTS `menzionatov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `menzionatov` AS SELECT 
 1 AS `codice_mezionato`,
 1 AS `codice_tempio`,
 1 AS `codice_bibliografia_tempio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `parte`
--

DROP TABLE IF EXISTS `parte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parte` (
  `codice_parte` int NOT NULL,
  `tipologia_parte` varchar(255) DEFAULT NULL,
  `codice_e_a` int DEFAULT NULL,
  PRIMARY KEY (`codice_parte`),
  UNIQUE KEY `codice_parte_UNIQUE` (`codice_parte`),
  KEY `codice_e_a_FK_parte_idx` (`codice_e_a`),
  CONSTRAINT `codice_e_a_FK_parte` FOREIGN KEY (`codice_e_a`) REFERENCES `elemento_architettonico` (`codice_e_a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parte`
--

LOCK TABLES `parte` WRITE;
/*!40000 ALTER TABLE `parte` DISABLE KEYS */;
INSERT INTO `parte` VALUES (1,'base',1),(2,'base',2),(3,'base',3),(4,'base',1),(5,'base',4),(6,'base',3),(7,'wall',3),(8,'wall',2),(9,'wall',1),(10,'wall',4),(11,'left jamb',5),(12,'left lintel',5),(13,'right jamb',5),(14,'right lintel',5),(15,'right lintel',6),(16,'left lintel',6),(17,'base',7),(18,'base',8),(19,'base',9),(20,'base',10),(21,'wall',9),(22,'wall',8),(23,'wall',7),(24,'wall',10),(25,'left jamb',11),(26,'left lintel',11),(27,'right jamb',11),(28,'right lintel',11),(29,'right jamb',12),(30,'right lintel',12),(31,'left jamb',12),(32,'left lintel',12),(33,'base',13),(34,'wall',15),(35,'wall',16),(36,'wall',13),(37,'wall',14),(38,'wall',17),(39,'wall',18),(40,'left lintel',19),(41,'right lintel',19),(42,'left thickness',20),(43,'right thickness',20),(44,'right jamb',21),(45,'left jamb',21),(46,'right lintel',21),(47,'left lintel',21),(48,'wall',22);
/*!40000 ALTER TABLE `parte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `partev`
--

DROP TABLE IF EXISTS `partev`;
/*!50001 DROP VIEW IF EXISTS `partev`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `partev` AS SELECT 
 1 AS `codice_parte`,
 1 AS `tipologia_parte`,
 1 AS `codice_e_a`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `personaggio`
--

DROP TABLE IF EXISTS `personaggio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personaggio` (
  `codice_personaggio` int NOT NULL,
  `nome_personaggio` varchar(255) DEFAULT NULL,
  `tipologia_personaggio` varchar(255) DEFAULT NULL COMMENT 'Se divinità, sovrano o personaggio secondario.',
  `donatore_ricevente` varchar(45) DEFAULT NULL,
  `ordine_comparizione` int DEFAULT NULL COMMENT 'Che posizione occupa rispetto agli altri personaggi?',
  `caratteristiche_personaggio` varchar(255) DEFAULT NULL COMMENT 'Esempio: Osiri mummiforme o sovrano.',
  `seduto_stante` varchar(45) DEFAULT NULL,
  `codice_corona` int DEFAULT NULL,
  `codice_scena` int DEFAULT NULL,
  `codice_tempio` int DEFAULT NULL,
  PRIMARY KEY (`codice_personaggio`),
  UNIQUE KEY `codice_personaggio_UNIQUE` (`codice_personaggio`),
  KEY `codice_corona_FK_personaggio_idx` (`codice_corona`),
  KEY `codice_scena_FK_personaggio_idx` (`codice_scena`),
  KEY `codice_tempio_FK_personaggio_idx` (`codice_tempio`),
  CONSTRAINT `codice_corona_FK_personaggio` FOREIGN KEY (`codice_corona`) REFERENCES `corona` (`codice_corona`),
  CONSTRAINT `codice_scena_FK_personaggio` FOREIGN KEY (`codice_scena`) REFERENCES `scena` (`codice_scena`),
  CONSTRAINT `codice_tempio_FK_personaggio` FOREIGN KEY (`codice_tempio`) REFERENCES `tempio` (`codice_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaggio`
--

LOCK TABLES `personaggio` WRITE;
/*!40000 ALTER TABLE `personaggio` DISABLE KEYS */;
INSERT INTO `personaggio` VALUES (1,'Augustus','king','giver',1,'human appearance','standing',1,1,1),(2,'Osiris','god','recipient',1,'human appearance','standing',2,1,1),(3,'Merur','god','recipient',2,'human appearance','standing',3,1,1),(4,'first Nile god','secondary character','giver',3,'human appearance','standing',4,1,1),(5,'second Nile god','secondary character','giver',4,'human appearance','standing',4,1,1),(6,'third Nile god','secondary character','giver',5,'human appearance','standing',4,1,1),(7,'fourth Nile god','secondary character','giver',6,'human appearance','standing',4,1,1),(8,'fifth Nile god','secondary character','giver',7,'human appearance','standing',4,2,1),(9,'sixth Nile god','secondary character','giver',8,'human appearance','standing',4,2,1),(10,'seventh Nile god','secondary character','giver',9,'human appearance','standing',4,2,1),(11,'eighth Nile god','secondary character','giver',10,'human appearance','standing',4,2,1),(12,'ninth Nile god','secondary character','giver',11,'human appearance','standing',4,2,1),(13,'tenth Nile god','secondary character','giver',12,'human appearance','standing',4,2,1),(14,'eleventh Nile god','secondary character','giver',13,'human appearance','standing',4,3,1),(15,'twelfth Nile god','secondary character','giver',14,'human appearance','standing',4,3,1),(16,'thirteenth Nile god','secondary character','giver',15,'human appearance','standing',4,3,1),(17,'fourteenth Nile god','secondary character','giver',16,'human appearance','standing',4,3,1),(18,'Merur','god',NULL,17,'human appearance','standing',3,3,1),(19,'Augustus','king','giver',1,'human appearance','standing',1,4,1),(20,'Isis','goddess','recipient',1,'human appearance','standing',7,4,1),(21,'Merur','god','recipient',2,'human appearance','standing',8,4,1),(22,'first Nile god','secondary character','giver',3,'human appearance','standing',4,4,1),(23,'second Nile god','secondary character','giver',4,'human appearance','standing',4,4,1),(24,'third Nile god','secondary character','giver',5,'human appearance','standing',4,4,1),(25,'fourth Nile god','secondary character','giver',6,'human appearance','standing',4,4,1),(26,'fifth Nile god','secondary character','giver',7,'human appearance','standing',4,4,1),(27,'sixth Nile god','secondary character','giver',8,'human appearance','standing',4,4,1),(28,'seventh Nile god','secondary character','giver',9,'human appearance','standing',4,4,1),(29,'eighth Nile god','secondary character','giver',10,'human appearance','standing',4,4,1),(30,'ninth Nile god','secondary character','giver',11,'human appearance','standing',4,4,1),(31,'tenth Nile god','secondary character','giver',12,'human appearance','standing',4,4,1),(32,'eleventh Nile god','secondary character','giver',13,'human appearance','standing',4,4,1),(33,'twelfth Nile god','secondary character','giver',14,'human appearance','standing',4,4,1),(34,'thirteenth Nile god','secondary character','giver',15,'human appearance','standing',4,4,1),(35,'fourteenth Nile god','secondary character','giver',16,'human appearance','standing',4,4,1),(36,'?','god',NULL,17,'human appearance','standing',3,4,1),(37,'Augustus','king','giver',1,'human appearance','standing',9,7,1),(38,'Isis','goddess','recipient',1,'human appearance','standing',7,7,1),(39,'Merur','god','recipient',2,'human appearance','standing',12,7,1),(40,'Augustus','king','giver',1,'human appearance','standing',13,8,1),(41,'Merur the young?','god','recipient',1,'child','standing',14,8,1),(42,'Augustus','king','giver',1,'human appearance','standing',15,9,1),(43,'Osiris','god','recipient',1,'human appearance','standing',18,9,1),(44,'Isis','goddess','recipient',2,'human appearance','standing',7,9,1),(45,'Merur','god','recipient',3,'human appearance','standing',19,9,1),(46,'Augustus','king','giver',1,'human appearance','standing',20,10,1),(47,'Merur the young','god','recipient',1,'child','standing',21,10,1),(48,'Nekhbet?','goddess','recipient',2,'human appearance','standing',2,10,1),(49,'Uadjet','goddess','recipient',3,'human appearance','standing',1,10,1),(50,'Augustus','king','giver',1,'human appearance','standing',13,11,1),(51,'Merur the young','god','recipient',1,'child','standing',23,11,1),(52,'Uadjet','goddess','recipient',2,'human appearance','standing',1,11,1),(53,'Augustus','king','giver',1,'human appearance','standing',24,12,1),(54,'Merur','god','recipient',1,'human appearance','standing',3,12,1),(55,'Uadjet','goddess','recipient',2,'human appearance','standing',1,12,1),(56,'Augustus','king','giver',1,'human appearance','standing',20,13,1),(57,'Osiris','god','recipient',1,'human appearance','standing',18,13,1),(58,'Isis','goddess','recipient',2,'human appearance','standing',26,13,1),(59,'Augustus','king','giver',1,'human appearance','standing',15,14,1),(60,'Osiris','god','recipient',1,'human appearance','seated',18,14,1),(61,'Isis','goddess','recipient',2,'human appearance','seated',7,14,1),(62,'Augustus','king','giver',1,'human appearance','standing',8,15,1),(63,'Merur','god','recipient',1,'human appearance','seated',3,15,1),(64,'Uadjet','goddess','recipient',2,'human appearance','standing',1,15,1),(65,'Augustus','king','giver',1,'human appearance','standing',20,16,1),(66,'Hor-nedj-itef','god','recipient',1,'falcon head','seated',20,16,1),(67,'Hathor','goddess','recipient',2,'human appearance','seated',26,16,1),(68,'Merur the young','god','recipient',3,'child','seated',14,16,1),(69,'Augustus','king','giver',1,'human appearance','standing',9,17,1),(70,'Amon Ra Horemahet','god','recipient',1,'falcon head','seated',27,17,1),(71,'Tanenet','goddess','recipient',2,'human appearance','standing',28,17,1),(72,'Merur','god','recipient',3,'human appearance','seated',8,17,1),(73,'Augustus','king','giver',1,'human appearance','standing',9,18,1),(74,'Isis','goddess','recipient',1,'human appearance','seated',26,18,1),(75,'Hor-pa-hred','god','recipient',2,'child','standing',29,18,1),(76,'Augustus?','king','giver',1,'human appearance','standing',30,19,1),(77,'Merur the young','god','recipient',1,'child','seated',31,19,1),(78,'Uadjet','goddess','recipient',2,'human appearance','standing',33,19,1),(79,'Augustus','king','giver',1,'human appearance','standing',34,20,1),(80,'Merur','god','recipient',1,'human appearance','seated',3,20,1),(81,'Uadjet','goddess','recipient',2,'human appearance','seated',1,20,1),(82,'Augustus','king','giver',1,'human appearance','standing',20,21,1),(83,'Merur','god','recipient',1,'human appearance','standing',3,21,1),(84,'Merur the young','god','recipient',2,'child','standing',35,21,1),(85,'Augustus','king','giver',1,'human appearance','standing',38,22,1),(86,'Merur the young?','god','recipient',1,'child','standing',40,22,1),(87,'Uadjet','goddess','recipient',2,'human appearance','standing',1,22,1),(88,'Augustus','king','giver',1,'human appearance','standing',20,23,1),(89,'?','queen','giver',2,'human appearance','standing',41,23,1),(90,'Osiris','god','recipient',1,'human appearance','standing',18,23,1),(91,'Isis','goddess','recipient',2,'human appearance','standing',7,23,1),(92,'Nephthys','goddess','recipient',3,'human appearance','standing',43,23,1),(93,'Augustus','king','giver',1,'human appearance','standing',16,24,1),(94,'Hor-nedj-itef','god','recipient',1,'falcon head','standing',20,24,1),(95,'Hathor','goddess','recipient',2,'human appearance','standing',26,24,1),(96,'Merur','god','recipient',3,'human appearance','standing',8,24,1),(97,'Augustus','king','giver',1,'human appearance','standing',32,25,1),(98,'Isis','goddess','recipient',1,'human appearance','standing',7,25,1),(99,'Hor-pa-hred','god','recipient',2,'child','standing',29,25,1),(100,'Augustus','king','giver',1,'human appearance','standing',13,26,1),(101,'Merur','god','recipient',1,'human appearance','standing',3,26,1),(102,'Uadjet','goddess','recipient',2,'human appearance','standing',32,26,1),(103,'Augustus','king','giver',1,'human appearance','standing',44,27,1),(104,'Isis','goddess','recipient',1,'human appearance','standing',7,27,1),(105,'Hor-nedj-itef','god','recipient',2,'falcon head','standing',20,27,1),(106,'Augustus','king','giver',1,'human appearance','standing',45,28,1),(107,'Isis','goddess','recipient',1,'human appearance','seated',46,28,1),(108,'Hathor','goddess','recipient',2,'human appearance','seated',47,28,1),(109,'Augustus','king','giver',1,'human appearance','standing',16,29,1),(110,'Merur','god','recipient',1,'human appearance','seated',8,29,1),(111,'Uadjet','goddess','recipient',2,'human appearance','standing',1,29,1),(112,'Augustus','king','giver',1,'human appearance','standing',32,30,1),(113,'Khnum','god','recipient',1,'ram head','seated',39,30,1),(114,'Satet','goddess','recipient',2,'human appearance','seated',48,30,1),(115,'Merur','god','recipient',3,'human appearance','seated',14,30,1),(116,'Augustus','king','giver',1,'human appearance','standing',9,31,1),(117,'Amon-Ra','god','recipient',1,'human appearance','seated',49,31,1),(118,'Mut','goddess','recipient',2,'human appearance','standing',50,31,1),(119,'Hor-nedj-itef','god','recipient',3,'falcon head','seated',20,31,1),(120,'Augustus','king','giver',1,'human appearance','standing',51,32,1),(121,'Merur','god','recipient',1,'human appearance','seated',8,32,1),(122,'Uadjet','goddess','recipient',2,'human appearance','standing',32,32,1),(123,'Augustus','king','giver',1,'human appearance','standing',52,33,1),(124,'Merur the young','god','recipient',1,'child','seated',14,33,1),(125,'Uadjet?','goddess','recipient',2,'human appearance','standing',1,33,1),(126,'Augustus','king','giver',1,'human appearance','standing',18,34,1),(127,'Merur','god','recipient',1,'human appearance','seated',8,34,1),(128,'Uadjet','goddess','recipient',2,'human appearance','seated',1,34,1),(129,'?','king','giver',1,'human appearance','standing',46,35,1),(130,'?','god','recipient',1,'human appearance','destroyed',46,35,1),(131,'Augustus','king','giver',1,'human appearance','standing',20,36,1),(132,'Osiris','god','recipient',1,'human appearance','standing',2,36,1),(133,'Augustus','king','giver',1,'human appearance','standing',8,37,1),(134,'Hor-nedj-itef','god','recipient',1,'falcon head','standing',20,37,1),(135,'Augustus','king','giver',1,'human appearance','standing',53,38,1),(136,'Nephthys','goddess','recipient',1,'human appearance','standing',42,38,1),(137,'Augustus','king','giver',1,'human appearance','standing',55,39,1),(138,'Hor-nedj-itef','god','recipient',1,'falcon head','seated',20,39,1),(139,'Augustus','king','giver',1,'human appearance','standing',13,40,1),(140,'Osiris','god','recipient',1,'human appearance','seated',18,40,1),(141,'Isis','goddess','recipient',2,'human appearance','seated',6,40,1),(142,'Augustus','king','giver',1,'human appearance','standing',39,41,1),(143,'Merur','god','recipient',1,'human appearance','standing',8,41,1),(144,'Augustus','king','giver',1,'human appearance','standing',20,42,1),(145,'Merur','god','recipient',1,'human appearance','standing',2,42,1),(146,'Augustus','king','giver',1,'human appearance','standing',56,43,1),(147,'Merur','god','recipient',1,'child','standing',20,43,1),(148,'Augustus','king','giver',1,'human appearance','standing',57,44,1),(149,'Merur','god','recipient',1,'human appearance','standing',24,44,1),(150,'Augustus','king','giver',1,'human appearance','standing',20,45,1),(151,'Merur','god','recipient',1,'human appearance','seated',2,45,1),(152,'Augustus','king','giver',1,'human appearance','standing',32,46,1),(153,'Merur','god','recipient',1,'human appearance','seated',8,46,1),(154,'Uadjet','goddess','recipient',2,'human appearance','seated',32,46,1),(155,'Augustus','king','giver',1,'human appearance','standing',20,47,1),(156,'Osiris','god','recipient',1,'human appearance','seated',12,47,1),(157,'Isis','goddess','recipient',2,'human appearance','seated',6,47,1),(158,'Augustus','king','giver',1,'human appearance','standing',13,48,1),(159,'Merur','god','recipient',1,'human appearance','seated',8,48,1),(160,'Uadjet','goddess','recipient',2,'human appearance','seated',1,48,1),(161,'Augustus','king','giver',1,'human appearance','standing',13,49,1),(162,'Osiris','god','recipient',1,'human appearance','standing',18,49,1),(163,'Isis','goddess','recipient',2,'human appearance','standing',6,49,1),(164,'Hor-nedj-itef','god','recipient',3,'human appearance','standing',20,49,1),(165,'first Nile god','secondary character','giver',2,'human appearance','standing',4,49,1),(166,'second Nile god','secondary character','giver',3,'human appearance','standing',4,50,1),(167,'third Nile god','secondary character','giver',4,'human appearance','standing',4,50,1),(168,'fourth Nile god','secondary character','giver',5,'human appearance','standing',4,50,1),(169,'fifth Nile god','secondary character','giver',6,'human appearance','standing',4,50,1),(170,'sixth Nile god','secondary character','giver',7,'human appearance','standing',4,50,1),(171,'seventh Nile god','secondary character','giver',8,'human appearance','standing',4,51,1),(172,'eighth Nile god','secondary character','giver',9,'human appearance','standing',4,51,1),(173,'ninth Nile god','secondary character','giver',10,'human appearance','standing',4,51,1),(174,'Augustus','king','giver',1,'human appearance','standing',32,52,1),(175,'Merur','god','recipient',1,'human appearance','standing',8,52,1),(176,'Merur the young','god','recipient',2,'human appearance','standing',29,52,1),(177,'Uadjet','goddess','recipient',3,'human appearance','standing',1,52,1),(178,'first Nile god','secondary character','giver',2,'human appearance','standing',4,52,1),(179,'second Nile god','secondary character','giver',3,'human appearance','standing',4,52,1),(180,'third Nile god','secondary character','giver',4,'human appearance','standing',4,52,1),(181,'fourth Nile god','secondary character','giver',5,'human appearance','standing',4,53,1),(182,'fifth Nile god','secondary character','giver',6,'human appearance','standing',4,53,1),(183,'sixth Nile god','secondary character','giver',7,'human appearance','standing',4,53,1),(184,'seventh Nile god','secondary character','giver',8,'human appearance','standing',4,53,1),(185,'eighth Nile god','secondary character','giver',9,'human appearance','standing',4,53,1),(186,'ninth Nile god','secondary character','giver',10,'human appearance','standing',4,53,1),(187,'tenth Nile god','secondary character','giver',11,'human appearance','standing',4,53,1),(188,'eleventh Nile god','secondary character','giver',12,'human appearance','standing',4,54,1),(189,'twelfth Nile god','secondary character','giver',13,'human appearance','standing',4,54,1),(190,'thirteenth Nile god','secondary character','giver',14,'human appearance','standing',4,54,1),(191,'fourteenth Nile god','secondary character','giver',15,'human appearance','standing',4,54,1),(192,'fifteenth Nile god','secondary character','giver',16,'human appearance','standing',4,54,1),(193,'sixteenth Nile god','secondary character','giver',17,'human appearance','standing',4,54,1),(194,'Augustus','king','giver',1,'human appearance','standing',20,55,1),(195,'Osiris','god','recipient',1,'mummiform','standing',58,55,1),(196,'Merur','god','recipient',2,'human appearance','standing',8,55,1),(197,'Augustus','king','giver',1,'human appearance','standing',59,56,1),(198,'Tetun','god','recipient',1,'lion head','standing',16,56,1),(199,'Augustus','king','giver',1,'human appearance','standing',61,57,1),(200,'Osiris','god','recipient',1,'human appearance','standing',60,57,1),(201,'Isis','goddess','recipient',2,'human appearance','standing',6,57,1),(202,'Merur the young','god','recipient',3,'human appearance','standing',29,57,1),(203,'Augustus','king','giver',1,'human appearance','standing',13,58,1),(204,'Jj-m-hetep','god','recipient',1,'human appearance','standing',59,58,1),(205,'Augustus','king','giver',1,'human appearance','standing',62,59,1),(206,'Isis','goddess','recipient',1,'human appearance','standing',6,59,1),(207,'Merur','god','recipient',2,'human appearance','standing',11,59,1),(208,'Augustus','king','giver',1,'human appearance','standing',61,60,1),(209,'Isis','goddess','recipient',1,'human appearance','seated',25,60,1),(210,'Satet','goddess','recipient',2,'human appearance','seated',48,60,1),(211,'Augustus','king','giver',1,'human appearance','standing',63,61,1),(212,'Osiris','god','recipient',1,'human appearance','seated',18,61,1),(213,'Isis','goddess','recipient',2,'human appearance','seated',6,61,1),(214,'Hor-nedj-itef','god','recipient',3,'falcon head','seated',20,61,1),(215,'Merur','god','recipient',4,'human appearance','seated',8,61,1),(216,'Uadjet','goddess','recipient',5,'human appearance','seated',1,61,1),(217,'Augustus','king','giver',1,'human appearance','standing',13,62,1),(218,'Osiris','god','recipient',1,'mummiform','seated',18,62,1),(219,'Isis','goddess','recipient',2,'human appearance','seated',6,62,1),(220,'Augustus','king','giver',1,'human appearance','standing',24,63,1),(221,'Iri-hemes-nefer','god','recipient',1,'human appearance','standing',16,63,1),(222,'Tefnut','goddess','recipient',2,'lion head','standing',64,63,1),(223,'Augustus','king','giver',1,'human appearance','standing',9,64,1),(224,'Merur','god','recipient',1,'human appearance','standing',8,64,1),(225,'Iri-hemes-nefer','god','recipient',2,'human appearance','standing',15,64,1),(226,'Augustus','king','giver',1,'human appearance','standing',18,65,1),(227,'Merur','god','recipient',1,'human appearance','standing',3,65,1),(228,'Merur the Young','god','recipient',2,'human appearance','standing',29,65,1),(229,'Augustus','king','giver',1,'human appearance','standing',61,66,1),(230,'Merur','god','recipient',1,'human appearance','standing',19,66,1),(231,'Merur the Young','god','recipient',2,'human appearance','standing',65,66,1),(232,'Augustus','king','giver',1,'human appearance','standing',57,67,1),(233,'Merur','god','recipient',1,'human appearance','standing',20,67,1),(234,'Augustus','king','giver',1,'human appearance','standing',45,68,1),(235,'Merur','god','recipient',1,'human appearance','standing',19,68,1),(236,'Uadjet','goddess','recipient',2,'human appearance','standing',1,68,1),(237,'Augustus','king','giver',1,'human appearance','standing',11,69,1),(238,'Merur','god','recipient',1,'human appearance','seated',45,69,1),(239,'Thot','god','recipient',2,'human appearance','seated',66,69,1),(240,'Augustus','king','giver',1,'human appearance','standing',20,70,1),(241,'Merur','god','recipient',1,'human appearance','seated',3,70,1),(242,'Amun','god','recipient',2,'ram head','seated',39,70,1),(243,'Augustus','king','giver',1,'human appearance','standing',32,71,1),(244,'Khnum','god','recipient',1,'ram head','seated',39,71,1),(245,'Satet','goddess','recipient',2,'human appearance','seated',48,71,1),(246,'Augustus','king','giver',1,'human appearance','standing',20,72,1),(247,'Amun of Napata','god','recipient',1,'human appearance','seated',49,72,1),(248,'Amun of Primis','god','recipient',2,'ram head','seated',39,72,1),(249,'Augustus','king','giver',1,'human appearance','standing',13,73,1),(250,'Merur the Young','god','recipient',1,'human appearance','seated',19,73,1),(251,'Augustus','king','giver',1,'human appearance','standing',32,74,1),(252,'Merur','god','recipient',1,'human appearance','seated',3,74,1),(253,'Uadjet','goddess','recipient',2,'human appearance','seated',1,74,1),(254,'Augustus','king','giver',1,'human appearance','standing',32,75,1),(255,'Merur','god','recipient',1,'human appearance','seated',3,75,1),(256,'Traianus','king','giver',1,'human appearance','standing',46,76,1),(257,'Osiris','god','recipient',1,'human appearance','seated',58,76,1),(258,'Isis','goddess','recipient',2,'human appearance','seated',7,76,1),(259,'?','king','giver',1,'human appearance','standing',13,77,1),(260,'Horus','god','recipient',1,'falcon head','seated',20,77,1),(261,'Augustus','king','giver',1,'human appearance','standing',20,78,1),(262,'Merur','god','recipient',1,'human appearance','seated',19,78,1),(263,'Uadjet','goddess','recipient',2,'human appearance','seated',1,78,1),(264,'Augustus','king','giver',1,'human appearance','standing',13,79,1),(265,'?','unknown','recipient',1,'human appearance','standing',46,79,1),(266,'Augustus','king','giver',1,'human appearance','standing',46,80,1),(267,'Isis','goddess','recipient',1,'human appearance','standing',7,80,1),(268,'Augustus','king','giver',1,'human appearance','standing',20,81,1),(269,'Osiris','god','recipient',1,'human appearance','standing',18,81,1),(270,'Augustus','king','giver',1,'human appearance','standing',46,82,1),(271,'Pharaoh of Bigge','god','recipient',1,'human appearance','standing',36,82,1),(272,'Augustus','king','giver',1,'human appearance','standing',46,83,1),(273,'Isis','goddess','recipient',1,'human appearance','standing',7,83,1),(274,'Augustus','king','giver',1,'human appearance','standing',32,84,1),(275,'Osiris','god','recipient',1,'human appearance','seated',18,84,1),(276,'Isis','goddess','recipient',2,'human appearance','seated',7,84,1),(277,'Hor-nedj-itef','god','recipient',3,'falcon head','seated',20,84,1),(278,'?','king','giver',1,'human appearance','standing',32,85,1),(279,'?','unknown','recipient',1,'human appearance','standing',46,85,1),(280,'?','king','giver',1,'human appearance','standing',46,86,1),(281,'Merur','god','recipient',1,'human appearance','standing',3,86,1),(282,'Augustus','king','giver',1,'human appearance','standing',46,87,1),(283,'?','god','recipient',1,'human appearance','standing',46,87,1),(284,'?','king','giver',1,'human appearance','standing',46,88,1),(285,'Shu','god','recipient',1,'human appearance','standing',67,88,1),(286,'?','king','giver',1,'human appearance','standing',46,89,1),(287,'Merur','god','recipient',1,'human appearance','standing',19,89,1),(288,'Augustus','king','giver',1,'human appearance','running',13,90,1),(289,'Merur','god','recipient',1,'human appearance','seated',3,90,1),(290,'Merur','god','recipient',2,'human appearance','seated',19,90,1),(291,'Uadjet','goddess','recipient',3,'human appearance','seated',1,90,1),(292,'Augustus','king','giver',1,'human appearance','standing',32,91,1),(293,'Merur','god','recipient',1,'human appearance','standing',19,91,1),(294,'Merur the Young','god','recipient',2,'child','standing',29,91,1),(295,'Uadjet','goddess','recipient',3,'human appearance','standing',1,91,1),(296,'Augustus','king','giver',1,'human appearance','standing',13,92,1),(297,'Osiris','god','recipient',1,'human appearance','standing',18,92,1),(298,'Isis','goddess','recipient',2,'human appearance','standing',7,92,1),(299,'Hor-nedj-itef','god','recipient',3,'falcon head','standing',20,92,1),(300,'Augustus','king','giver',1,'human appearance','standing',20,93,1),(301,'Shu','god','recipient',1,'human appearance','seated',67,93,1),(302,'Tefnut','goddess','recipient',2,'lion head','seated',64,93,1),(303,'Augustus','king','giver',1,'human appearance','standing',8,94,1),(304,'Duat-netjer','god','recipient',1,'human appearance','seated',45,94,1),(305,'Nut','goddess','recipient',2,'human appearance','seated',68,94,1),(306,'Merur','god','recipient',3,'human appearance','seated',3,94,1),(307,'Augustus','king','giver',1,'human appearance','standing',13,95,1),(308,'Hor-nedj-itef','god','recipient',1,'falcon head','seated',20,95,1),(309,'Merur','god','recipient',2,'human appearance','seated',55,95,1),(310,'Uadjet','goddess','recipient',3,'human appearance','standing',1,95,1),(311,'Augustus','king','giver',1,'human appearance','standing',13,96,1),(312,'Osiris','god','recipient',1,'human appearance','seated',56,96,1),(313,'Merur','god','recipient',2,'human appearance','seated',19,96,1),(314,'Augustus','king','giver',1,'human appearance','standing',36,97,1),(315,'Hor-em-akhet','god','recipient',1,'falcon head','seated',69,97,1),(316,'Hathor','goddess','recipient',2,'human appearance','standing',70,97,1),(317,'Augustus','king','giver',1,'human appearance','standing',16,98,1),(318,'Osiris','god','recipient',1,'human appearance','seated',18,98,1),(319,'Isis','goddess','recipient',2,'human appearance','seated',7,98,1),(320,'Horus','god','recipient',3,'falcon head','seated',20,98,1),(321,'Augustus','king','giver',1,'human appearance','standing',71,99,1),(322,'Isis','goddess','recipient',1,'human appearance','seated',7,99,1),(323,'Merur the Young','god','recipient',2,'child','standing',20,99,1),(324,'Augustus','king','giver',1,'human appearance','standing',9,100,1),(325,'Isis','goddess','recipient',1,'human appearance','seated',7,100,1),(326,'Augustus','king','giver',1,'human appearance','standing',20,101,1),(327,'Merur','god','recipient',1,'human appearance','standing',8,101,1),(328,'Uadjet','goddess','recipient',2,'human appearance','standing',1,101,1),(329,'Augustus','king','giver',1,'human appearance','standing',13,102,1),(330,'Merur','god','recipient',1,'human appearance','standing',3,102,1),(331,'Augustus','king','giver',1,'human appearance','standing',32,103,1),(332,'Khnum','god','recipient',1,'ram head','seated',39,103,1),(333,'Hathor','goddess','recipient',2,'human appearance','seated',25,103,1),(334,'Augustus','king','giver',1,'human appearance','standing',73,104,1),(335,'Merur','god','recipient',1,'human appearance','seated',8,104,1),(336,'Augustus','king','giver',1,'human appearance','standing',13,105,1),(337,'Min','god','recipient',1,'human appearance','standing',49,105,1),(338,'Isis','goddess','recipient',2,'human appearance','seated',7,105,1),(339,'Merur','god','recipient',3,'human appearance','seated',8,105,1),(340,'Augustus','king','giver',1,'human appearance','standing',13,106,1),(341,'Merur','god','recipient',1,'human appearance','seated',3,106,1),(342,'Uadjet','goddess','recipient',2,'human appearance','seated',1,106,1),(343,'Augustus','king','giver',1,'human appearance','standing',32,107,1),(344,'Merur','god','recipient',1,'human appearance','seated',39,107,1),(345,'Augustus','king','giver',1,'human appearance','standing',32,108,1),(346,'Merur','god','recipient',1,'human appearance','seated',19,108,1),(347,'Uadjet','goddess','recipient',2,'human appearance','seated',1,108,1),(348,'?','king','giver',1,'human appearance','standing',20,109,1),(349,'Isis','goddess','recipient',1,'human appearance','seated',7,109,1),(350,'Mut?','goddess','recipient',2,'human appearance','seated',47,109,1),(351,'?','king','giver',1,'human appearance','standing',74,110,1),(352,'Khnum','god','recipient',1,'ram head','seated',57,110,1),(353,'?','king','giver',1,'human appearance','standing',9,111,1),(354,'Ptah','god','recipient',1,'human appearance','seated',10,111,1),(355,'Sekhmet','goddess','recipient',2,'lion head','standing',70,111,1),(356,'Merur','god','recipient',3,'human appearance','seated',65,111,1),(357,'Augustus','king','giver',1,'human appearance','standing',20,112,1),(358,'Thot','god','recipient',1,'ibis head','seated',39,112,1),(359,'Safekh-abui?','god','recipient',2,'human appearance','standing',75,112,1),(360,'Merur','god','recipient',3,'human appearance','seated',19,112,1),(361,'Augustus','king','giver',1,'human appearance','standing',13,113,1),(362,'Merur','god','recipient',1,'human appearance','seated',55,113,1),(363,'Augustus','king','giver',1,'human appearance','standing',9,114,1),(364,'Merur','god','recipient',1,'human appearance','seated',3,114,1),(365,'Uadjet','goddess','recipient',2,'human appearance','seated',1,114,1),(366,'Horus','god','giver',1,'falcon head','standing',20,115,1),(367,'Hor-pa-hred','god','recipient',1,'child','standing',23,115,1),(368,'Merur?','god','recipient',2,'human appearance','standing',3,115,1),(369,'?','god','recipient',3,'human appearance','standing',3,115,1),(370,'?','king','giver',1,'human appearance','standing',65,116,1),(371,'Isis','goddess','recipient',1,'human appearance','standing',47,116,1),(372,'Merur','god','recipient',2,'human appearance','standing',19,116,1),(373,'?','king','giver',1,'human appearance','standing',15,117,1),(374,'Osiris','god','recipient',1,'human appearance','seated',18,117,1),(375,'Isis','goddess','recipient',2,'human appearance','seated',7,117,1),(376,'Merur','god','recipient',3,'human appearance','seated',19,117,1),(377,'?','king','giver',1,'human appearance','standing',27,118,1),(378,'Merur','god','recipient',1,'human appearance','seated',19,118,1),(379,'Isis','goddess','recipient',2,'human appearance','seated',7,118,1),(380,'Ptolemy','king','giver',1,'human appearance','standing',20,119,1),(381,'Isis','goddess','recipient',1,'human appearance','seated',7,119,1),(382,'Merur','god','recipient',2,'human appearance','seated',19,119,1),(383,'Horus','god','recipient',3,'human appearance','seated',13,119,1),(384,'Khnum','god','giver',1,'ram head','standing',69,120,1),(385,'Hor-em-akhet','god','recipient',1,'falcon head','standing',69,120,1),(386,'Amenhotep II','king','giver',1,'human appearance','standing',17,121,1),(387,'Min','god','recipient',1,'human appearance','standing',76,121,1),(388,'Merur','god','recipient',2,'human appearance','standing',19,121,1),(389,'?','king','giver',1,'human appearance','standing',77,122,1),(390,'Horus of Edfu','god','recipient',1,'falcon head','seated',78,122,1),(391,'Merur','god','recipient',2,'human appearance','seated',19,122,1),(392,'?','king','giver',1,'human appearance','standing',18,123,1),(393,'Hathor','goddess','recipient',1,'human appearance','seated',78,123,1),(394,'Hor-pa-hred','god','recipient',2,'human appearance','seated',20,123,1),(395,'sphinx','god','recipient',3,'human head, animal body','seated',17,123,1),(396,'?','king','giver',1,'human appearance','standing',32,124,1),(397,'Isis','goddess','recipient',1,'human appearance','standing',26,124,1),(398,'Merur the Young','god','recipient',2,'child','standing',23,124,1),(399,'Horus?','god','recipient',3,'human appearance','standing',2,124,1),(400,'?','god','recipient',4,'human appearance','standing',2,124,1),(401,'?','king','giver',1,'human appearance','standing',77,125,1),(402,'Merur','Ba bird','recipient',1,'human head, bird body','seated',19,125,1),(403,'Isis','goddess','recipient',2,'human appearance','standing',7,125,1),(404,'?','king','giver',1,'human appearance','standing',13,126,1),(405,'Amun','god','recipient',1,'human appearance','seated',49,126,1),(406,'Thot','god','recipient',2,'ibis head','seated',39,126,1),(407,'Khonsu?','god','recipient',3,'mummiform','standing',21,126,1),(408,'?','king','giver',1,'human appearance','standing',15,127,1),(409,'Merur the Young','god','recipient',1,'human appearance','seated',23,127,1),(410,'Hathor?','goddess','recipient',2,'human appearance','seated',47,127,1),(411,'?','king','giver',1,'human appearance','standing',79,128,1),(412,'-','field goddess','giver',2,'human appearance','standing',80,128,1),(413,'Osiris','god','recipient',1,'human appearance','seated',39,128,1),(414,'Merur','god','recipient',2,'human appearance','seated',19,128,1),(415,'Hor-nedj-itef','god','giver',1,'falcon head','seated',20,129,1),(416,'Merur','god','recipient',1,'human appearance','seated',23,129,1),(417,'Isis','goddess','giver',2,'human appearance','seated',7,129,1),(418,'?','king','giver',1,'human appearance','running',19,130,1),(419,'Horus','god','recipient',1,'falcon head','seated',69,130,1),(420,'Shu','god','recipient',2,'human appearance','seated',67,130,1),(421,'Tefnut','goddess','recipient',3,'lion head','seated',69,130,1),(422,'?','king','giver',1,'human appearance','standing',20,131,1),(423,'Merur','god','recipient',1,'human appearance','seated',19,131,1),(424,'Uadjet?','goddess','recipient',2,'human appearance','seated',1,131,1),(425,'?','king','giver',1,'human appearance','standing',32,132,1),(426,'Merur','god','recipient',1,'human appearance','seated',3,132,1),(427,'?','king','giver',1,'human appearance','standing',46,133,1),(428,'Osiris','god','recipient',1,'human appearance','seated',46,133,1),(429,'Isis','goddess','recipient',2,'human appearance','seated',7,133,1),(430,'?','king','giver',1,'human appearance','standing',13,134,1),(431,'Horus','god','recipient',1,'human appearance','seated',20,134,1),(432,'?','king','giver',1,'human appearance','standing',20,135,1),(433,'Merur','god','recipient',1,'human appearance','seated',19,135,1),(434,'Uadjet','goddess','recipient',2,'human appearance','seated',1,135,1),(435,'?','king','giver',1,'human appearance','standing',46,136,1),(436,'Merur','god','recipient',1,'human appearance','standing',19,136,1),(437,'Augustus','king','giver',1,'human appearance','standing',46,137,1),(438,'Hor-nedj-itef','god','recipient',1,'falcon head','standing',20,137,1),(439,'?','king','giver',1,'human appearance','standing',81,138,1),(440,'Horus','god','recipient',1,'falcon head','standing',20,138,1),(441,'?','king','giver',1,'human appearance','standing',20,139,1),(442,'Merur','god','recipient',1,'human appearance','standing',19,139,1),(443,'Isis','goddess','giver',1,'human appearance','standing',7,140,1),(444,'Merur the Young','god','recipient',1,'human appearance','standing',23,140,1),(445,'?','king','giver',1,'human appearance','standing',82,141,1),(446,'Osiris','god','recipient',1,'human appearance','standing',58,141,1),(447,'?','king','giver',1,'human appearance','standing',20,142,1),(448,'Isis','goddess','recipient',1,'human appearance','standing',7,142,1),(449,'?','king','giver',1,'human appearance','standing',16,143,1),(450,'Osiris','god','recipient',1,'human appearance','seated',2,143,1),(451,'Hor-nedj-itef','god','recipient',2,'falcon head','seated',20,143,1),(452,'?','king','giver',1,'human appearance','standing',16,144,1),(453,'Khenty-mer','field god','giver',2,'human appearance','standing',4,144,1),(454,'Seheter','field goddess','giver',3,'human appearance','standing',80,144,1),(455,'Merur the Young','god','recipient',1,'human appearance','seated',23,144,1),(456,'Isis','goddess','recipient',2,'human appearance','seated',7,144,1),(457,'?','king','giver',1,'human appearance','standing',32,145,1),(458,'Merur?','god','recipient',1,'human appearance','standing',19,145,1),(459,'?','god','recipient',2,'human appearance','standing',3,145,1),(460,'?','god','recipient',3,'human appearance','standing',3,145,1),(461,'?','king','giver',1,'human appearance','standing',83,146,1),(462,'Isis','goddess','recipient',1,'human appearance','standing',7,146,1),(463,'Horus','god','recipient',2,'falcon head','standing',20,146,1),(464,'Merur','god','recipient',3,'human appearance','standing',19,146,1),(465,'?','king','giver',1,'human appearance','standing',19,147,1),(466,'Osiris','god','recipient',1,'human appearance','standing',18,147,1),(467,'Isis','goddess','recipient',2,'human appearance','standing',7,147,1),(468,'Horus','god','recipient',3,'falcon head','standing',20,147,1);
/*!40000 ALTER TABLE `personaggio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `personaggiov`
--

DROP TABLE IF EXISTS `personaggiov`;
/*!50001 DROP VIEW IF EXISTS `personaggiov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `personaggiov` AS SELECT 
 1 AS `codice_personaggio`,
 1 AS `tipologia_personaggio`,
 1 AS `nome_personaggio`,
 1 AS `donatore_ricevente`,
 1 AS `ordine_comparizione`,
 1 AS `caratteristiche_personaggio`,
 1 AS `seduto_stante`,
 1 AS `codice_corona`,
 1 AS `codice_scena`,
 1 AS `codice_tempio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `possiede`
--

DROP TABLE IF EXISTS `possiede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `possiede` (
  `codice_possiede` int NOT NULL,
  `codice_personaggio` int DEFAULT NULL,
  `codice_epiteto` int DEFAULT NULL,
  PRIMARY KEY (`codice_possiede`),
  UNIQUE KEY `codice_possiede_UNIQUE` (`codice_possiede`),
  KEY `codice_epiteto_FK_possiede` (`codice_epiteto`),
  KEY `codice_personaggio_FK_possiede_idx` (`codice_personaggio`),
  CONSTRAINT `codice_epiteto_FK_possiede` FOREIGN KEY (`codice_epiteto`) REFERENCES `epiteto` (`codice_epiteto`),
  CONSTRAINT `codice_personaggio_FK_possiede` FOREIGN KEY (`codice_personaggio`) REFERENCES `personaggio` (`codice_personaggio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possiede`
--

LOCK TABLES `possiede` WRITE;
/*!40000 ALTER TABLE `possiede` DISABLE KEYS */;
INSERT INTO `possiede` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,3,2),(11,3,10),(12,20,11),(13,20,12),(14,20,13),(15,20,14),(16,21,2),(17,21,10),(18,38,11),(19,38,12),(20,38,14),(21,38,1),(22,38,15),(23,38,16),(24,39,2),(25,39,10),(26,39,113),(27,39,18),(28,43,1),(29,43,2),(30,43,3),(31,43,19),(32,43,20),(33,44,11),(34,44,12),(35,44,13),(36,44,14),(37,44,16),(38,45,2),(39,45,10),(40,45,21),(41,45,22),(42,47,208),(43,47,23),(44,47,10),(45,47,24),(46,47,25),(47,47,26),(48,48,27),(49,48,28),(50,48,29),(51,48,30),(52,49,31),(53,49,32),(54,51,208),(55,51,33),(56,52,30),(57,52,34),(58,54,2),(59,54,10),(60,54,113),(61,54,18),(62,55,35),(63,55,30),(64,55,34),(65,57,1),(66,57,36),(67,57,3),(68,57,37),(69,57,30),(70,57,5),(71,57,39),(72,57,40),(73,57,41),(74,57,42),(75,57,43),(76,57,44),(77,57,45),(78,58,11),(79,58,14),(80,58,46),(81,58,12),(82,60,1),(83,60,34),(84,60,3),(85,60,19),(86,60,20),(87,61,11),(88,61,14),(89,61,46),(90,61,12),(91,63,2),(92,63,34),(93,63,113),(94,63,18),(95,64,31),(96,64,35),(97,64,47),(98,66,3),(99,66,2),(100,66,48),(101,67,49),(102,67,50),(103,67,51),(104,67,13),(105,67,12),(106,67,14),(107,68,30),(108,70,2),(109,70,52),(110,70,37),(111,70,53),(112,71,54),(113,71,27),(114,71,28),(115,71,29),(116,72,2),(117,72,10),(118,72,55),(119,72,56),(120,74,11),(121,74,12),(122,74,13),(123,74,14),(124,74,30),(125,75,57),(126,75,58),(127,75,3),(128,77,2),(129,77,22),(130,78,31),(131,78,35),(132,78,30),(133,80,2),(134,80,10),(135,80,24),(136,80,59),(137,81,60),(138,81,47),(139,81,28),(140,83,2),(141,83,30),(142,83,24),(143,84,61),(144,84,62),(145,84,2),(146,84,63),(147,86,30),(148,86,34),(149,87,31),(150,87,29),(151,90,1),(152,90,2),(153,90,34),(154,90,30),(155,90,20),(156,91,11),(157,91,12),(158,91,13),(159,91,14),(160,91,15),(161,91,64),(162,92,65),(163,92,66),(164,92,67),(165,92,14),(166,94,57),(167,94,20),(168,94,68),(169,94,3),(170,95,69),(171,95,14),(172,95,27),(173,95,28),(174,95,29),(175,95,50),(176,95,51),(177,96,2),(178,96,10),(179,96,71),(180,96,72),(181,98,69),(182,98,35),(183,98,14),(184,98,11),(185,98,12),(186,98,15),(187,99,58),(188,99,3),(189,99,76),(190,99,20),(191,101,2),(192,101,10),(193,101,77),(194,101,56),(195,101,2),(196,101,78),(197,102,31),(198,102,28),(199,102,29),(200,104,11),(201,104,12),(202,104,13),(203,104,14),(204,104,79),(205,104,80),(206,104,81),(207,104,82),(208,104,83),(209,104,11),(210,104,12),(211,105,57),(212,105,84),(213,105,3),(214,105,37),(215,105,20),(216,107,11),(217,107,12),(218,107,14),(219,107,30),(220,108,69),(221,108,49),(222,108,50),(223,108,14),(224,20,86),(225,20,80),(226,20,85),(227,20,82),(228,20,11),(229,20,12),(230,41,34),(231,63,61),(232,63,22),(233,47,22),(234,110,2),(235,110,10),(236,110,113),(237,110,87),(238,111,31),(239,111,28),(240,111,29),(241,113,88),(242,113,2),(243,113,89),(244,113,90),(245,113,91),(246,114,92),(247,114,27),(248,114,30),(249,115,34),(250,115,30),(251,115,30),(252,114,93),(253,117,94),(254,117,37),(255,117,20),(256,117,30),(257,118,69),(258,118,95),(259,118,27),(260,118,28),(261,118,29),(262,119,57),(263,119,84),(264,119,3),(265,119,48),(266,121,2),(267,121,10),(268,121,55),(269,121,56),(270,122,31),(271,122,28),(272,122,29),(273,124,2),(274,124,24),(275,124,61),(276,124,96),(277,124,97),(278,125,30),(279,125,29),(280,125,34),(281,125,30),(282,127,2),(283,127,10),(284,127,24),(285,127,98),(286,127,2),(287,127,99),(288,127,100),(289,127,101),(290,127,102),(291,127,21),(292,127,103),(293,127,30),(294,128,31),(295,128,104),(296,128,47),(297,128,28),(298,128,29),(299,127,105),(300,130,34),(301,132,2),(302,132,3),(303,132,1),(304,134,84),(305,134,2),(306,134,3),(307,138,84),(308,138,2),(309,138,3),(310,140,1),(311,140,2),(312,140,3),(313,140,4),(314,141,11),(315,141,12),(316,141,13),(317,141,14),(318,143,2),(319,143,10),(320,145,2),(321,145,10),(322,147,2),(323,147,10),(324,147,77),(325,147,56),(326,147,106),(327,149,2),(328,149,10),(329,151,2),(330,151,10),(331,153,2),(332,153,10),(333,153,4),(334,153,107),(335,153,2),(336,154,31),(337,156,1),(338,156,2),(339,156,3),(340,156,4),(341,156,5),(342,156,6),(343,156,7),(344,156,108),(345,157,11),(346,157,12),(347,159,2),(348,159,10),(349,159,4),(350,159,109),(351,160,31),(352,160,35),(353,162,1),(354,162,36),(355,162,2),(356,162,3),(357,162,37),(358,162,20),(359,162,101),(360,163,11),(361,163,12),(362,163,13),(363,163,14),(364,164,57),(365,164,84),(366,164,3),(367,175,2),(368,175,10),(369,175,101),(370,175,24),(371,176,2),(372,176,110),(373,176,10),(374,177,31),(375,177,28),(376,177,29),(377,47,110),(378,195,1),(379,195,36),(380,195,2),(381,195,3),(382,195,37),(383,196,2),(384,196,10),(385,196,21),(386,196,111),(387,196,112),(388,198,113),(389,198,2),(390,198,114),(391,198,115),(392,200,1),(393,200,36),(394,200,2),(395,200,3),(396,200,37),(397,200,20),(398,200,7),(399,201,34),(400,201,13),(401,201,14),(402,201,15),(403,202,2),(404,202,110),(405,202,10),(406,202,30),(407,202,34),(408,202,30),(409,202,26),(410,204,118),(411,204,119),(412,204,120),(413,206,11),(414,206,12),(415,206,13),(416,206,14),(417,206,121),(418,206,122),(419,207,2),(420,207,10),(421,207,21),(422,207,111),(423,207,30),(424,209,11),(425,209,12),(426,209,13),(427,209,14),(428,209,79),(429,210,123),(430,210,28),(431,210,29),(432,210,124),(433,212,1),(434,212,2),(435,212,3),(436,212,37),(437,212,20),(438,212,116),(439,212,117),(440,213,11),(441,213,12),(442,213,13),(443,213,14),(444,213,79),(445,214,57),(446,214,84),(447,214,3),(448,214,37),(449,214,20),(450,215,2),(451,215,10),(452,215,77),(453,215,56),(454,215,2),(455,215,78),(456,216,47),(457,216,27),(458,216,28),(459,216,29),(460,218,4),(461,218,1),(462,218,19),(463,218,2),(464,218,3),(465,219,11),(466,219,12),(467,219,125),(468,219,126),(469,221,2),(470,221,3),(471,221,127),(472,221,128),(473,221,129),(474,222,130),(475,222,13),(476,222,12),(477,224,2),(478,224,10),(479,224,77),(480,224,56),(481,224,2),(482,225,2),(483,225,131),(484,225,132),(485,225,128),(486,225,133),(487,227,2),(488,227,10),(489,227,101),(490,227,24),(491,228,2),(492,228,134),(493,228,10),(494,228,24),(495,228,25),(496,228,26),(497,230,2),(498,230,10),(499,230,101),(500,230,24),(501,231,61),(502,231,62),(503,231,2),(504,231,63),(505,233,2),(506,233,10),(507,233,71),(508,233,72),(509,235,2),(510,235,10),(511,235,2),(512,235,99),(513,236,31),(514,238,2),(515,238,10),(516,238,13),(517,238,21),(518,238,22),(519,239,136),(520,239,135),(521,241,2),(522,241,10),(523,241,137),(524,241,72),(525,242,2),(526,242,99),(527,244,88),(528,244,2),(529,244,138),(530,244,139),(531,244,140),(532,245,92),(533,245,93),(534,245,123),(535,245,141),(536,245,27),(537,245,28),(538,245,29),(539,247,2),(540,247,139),(541,248,2),(542,248,99),(543,250,208),(544,250,110),(545,250,10),(546,250,24),(547,250,25),(548,252,2),(549,252,10),(550,252,77),(551,252,56),(552,252,2),(553,252,78),(554,253,31),(555,253,135),(556,253,47),(557,253,27),(558,253,28),(559,253,29),(560,255,2),(561,255,10),(562,255,142),(563,257,1),(564,257,3),(565,257,37),(566,257,4),(567,257,143),(568,257,144),(569,257,145),(570,258,11),(571,258,12),(572,258,13),(573,258,14),(574,260,57),(575,260,84),(576,260,3),(577,262,2),(578,262,10),(579,262,147),(580,262,135),(581,262,148),(582,262,135),(583,263,31),(584,265,34),(585,267,34),(586,269,1),(587,269,2),(588,269,3),(589,271,149),(590,273,11),(591,273,12),(592,273,13),(593,273,14),(594,274,2),(595,274,3),(596,274,13),(597,275,20),(598,275,4),(599,275,5),(600,275,6),(601,275,7),(602,275,150),(603,275,34),(604,276,11),(605,276,12),(606,276,125),(607,277,57),(608,277,84),(609,277,3),(610,279,34),(611,281,34),(612,283,34),(613,285,135),(614,285,2),(615,285,89),(616,287,34),(617,287,151),(618,289,2),(619,289,10),(620,289,4),(621,289,109),(622,290,2),(623,290,10),(624,291,28),(625,291,29),(626,293,2),(627,293,10),(628,293,34),(629,293,98),(630,293,135),(631,293,4),(632,293,152),(633,293,153),(634,293,135),(635,293,2),(636,293,10),(637,293,154),(638,294,2),(639,294,10),(640,294,142),(641,295,155),(642,297,1),(643,297,2),(644,297,3),(645,297,37),(646,297,156),(647,297,4),(648,297,5),(649,297,157),(650,297,7),(651,297,108),(652,297,9),(653,297,2),(654,297,140),(655,298,11),(656,298,12),(657,298,13),(658,298,14),(659,299,2),(660,299,158),(661,301,159),(662,301,2),(663,301,140),(664,302,130),(665,302,13),(666,302,34),(667,304,160),(668,304,37),(669,304,94),(670,305,69),(671,305,161),(672,305,28),(673,305,162),(674,305,14),(675,306,2),(676,306,10),(677,306,113),(678,306,18),(679,308,57),(680,308,20),(681,308,68),(682,308,3),(683,309,2),(684,309,10),(685,309,77),(686,309,56),(687,309,2),(688,309,78),(689,310,31),(690,310,28),(691,310,29),(692,312,1),(693,312,2),(694,312,3),(695,312,37),(696,312,20),(697,312,4),(698,312,163),(699,312,164),(700,312,165),(701,312,2),(702,312,166),(703,312,37),(704,313,2),(705,313,10),(706,313,113),(707,313,18),(708,315,2),(709,315,167),(710,315,168),(711,315,169),(712,315,170),(713,316,171),(714,316,27),(715,316,28),(716,316,29),(717,316,50),(718,316,49),(719,318,172),(720,319,172),(721,320,172),(722,322,172),(723,323,172),(724,325,172),(725,327,2),(726,327,10),(727,327,71),(728,327,72),(729,328,31),(730,328,173),(731,328,174),(732,328,175),(733,328,150),(734,328,176),(735,328,135),(736,330,2),(737,330,10),(738,330,77),(739,330,56),(740,330,177),(741,332,140),(742,332,2),(743,332,59),(744,332,178),(745,332,179),(746,332,180),(747,332,128),(748,332,182),(749,333,69),(750,333,49),(751,333,27),(752,333,28),(753,333,29),(754,335,2),(755,335,10),(756,335,101),(757,335,175),(758,335,5),(759,335,135),(760,337,182),(761,338,11),(762,338,12),(763,338,13),(764,338,14),(765,338,15),(766,338,86),(767,338,80),(768,338,85),(769,338,82),(770,338,83),(771,338,135),(772,338,11),(773,338,14),(774,339,2),(775,339,10),(776,339,77),(777,339,56),(778,339,142),(779,341,2),(780,341,10),(781,341,77),(782,341,56),(783,341,142),(784,341,175),(785,341,144),(786,341,135),(787,342,31),(788,342,183),(789,344,2),(790,344,10),(791,344,144),(792,344,184),(793,344,175),(794,344,5),(795,344,185),(796,344,135),(797,346,2),(798,346,10),(799,346,71),(800,346,72),(801,346,55),(802,346,56),(803,346,34),(804,346,175),(805,346,5),(806,346,186),(807,346,34),(808,347,31),(809,349,172),(810,350,172),(811,352,172),(812,354,172),(813,355,172),(814,356,172),(815,358,187),(816,358,140),(817,358,2),(818,358,94),(819,359,172),(820,360,2),(821,360,10),(822,360,113),(823,360,18),(824,362,2),(825,362,10),(826,362,21),(827,362,111),(828,362,112),(829,364,2),(830,364,10),(831,364,113),(832,364,18),(833,365,31),(834,365,28),(835,365,29),(836,366,2),(837,366,167),(838,367,2),(839,368,188),(840,369,188),(841,371,69),(842,371,35),(843,372,2),(844,372,189),(845,374,135),(846,374,190),(847,375,11),(848,375,14),(849,375,191),(850,375,69),(851,375,35),(852,375,34),(853,376,2),(854,376,10),(855,376,4),(856,376,5),(857,376,192),(858,376,7),(859,376,108),(860,376,193),(861,378,2),(862,378,10),(863,378,21),(864,378,194),(865,378,195),(866,379,69),(867,379,196),(868,379,28),(869,379,29),(870,379,197),(871,379,198),(872,379,199),(873,379,34),(874,379,200),(875,381,11),(876,381,12),(877,382,201),(878,382,2),(879,382,10),(880,383,202),(881,383,2),(882,383,167),(883,383,168),(884,383,169),(885,383,140),(886,383,4),(887,383,203),(888,383,204),(889,384,135),(890,384,140),(891,384,4),(892,384,140),(893,384,204),(894,384,205),(895,384,206),(896,385,2),(897,385,167),(898,387,140),(899,388,188),(900,390,2),(901,390,167),(902,390,168),(903,390,169),(904,391,201),(905,391,208),(906,391,4),(907,391,201),(908,391,2),(909,391,10),(910,391,152),(911,391,209),(912,393,69),(913,393,210),(914,393,27),(915,393,28),(916,394,57),(917,394,20),(918,395,172),(919,397,69),(920,397,172),(921,398,172),(922,399,172),(923,400,172),(924,402,172),(925,403,34),(926,405,34),(927,406,34),(928,407,211),(929,407,212),(930,409,172),(931,410,172),(932,413,34),(933,414,34),(934,414,4),(935,414,213),(936,414,168),(937,414,34),(938,415,57),(939,415,84),(940,415,10),(941,415,34),(942,415,214),(943,415,71),(944,415,215),(945,415,216),(946,415,217),(947,416,201),(948,416,218),(949,416,219),(950,416,34),(951,417,69),(952,417,34),(953,415,71),(954,415,34),(955,419,172),(956,420,172),(957,421,172),(958,423,34),(959,424,34),(960,426,2),(961,426,201),(962,426,2),(963,426,167),(964,428,34),(965,428,220),(966,428,34),(967,428,4),(968,428,34),(969,429,69),(970,429,34),(971,429,14),(972,429,27),(973,429,34),(974,431,57),(975,431,84),(976,431,140),(977,433,201),(978,433,10),(979,433,4),(980,433,34),(981,434,34),(982,434,196),(983,434,34),(984,436,34),(985,436,151),(986,436,34),(987,436,221),(988,367,222),(989,436,223),(990,436,224),(991,436,135),(992,436,2),(993,436,89),(994,438,57),(995,438,84),(996,438,2),(997,438,220),(998,438,213),(999,438,225),(1000,438,226),(1001,438,227),(1002,438,228),(1003,438,135),(1004,438,2),(1005,438,167),(1006,438,34),(1007,440,57),(1008,440,220),(1009,442,201),(1010,442,2),(1011,442,10),(1012,443,35),(1013,443,14),(1014,443,229),(1015,444,34),(1016,444,150),(1017,446,2),(1018,446,230),(1019,448,69),(1020,448,35),(1021,448,14),(1022,450,2),(1023,451,4),(1024,451,57),(1025,455,2),(1026,455,4),(1027,455,135),(1028,455,201),(1029,455,2),(1030,456,69),(1031,453,2),(1032,458,172),(1033,459,172),(1034,460,172),(1035,462,172),(1036,463,172),(1037,464,172),(1038,466,172),(1039,467,172),(1040,468,172),(1041,344,231),(1042,102,232),(1043,111,232),(1044,122,232),(1045,154,232),(1046,177,232),(1047,206,232),(1048,236,232),(1049,291,232),(1050,295,234),(1051,310,232),(1052,328,233),(1053,342,232),(1054,347,233),(1055,365,232),(1056,163,232);
/*!40000 ALTER TABLE `possiede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `possiedev`
--

DROP TABLE IF EXISTS `possiedev`;
/*!50001 DROP VIEW IF EXISTS `possiedev`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `possiedev` AS SELECT 
 1 AS `codice_possiede`,
 1 AS `codice_personaggio`,
 1 AS `codice_epiteto`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `riceve`
--

DROP TABLE IF EXISTS `riceve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riceve` (
  `codice_riceve` int NOT NULL,
  `codice_sovrano` int DEFAULT NULL,
  `codice_dono` int DEFAULT NULL,
  PRIMARY KEY (`codice_riceve`),
  KEY `codice_dono_FK_riceve_idx` (`codice_dono`),
  KEY `codice_sovrano_FK_riceve_idx` (`codice_sovrano`),
  CONSTRAINT `codice_dono_FK_riceve` FOREIGN KEY (`codice_dono`) REFERENCES `dono` (`codice_dono`),
  CONSTRAINT `codice_sovrano_FK_riceve` FOREIGN KEY (`codice_sovrano`) REFERENCES `personaggio` (`codice_personaggio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riceve`
--

LOCK TABLES `riceve` WRITE;
/*!40000 ALTER TABLE `riceve` DISABLE KEYS */;
INSERT INTO `riceve` VALUES (1,1,1),(2,1,2),(3,19,3),(4,19,4),(5,37,5),(6,37,4),(7,42,4),(8,42,6),(9,42,7),(10,46,5),(11,46,8),(12,46,9),(13,50,7),(14,50,10),(15,53,12),(16,53,11),(17,56,4),(18,56,13),(19,59,4),(20,59,13),(21,62,14),(22,62,15),(23,65,16),(24,65,17),(25,65,4),(26,69,5),(27,69,18),(28,69,4),(29,73,19),(30,73,20),(31,76,21),(32,76,15),(33,79,5),(34,79,23),(35,82,24),(36,82,25),(37,85,26),(38,85,27),(39,88,28),(40,88,29),(41,88,3),(42,93,30),(43,93,31),(44,93,32),(45,97,33),(46,97,34),(47,100,32),(48,100,35),(49,103,36),(50,103,37),(51,106,38),(52,106,39),(53,108,40),(54,108,41),(55,112,42),(56,112,43),(57,112,34),(58,116,41),(59,116,42),(60,116,3),(61,120,1),(62,120,22),(63,123,45),(64,123,46),(65,126,47),(66,126,41),(67,129,22),(68,131,22),(69,133,48),(70,137,1),(71,139,1),(72,139,1),(73,142,49),(74,144,50),(75,146,1),(76,148,51),(77,150,1),(78,152,1),(79,152,1),(80,155,41),(81,155,22),(82,158,53),(83,158,52),(84,161,45),(85,161,54),(86,161,55),(87,174,24),(88,174,25),(89,174,56),(90,194,1),(91,194,57),(92,197,58),(93,199,59),(94,199,15),(95,199,60),(96,203,61),(97,205,62),(98,205,63),(99,208,15),(100,208,64),(101,211,45),(102,211,65),(103,211,66),(104,211,67),(105,211,38),(106,217,1),(107,217,42),(108,220,69),(109,220,34),(110,223,11),(111,223,70),(112,226,24),(113,226,25),(114,229,24),(115,229,25),(116,232,15),(117,234,71),(118,234,63),(119,237,55),(120,237,1),(121,240,8),(122,240,72),(123,243,68),(124,243,64),(125,246,73),(126,246,74),(127,249,75),(128,251,32),(129,251,56),(130,254,1),(131,256,22),(132,256,1),(133,259,1),(134,261,22),(135,261,1),(136,264,22),(137,266,22),(138,268,1),(139,270,1),(140,272,1),(141,274,22),(142,274,1),(143,274,1),(144,278,22),(145,280,22),(146,282,22),(147,284,1),(148,286,1),(149,288,1),(150,288,1),(151,288,1),(152,292,76),(153,292,1),(154,292,1),(155,296,77),(156,296,1),(157,296,1),(158,300,1),(159,300,70),(160,303,11),(161,303,1),(162,303,1),(163,307,78),(164,307,1),(165,307,1),(166,311,53),(167,311,1),(168,314,79),(169,314,1),(170,317,80),(171,317,80),(172,317,80),(173,321,80),(174,321,80),(175,324,80),(176,326,81),(177,326,82),(178,329,83),(179,331,1),(180,331,1),(181,334,1),(182,336,1),(183,336,1),(184,336,1),(185,340,1),(186,340,1),(187,343,22),(188,345,22),(189,345,1),(190,348,80),(191,348,80),(192,351,80),(193,353,80),(194,357,80),(195,357,80),(196,357,1),(197,361,84),(198,363,85),(199,363,1),(200,366,22),(201,366,53),(202,366,86),(203,370,87),(204,370,22),(205,373,1),(206,373,1),(207,373,88),(208,377,89),(209,377,90),(210,380,1),(211,380,1),(212,380,1),(213,384,1),(214,386,1),(215,386,1),(216,389,65),(217,389,91),(218,392,1),(219,392,1),(220,392,80),(221,396,80),(222,396,80),(223,396,80),(224,396,80),(225,401,80),(226,401,22),(227,404,22),(228,404,22),(229,404,22),(230,408,80),(231,408,80),(232,411,22),(233,411,22),(234,415,22),(235,417,22),(236,418,80),(237,418,80),(238,418,80),(239,422,22),(240,425,1),(241,427,22),(242,427,22),(243,430,1),(244,432,22),(245,432,22),(246,435,81),(247,437,22),(248,439,1),(249,441,1),(250,443,22),(251,445,1),(252,447,93),(253,449,1),(254,449,22),(255,452,22),(256,452,1),(257,457,80),(258,457,80),(259,457,80),(260,461,80),(261,461,80),(262,461,80),(263,465,80),(264,466,80),(265,467,80);
/*!40000 ALTER TABLE `riceve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ricevev`
--

DROP TABLE IF EXISTS `ricevev`;
/*!50001 DROP VIEW IF EXISTS `ricevev`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ricevev` AS SELECT 
 1 AS `codice_riceve`,
 1 AS `codice_sovrano`,
 1 AS `codice_dono`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `scena`
--

DROP TABLE IF EXISTS `scena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scena` (
  `codice_scena` int NOT NULL,
  `sigla_scena` varchar(10) DEFAULT NULL,
  `n_scena` int DEFAULT NULL COMMENT 'Indicare se prima, seconda, terza, ecc.',
  `registro` int DEFAULT NULL COMMENT 'Indicare se primo, secondo, terzo, ecc.',
  `codice_titolo_scena` int DEFAULT NULL,
  `offerta_iconografia` varchar(255) DEFAULT NULL,
  `n_personaggi` int DEFAULT NULL,
  `oggetti_presenti` varchar(255) DEFAULT NULL COMMENT 'Indicare se sono presenti oggetti come tavoli con offerte, ecc.',
  `stato_scena` varchar(255) DEFAULT NULL COMMENT 'Indicare se la scena è distrutta, parzialmente conservata o ben conservata.',
  `codice_parte` int DEFAULT NULL,
  `codice_tempio` int DEFAULT NULL,
  PRIMARY KEY (`codice_scena`),
  KEY `codice_tempio_FK_scena_idx` (`codice_tempio`),
  KEY `codice_parte_FK_scena_idx` (`codice_parte`),
  KEY `codice_titolo_scena_FK_scena_idx` (`codice_titolo_scena`),
  CONSTRAINT `codice_parte_FK_scena` FOREIGN KEY (`codice_parte`) REFERENCES `parte` (`codice_parte`),
  CONSTRAINT `codice_tempio_FK_scena` FOREIGN KEY (`codice_tempio`) REFERENCES `tempio` (`codice_tempio`),
  CONSTRAINT `codice_titolo_scena_FK_scena` FOREIGN KEY (`codice_titolo_scena`) REFERENCES `titolo_scena` (`codice_titolo_scena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scena`
--

LOCK TABLES `scena` WRITE;
/*!40000 ALTER TABLE `scena` DISABLE KEYS */;
INSERT INTO `scena` VALUES (1,'KB1',1,0,1,'two heset vases',7,NULL,'good',1,1),(2,'KB1',1,0,1,'two heset vases',6,NULL,'good',2,1),(3,'KB1',1,0,1,'two heset vases',5,NULL,'good',3,1),(4,'KB2',1,0,1,'two heset vases',7,NULL,'good',4,1),(5,'KB2',1,0,1,'two heset vases',6,NULL,'good',5,1),(6,'KB2',1,0,1,'two heset vases',6,NULL,'good',6,1),(7,'KB3',1,1,2,'not defined',3,NULL,'good',7,1),(8,'KB4',2,1,3,'wdjat eye on a nb sign',2,NULL,'partially damaged',7,1),(9,'KB5',1,1,4,'life and power',4,'sꜣ sign behind the king','good',8,1),(10,'KB6',2,1,5,'worship',4,NULL,'partially damaged',8,1),(11,'KB7',1,1,6,'destroyed',3,NULL,'partially damaged',9,1),(12,'KB8',2,1,7,'incense',3,NULL,'partially damaged',9,1),(13,'KB9',3,1,8,'incense',3,NULL,'partially damaged',9,1),(14,'KB10',1,2,9,'ḥḥ sign on a nb sign, the other hand is raised',3,NULL,'good',7,1),(15,'KB11',2,2,10,'destroyed',3,NULL,'partially damaged',7,1),(16,'KB12',1,2,11,'red crown and white crown',4,NULL,'good',8,1),(17,'KB13',2,2,12,'Maat on a nb sign',4,'three thrones','good',8,1),(18,'KB14',1,2,13,'two papyrus stems',3,'two thrones','good',9,1),(19,'KB15',2,2,14,'two irtt vases',3,'one throne','partially damaged',9,1),(20,'KB16',3,2,15,'two clothes',3,'two thrones','partially damaged',9,1),(21,'KB17',1,1,16,'two nw vases',3,NULL,'partially damaged',7,1),(22,'KB18',2,1,17,'five vases on a tray',3,NULL,'partially damaged',7,1),(23,'KB19',1,1,18,'Maat on a nb sign',5,NULL,'good',10,1),(24,'KB20',2,1,16,'two nw vases',4,NULL,'good',10,1),(25,'KB21',1,1,19,'two lotus flowers',3,NULL,'good',9,1),(26,'KB22',2,1,6,'one vase',3,NULL,'partially damaged',9,1),(27,'KB23',3,1,7,'incense',3,NULL,'partially damaged',9,1),(28,'KB24',1,2,20,'two mirrors',3,NULL,'partially damaged',7,1),(29,'KB25',2,2,21,'two weaved palm branches',3,NULL,'partially damaged',7,1),(30,'KB26',1,2,22,'one ẖnm vase',4,NULL,'partially damaged',10,1),(31,'KB27',2,2,23,'Maat on a nb sign',4,NULL,'partially damaged',10,1),(32,'KB28',1,2,24,'two lotus flowers',3,NULL,'partially damaged',9,1),(33,'KB29',2,2,25,'two pieces of cloth',3,NULL,'partially damaged',9,1),(34,'KB30',3,2,26,'two irtt vases',3,NULL,'partially damaged',9,1),(35,'KB31',1,1,5,'destroyed',2,NULL,'hardly damaged',11,1),(36,'KB32',1,2,5,'libation and incense',2,'altar (destroyed)','partially damaged',11,1),(37,'KB33',1,3,27,'piece of fabric (?)',2,NULL,'good',11,1),(38,'KB34',1,4,28,'two plant stems',2,NULL,'good',11,1),(39,'KB35',1,1,5,'nw vase',2,NULL,'partially damaged',12,1),(40,'KB36',2,1,29,'red crown and white crown',3,NULL,'partially damaged',12,1),(41,'KB37',1,2,30,'fields',2,NULL,'good',13,1),(42,'KB38',1,3,34,'incense and libation',2,'altar with bread on the top of it','good',13,1),(43,'KB39',1,4,32,'two irtt vases',2,NULL,'good',13,1),(44,'KB40',1,5,16,'nw vase',2,NULL,'good',13,1),(45,'KB41',1,1,32,'one irtt vase',2,NULL,'good',14,1),(46,'KB42',2,1,29,'red crown and white crown',3,NULL,'good',14,1),(47,'KB43',1,1,32,'two jrtt vases',3,NULL,'partially damaged',15,1),(48,'KB44',2,1,7,'incense',3,NULL,'partially damaged',16,1),(49,'KB45',1,0,33,'tray full of bread',5,'there is one animal for each one of the nile gods: bulls, geese, gazelle','good',17,1),(50,'KB45',1,0,33,'tray full of bread',4,'there is one animal for each one of the nile gods: bulls, geese, gazelle','good',18,1),(51,'KB45',1,0,33,'tray full of bread',4,NULL,'good',19,1),(52,'KB46',1,0,33,'destroyed tray',7,NULL,'partially damaged',17,1),(53,'KB46',1,0,33,'destroyed tray',7,NULL,'partially damaged',20,1),(54,'KB46',1,0,33,'destroyed tray',6,NULL,'partially damaged',19,1),(55,'KB47',1,1,34,'incense and libation',3,NULL,'good',21,1),(56,'KB48',1,1,35,'incense',2,'brazier','good',22,1),(57,'KB49',2,1,14,'libation',4,'altar with bread, liquids and birds. On both isdes of the altar there are two vases','good',22,1),(58,'KB50',3,1,5,'incense',2,'destroyed brazier','partially damaged',22,1),(59,'KB51',1,1,33,'bread and liquids',3,NULL,'partially damaged',23,1),(60,'KB52',1,2,36,'sehem scepter',3,NULL,'partially damaged',21,1),(61,'KB53',1,2,22,'censer and libation',6,'altar with offerings','good',22,1),(62,'KB54',1,2,22,'libation from two vases',3,'altar with bread and flowers','partially damaged',23,1),(63,'KB55',1,1,16,'two nw vases',3,NULL,'partially damaged',21,1),(64,'KB56',2,1,16,'one irtt vase',3,NULL,'partially damaged',21,1),(65,'KB57',1,1,16,'two nw vases',3,NULL,'good',24,1),(66,'KB58',2,1,32,'libation',3,'altar with bread, vases and birds, between two bronze vases similar to the one that the king is holding','partially damaged',24,1),(67,'KB59',1,1,7,'incense and libation',2,'altar with bread, flowers and birds','good',23,1),(68,'KB60',2,1,33,'tray full of bread and vases',3,NULL,'partially damaged',23,1),(69,'KB61',1,2,5,'wine vase (?)',3,NULL,'partially damaged',21,1),(70,'KB62',2,2,37,'incense',3,NULL,'good',21,1),(71,'KB63',1,2,38,'one ẖnm vase',3,NULL,'good',24,1),(72,'KB64',3,2,18,'Maat on a nb sign',3,NULL,'good',24,1),(73,'KB65',1,2,8,'libation',2,'alta rcovered with goods','good',23,1),(74,'KB66',2,2,39,'incense and libation',3,'alta rcovered with goods','good',23,1),(75,'KB67',1,1,5,'destroyed',2,NULL,'partially damaged',26,1),(76,'KB68',2,1,16,'two nw vases',3,NULL,'partially damaged',26,1),(77,'KB69',1,1,40,'wdjat eye on a nb sign',2,NULL,'partially damaged',28,1),(78,'KB70',2,1,18,'Maat on a nb sign',3,NULL,'hardly damaged',28,1),(79,'KB71',1,1,5,'destroyed',2,NULL,'hardly damaged',29,1),(80,'KB72',1,2,5,'destroyed',2,NULL,'hardly damaged',29,1),(81,'KB73',1,3,41,'destroyed',2,NULL,'hardly damaged',29,1),(82,'KB74',1,4,5,'destroyed',2,NULL,'hardly damaged',29,1),(83,'KB75',1,5,16,'two nw vases',2,NULL,'hardly damaged',29,1),(84,'KB76',1,1,22,'ḥst vase',4,NULL,'partially damaged',30,1),(85,'KB77',1,1,5,'destroyed',2,NULL,'hardly damaged',31,1),(86,'KB78',1,2,5,'fields',2,NULL,'hardly damaged',31,1),(87,'KB79',1,3,41,'two nw vases',2,NULL,'hardly damaged',31,1),(88,'KB80',1,4,5,'destroyed',2,NULL,'hardly damaged',31,1),(89,'KB81',1,5,7,'incense',2,NULL,'hardly damaged',31,1),(90,'KB82',1,1,42,'ḥst vase and flogger',4,NULL,'partially damaged',32,1),(91,'KB83',1,1,43,'tray full of bread, vases and flowers',4,NULL,'good',33,1),(92,'KB84',1,1,43,'tray full of bread, vases and flowers',4,NULL,'partially damaged',33,1),(93,'KB85',1,2,41,'necklace?',3,NULL,'partially damaged',34,1),(94,'KB86',1,2,44,'incense',4,NULL,'partially damaged',35,1),(95,'KB87',2,2,40,'wdjat eye on a nb sign',4,NULL,'good',35,1),(96,'KB88',1,2,16,'two nw vases',3,NULL,'good',36,1),(97,'KB89',1,3,16,'two nw vases',3,'over the  head of the king there is a falcon that brings an ankh and a shenu','good',34,1),(98,'KB90',1,3,45,'incense',4,NULL,'good',35,1),(99,'KB91',2,3,45,'fields',3,NULL,'good',35,1),(100,'KB92',1,3,45,'sehem scepter',2,'two libation vases and an object between them on a tray. Beneath it, there asre heads, paws, bodies of animals like oxen and antelopes','good',36,1),(101,'KB93',1,1,7,'incense',3,NULL,'partially damaged',37,1),(102,'KB94',2,1,32,'two irtt vases',2,NULL,'good',37,1),(103,'KB95',1,2,46,'ẖnm vase',3,NULL,'partially damaged',34,1),(104,'KB96',2,2,40,'wdjat eye on a nb sign',2,NULL,'good',34,1),(105,'KB97',1,2,47,'two trees',4,'behind Min there is a small shrine','good',37,1),(106,'KB98',2,2,34,'incense and libation',3,NULL,'good',37,1),(107,'KB99',1,2,7,'incense',2,NULL,'good',36,1),(108,'KB100',2,2,48,'two jrtt vases',3,NULL,'partially damaged',36,1),(109,'KB101',1,3,45,'fields',3,NULL,'good',34,1),(110,'KB102',2,3,45,'scepter?',2,NULL,'good',34,1),(111,'KB103',1,3,45,'adoration',4,'Ptah is cloaked and seated inside a naos decorated with uraeus with solar discs. Upon the head of the king there is the hieroglyphic sign of the sky ','good',37,1),(112,'KB104',2,3,12,'Maat on a nb sign',4,NULL,'good',37,1),(113,'KB105',1,3,16,'two nw vases',2,NULL,'good',36,1),(114,'KB106',2,3,49,'adoration',3,NULL,'good',36,1),(115,'KB107',1,1,45,'Maat on a tray',4,NULL,'hardly damaged',38,1),(116,'KB108',2,1,45,'adoration',3,NULL,'hardly damaged',38,1),(117,'KB109',1,2,5,'wdjat eye on a nb sign',4,'Isis is nursing Horus, who is seated on her legs','partially damaged',38,1),(118,'KB110',2,2,50,'fields',3,NULL,'partially damaged',38,1),(119,'KB111',1,3,30,'fields',4,NULL,'good',38,1),(120,'KB112',2,3,30,'greeting',2,NULL,'good',38,1),(121,'KB113',2,3,51,'two nw vases',3,'Min is standing on a small step','good',38,1),(122,'KB114',1,4,52,'red crown and white crown',3,NULL,'good',38,1),(123,'KB115',2,4,12,'Maat on a nb sign',4,'the sphinx is seated on a small step','good',38,1),(124,'KB116',1,1,45,'vases?',5,'upon the scene there is the hieroglyphic sign of the sky. Behind the sphynx there is a winged solar disc with an uraeus in the middle of it','hardly damaged',39,1),(125,'KB117',2,1,5,'adoration',3,'the Ba bird is perched on a support. It is surrounded by flowers and unopened lotuses','hardly damaged',39,1),(126,'KB118',1,2,5,'sehem scepter',4,'Khonsu? is standing on a small step','hardly damaged',39,1),(127,'KB119',2,2,45,'piece of cloth? and plate?',3,NULL,'hardly damaged',39,1),(128,'KB120',1,3,45,'adoration',4,'behind the king, there is a female deity with the hieroglyph of the fields as headgear. Upon the scene there is the hieroglyphic sign of the sky','hardly damaged',39,1),(129,'KB121',2,3,45,'red crown and white crown',3,'the king is not depicted. There is a double offer','partially damaged',39,1),(130,'KB122',1,4,45,'captive',4,'upon the scene there is the hieroglyphic sign of the sky. The captive has long hair and a beard. His hands and ankles are chained. He is on his knees','good',39,1),(131,'KB123',2,4,45,'incense',3,'upon the scene there is the hieroglyphic sign of the sky','partially damaged',39,1),(132,'KB124',1,1,45,'two jrtt vases?',2,NULL,'good',40,1),(133,'KB125',2,1,5,'destroyed',3,NULL,'hardly damaged',40,1),(134,'KB126',1,1,45,'adoration',2,NULL,'good',41,1),(135,'KB127',2,1,45,'Maat on a nb sign',3,NULL,'hardly damaged',41,1),(136,'KB128',1,1,5,'destroyed',2,NULL,'hardly damaged',42,1),(137,'KB129',1,1,5,'two nw vases',2,NULL,'partially damaged',43,1),(138,'KB130',1,2,5,'destroyed',2,NULL,'hardly damaged',44,1),(139,'KB131',1,3,40,'wdjat eye on a nb sign',2,NULL,'partially damaged',44,1),(140,'KB132',1,1,45,'ankh',2,'Isis gives the ankh sign to Merur','partially damaged',45,1),(141,'KB133',1,2,45,'incense and libation',2,'altar loaded with bread and flowers','partially damaged',45,1),(142,'KB134',1,3,18,'Maat on a nb sign',2,NULL,'good',45,1),(143,'KB135',1,1,45,'adoration',3,'behind the king, there are two genies facing each other, wearing an Atef crown (B7)','partially damaged',46,1),(144,'KB136',1,1,45,'little god and adoration',5,'the little god is standing on an altar. The male genie  brings a plate with two libation vases and a piece of bread beneath them. The female genie offers trees ','partially damaged',47,1),(145,'KB137',1,1,45,'fields',4,NULL,'partially damaged',48,1),(146,'KB138',1,1,45,'incense',4,NULL,'good',48,1),(147,'KB139',2,1,34,'incense and libation',4,'Isis is touching the head of Osiris with an ankh. There is an altar loading bread and flowers','good',48,1);
/*!40000 ALTER TABLE `scena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `scenav`
--

DROP TABLE IF EXISTS `scenav`;
/*!50001 DROP VIEW IF EXISTS `scenav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `scenav` AS SELECT 
 1 AS `codice_scena`,
 1 AS `sigla_scena`,
 1 AS `n_scena`,
 1 AS `registro`,
 1 AS `codice_titolo_scena`,
 1 AS `offerta_iconografia`,
 1 AS `n_personaggi`,
 1 AS `oggetti_presenti`,
 1 AS `stato_scena`,
 1 AS `codice_parte`,
 1 AS `codice_tempio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sovrano_elenco`
--

DROP TABLE IF EXISTS `sovrano_elenco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sovrano_elenco` (
  `codice_sovrano_elenco` int NOT NULL,
  `nome_sovrano_elenco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codice_sovrano_elenco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sovrano_elenco`
--

LOCK TABLES `sovrano_elenco` WRITE;
/*!40000 ALTER TABLE `sovrano_elenco` DISABLE KEYS */;
INSERT INTO `sovrano_elenco` VALUES (1,'Augustus');
/*!40000 ALTER TABLE `sovrano_elenco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sovrano_personaggio`
--

DROP TABLE IF EXISTS `sovrano_personaggio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sovrano_personaggio` (
  `codice_sovrano` int NOT NULL,
  `codice_personaggio_sovrano` int NOT NULL,
  `codice_scena_sovrano` int DEFAULT NULL,
  PRIMARY KEY (`codice_sovrano`,`codice_personaggio_sovrano`),
  KEY `codice_scena_FK_sovrano_idx` (`codice_scena_sovrano`),
  KEY `codice_personaggio_FK_sovrano_idx` (`codice_personaggio_sovrano`),
  CONSTRAINT `codice_personaggio_FK_sovrano` FOREIGN KEY (`codice_personaggio_sovrano`) REFERENCES `personaggio` (`codice_personaggio`),
  CONSTRAINT `codice_scena_FK_sovrano` FOREIGN KEY (`codice_scena_sovrano`) REFERENCES `scena` (`codice_scena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sovrano_personaggio`
--

LOCK TABLES `sovrano_personaggio` WRITE;
/*!40000 ALTER TABLE `sovrano_personaggio` DISABLE KEYS */;
INSERT INTO `sovrano_personaggio` VALUES (26,109,NULL),(27,112,NULL),(28,116,NULL),(29,120,NULL),(30,123,NULL),(31,126,NULL),(32,129,NULL),(33,131,NULL),(34,133,NULL),(35,135,NULL),(36,137,NULL),(37,139,NULL),(38,142,NULL),(39,144,NULL),(40,146,NULL),(41,148,NULL),(42,150,NULL),(43,152,NULL),(44,155,NULL),(45,158,NULL),(46,161,NULL),(47,174,NULL),(48,194,NULL),(49,197,NULL),(50,199,NULL),(51,203,NULL),(52,205,NULL),(53,208,NULL),(54,211,NULL),(55,217,NULL),(56,220,NULL),(57,223,NULL),(58,226,NULL),(59,229,NULL),(60,232,NULL),(61,234,NULL),(62,237,NULL),(63,240,NULL),(64,243,NULL),(65,246,NULL),(66,249,NULL),(67,251,NULL),(68,252,NULL),(69,256,NULL),(70,256,NULL),(71,259,NULL),(72,261,NULL),(73,264,NULL),(74,266,NULL),(75,268,NULL),(76,270,NULL),(77,272,NULL),(78,274,NULL),(79,278,NULL),(80,280,NULL),(81,282,NULL),(82,284,NULL),(83,286,NULL),(84,288,NULL),(85,292,NULL),(86,296,NULL),(87,300,NULL),(88,303,NULL),(89,307,NULL),(90,311,NULL),(91,314,NULL),(92,317,NULL),(93,321,NULL),(94,324,NULL),(95,326,NULL),(96,329,NULL),(97,331,NULL),(98,334,NULL),(99,336,NULL),(100,340,NULL),(101,343,NULL),(102,345,NULL),(103,348,NULL),(104,351,NULL),(105,353,NULL),(106,357,NULL),(107,361,NULL),(108,363,NULL),(109,366,NULL),(110,370,NULL),(111,373,NULL),(112,377,NULL),(113,380,NULL),(114,384,NULL),(115,386,NULL),(116,389,NULL),(117,392,NULL),(118,396,NULL),(119,401,NULL),(120,404,NULL),(121,408,NULL),(122,411,NULL),(123,415,NULL),(124,417,NULL),(125,418,NULL),(126,422,NULL),(127,425,NULL),(128,427,NULL),(129,430,NULL),(130,432,NULL),(131,435,NULL),(132,437,NULL),(133,439,NULL),(134,441,NULL),(135,443,NULL),(136,445,NULL),(137,447,NULL),(138,449,NULL),(139,452,NULL),(140,457,NULL),(141,461,NULL),(142,465,NULL),(1,1,1),(2,19,4),(3,37,7),(4,40,8),(5,42,9),(6,46,10),(7,50,11),(8,53,12),(9,56,13),(10,59,14),(11,62,15),(12,65,16),(13,69,17),(14,73,18),(15,76,19),(16,79,20),(17,82,21),(18,85,22),(19,88,23),(20,89,23),(21,93,24),(22,97,25),(23,100,26),(24,103,27),(25,106,28);
/*!40000 ALTER TABLE `sovrano_personaggio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sovrano_tempio`
--

DROP TABLE IF EXISTS `sovrano_tempio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sovrano_tempio` (
  `codice_sovrano` int NOT NULL,
  `nome_sovrano` varchar(45) DEFAULT NULL,
  `anni` varchar(45) DEFAULT NULL,
  `codice_epoca` int DEFAULT NULL,
  `codice_dinastia` int DEFAULT NULL,
  PRIMARY KEY (`codice_sovrano`),
  KEY `codice_epoca_KF_sovrano_idx` (`codice_epoca`),
  KEY `codice_dinastia_FK_sovrano_idx` (`codice_dinastia`),
  CONSTRAINT `codice_dinastia_FK_sovrano` FOREIGN KEY (`codice_dinastia`) REFERENCES `dinastia` (`codice_dinastia`),
  CONSTRAINT `codice_epoca_KF_sovrano` FOREIGN KEY (`codice_epoca`) REFERENCES `epoca` (`codice_epoca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sovrano_tempio`
--

LOCK TABLES `sovrano_tempio` WRITE;
/*!40000 ALTER TABLE `sovrano_tempio` DISABLE KEYS */;
INSERT INTO `sovrano_tempio` VALUES (1,'Augustus','27 BC-14 AD',9,35),(2,'Ramesse II','1279-1213 BC',5,20),(3,'Amenhotep III','1391–1353 BC',5,19),(4,'Akhenaten','1353–1336 BC',5,19),(5,'Nectanebo I','379/8–361/0 BC',7,31),(6,'Tiberius','14-37 AD',9,35),(7,'Antoninus Pius','138–161 AD',9,35),(8,'Ptolemy XIII','51–47 BC',8,34),(9,'Ptolemy IV','221-204 BC',8,34),(10,'Ptolemy IX','116–107 BC and 88-81 BC',8,34),(11,'Ptolemy VI','180–164 BC and 163-145 BC',8,34),(12,'Ptolemy VIII','170–164 BC, 145–132/1 BC and 127/6–116 BC',8,34),(13,'Ptolemy XII','80–58 BC and 55–51 BC',8,34),(14,'Thutmose III','1479–1425 BC',5,19),(15,'Amenhotep II','1427–1401 BC',5,19),(16,'Thutmose IV','1401–1391 BC',5,19),(17,'Seti I','1294/1290–1279 BC',5,20),(18,'Merenptah','1213–1203 BC',5,20),(19,'Siptah','1197–1191 BC',5,20),(20,'Taharqa','690-664 BC',6,26),(21,'Ptolemy III','246-222 BC',8,34),(22,'Ptolemy VII','145 BC',8,34),(23,'Trajan','98-117',9,35),(24,'Setau','1241-1216',5,34),(25,'Horemheb','1319-1292 BC',5,19),(26,'Hatshepsut','1478-1458 BC',5,19),(27,'Thutmose II','1483-1479 BC',5,19);
/*!40000 ALTER TABLE `sovrano_tempio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sovrano_tempiov`
--

DROP TABLE IF EXISTS `sovrano_tempiov`;
/*!50001 DROP VIEW IF EXISTS `sovrano_tempiov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sovrano_tempiov` AS SELECT 
 1 AS `codice_sovrano`,
 1 AS `nome_sovrano`,
 1 AS `anni`,
 1 AS `codice_epoca`,
 1 AS `codice_dinastia`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tempio`
--

DROP TABLE IF EXISTS `tempio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempio` (
  `codice_tempio` int NOT NULL,
  `nome_tempio` varchar(255) NOT NULL,
  `regione_antica` varchar(255) DEFAULT NULL,
  `luogo_antico` varchar(255) DEFAULT NULL,
  `regione_odierna` varchar(255) DEFAULT NULL,
  `luogo_odierno` varchar(255) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `period` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codice_tempio`),
  UNIQUE KEY `codice_tempio_UNIQUE` (`codice_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempio`
--

LOCK TABLES `tempio` WRITE;
/*!40000 ALTER TABLE `tempio` DISABLE KEYS */;
INSERT INTO `tempio` VALUES (1,'Kalabsha','Lower Nubia','Kalabsha','Egypt','New Kalabsha','23.960981267926726','32.86781736706672','Roman period'),(2,'Abu Simbel','Lower Nubia','Abu Simbel','Egypt','Abu Simbel','22.337419632878774','31.625466952873957','New Kingdom'),(3,'Bigeh','Lower Nubia','Bigeh','Egypt',NULL,'24.021240310279648','32.884999111993494','Graeco-Roman Period'),(4,'Buhen','Upper Nubia','Buhen','Sudan','Khartoum',' 21.916667','31.283333','Middle Kingdom'),(5,'Dakka','Lower Nubia',NULL,'Egypt','New Wadi es-Sebua','22.800997','32.545747','Graeco-Roman Period'),(6,'Debod','Lower Nubia',NULL,'Spain','Madrid','40.424053','-3.717778','Graeco-Roman Period'),(7,'Dendur','Lower Nubia','Dendur','U.S.A.','New York','23.383056','32.95','Roman period'),(8,'Derr','Lower Nubia','el-Derr','Egypt','New Amada','22.732389','32.262111','New Kingdom'),(9,'Maharraqa','Lower Nubia','el-Maharraqa','Egypt','New Wadi es-Sebua','22.800667','32.547597','Roman period'),(10,'Temple of Amenhotep III','Lower Nubia','el-Sebua','Egypt','New Wadi es-Sebua','22.7932','32.5453','New Kingdom'),(11,'Temple of Amun','Lower Nubia','el-Sebua','Egypt','New Wadi es-Sebua','22.7932','32.5453','New Kingdom'),(12,'Sesebi','Upper Nubia','Sesebi','Sudan','Sesebi','20.109722','30.543056','New Kingdom'),(13,'Amada','Lower Nubia','Amada','Egypt','New Amada','22.73115','32.26261','New Kingdom'),(14,'Isis Temple','Lower Nubia','Philae','Egypt','Agilkia Island','24.020833','32.889444','Graeco-Roman Period'),(15,'Gerf Hussein','Lower Nubia','Per Ptah','Egypt','New Kalabsha','23.960433235583526','32.86716729466745','New Kingdom'),(16,'Beit el-Wali','Lower Nubia','Kalabsha','Egypt','New Kalabsha','23.961861','32.866389','New Kingdom'),(17,'Aksha','Lower Nubia','Faras','Sudan','Khartoum','21.083333','30.716667','New Kingdom'),(18,'Horemheb Temple','Lower Nubia','Abu Hoda','Egypt','Aswan','22.29709','31.636884','New Kingdom'),(19,'Semna','Lower Nubia','Semna East','Sudan','Khartoum','21.4652778','31.00888888888889','New Kingdom'),(20,'Kumma','Lower Nubia','Semna West','Sudan','Khartoum','21.4652778','31.00888888888889','New Kingdom'),(21,'Taffa','Lower Nubia','Taffa','Holland','Leiden','23.6197','32.8721','Roman period'),(22,'Ellesyia','Lower Nubia','Qasr Ibrim','Italy','Turin','22.622568','31.962662','New Kingdom');
/*!40000 ALTER TABLE `tempio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempio_libro`
--

DROP TABLE IF EXISTS `tempio_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tempio_libro` (
  `codice_tempio_libro` int NOT NULL,
  `codice_tempio` int DEFAULT NULL,
  `codice_bibliografia_tempio` int DEFAULT NULL,
  PRIMARY KEY (`codice_tempio_libro`),
  KEY `codice_tempio_libro_idx` (`codice_tempio`),
  KEY `codice_bibliografia_libro_idx` (`codice_bibliografia_tempio`),
  CONSTRAINT `codice_bibliografia_libro` FOREIGN KEY (`codice_bibliografia_tempio`) REFERENCES `bibliografia_tempio` (`codice_bibliografia_tempio`),
  CONSTRAINT `codice_tempio_libro` FOREIGN KEY (`codice_tempio`) REFERENCES `tempio` (`codice_tempio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempio_libro`
--

LOCK TABLES `tempio_libro` WRITE;
/*!40000 ALTER TABLE `tempio_libro` DISABLE KEYS */;
INSERT INTO `tempio_libro` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(65,1,65),(66,1,66),(67,1,67),(68,1,68),(69,1,69),(70,1,70),(71,1,71),(72,1,72),(73,1,73),(74,1,74),(75,1,75),(76,1,76),(77,1,77),(78,1,78),(79,1,79),(80,1,80),(81,1,81),(82,1,82),(83,1,83),(84,1,84),(85,1,85),(86,1,86);
/*!40000 ALTER TABLE `tempio_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `tempio_librov`
--

DROP TABLE IF EXISTS `tempio_librov`;
/*!50001 DROP VIEW IF EXISTS `tempio_librov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tempio_librov` AS SELECT 
 1 AS `codice_tempio_libro`,
 1 AS `codice_tempio`,
 1 AS `codice_bibliografia_tempio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tempiov`
--

DROP TABLE IF EXISTS `tempiov`;
/*!50001 DROP VIEW IF EXISTS `tempiov`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tempiov` AS SELECT 
 1 AS `codice_tempio`,
 1 AS `nome_tempio`,
 1 AS `regione_antica`,
 1 AS `luogo_antico`,
 1 AS `regione_odierna`,
 1 AS `luogo_odierno`,
 1 AS `latitude`,
 1 AS `longitude`,
 1 AS `period`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `titolo_scena`
--

DROP TABLE IF EXISTS `titolo_scena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titolo_scena` (
  `codice_titolo_scena` int NOT NULL,
  `offerta_titolo_scena` varchar(255) DEFAULT NULL,
  `verbo_titolo_scena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codice_titolo_scena`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titolo_scena`
--

LOCK TABLES `titolo_scena` WRITE;
/*!40000 ALTER TABLE `titolo_scena` DISABLE KEYS */;
INSERT INTO `titolo_scena` VALUES (1,'ḥꜥpy','dj'),(2,'tꜣwy','dj'),(3,'wḏꜣt','dj'),(4,'ꜥnḫ wꜣs','destroyed'),(5,'destroyed','destroyed'),(6,'mḏt','jr'),(7,'snṯr','jr'),(8,'snṯr','mn'),(9,'ḥḥ','mn'),(10,'ḫꜣswt','ḫrp'),(11,'šmꜥ.s jꜥrt mḥw.s jꜥrt','ḥnk'),(12,'Mꜣꜥt','dj'),(13,'ꜥnḫw','dj'),(14,'jrtt','mn'),(15,'šs','mn'),(16,'jrp','ḥnk'),(17,'mw','ꜥb'),(18,'Mꜣꜥt','ḥnk'),(19,'sšn','ḥnk'),(20,'wnt-ḥrwy','ꜥr'),(21,'mꜣḥ','ṯs'),(22,'ḳbḥ','mn'),(23,'Mꜣꜥt','mn'),(24,'wꜣḏwy','ḥnk'),(25,'mnḫt','ḥnk'),(26,'jrtt','?'),(27,'mks','ḥnk'),(28,'ms','ḥnk'),(29,'ḥḏt dšrt','ḥnk'),(30,'sḫt','ḥnk'),(32,'jrtt','ḥnk'),(33,'jḫt','fꜣjt'),(34,'snṯr, ḳbḥ','jr'),(35,'no title','no title'),(36,'stpwt','ḫwj ꜥr'),(37,'snṯr','dj'),(38,'ḳbḥ','dj'),(39,'ḫꜣswt','dj'),(40,'wḏꜣt','ḥnk'),(41,'destroyed','ḥnk'),(42,'ḳbḥ nḫḫ','mn'),(43,'jḫt','ḥnk'),(44,'ḳbḥ','jr'),(45,'no inscriptions','no inscriptions'),(46,'ẖnm','ḥnk'),(47,'mnḥwy','dj'),(48,'jrtt','dj'),(49,'jꜣw','dj'),(50,'sḫt','dj'),(51,'jrp','destroyed'),(52,'šmꜥ.s mḥw.s','jꜣw');
/*!40000 ALTER TABLE `titolo_scena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `titolo_scenav`
--

DROP TABLE IF EXISTS `titolo_scenav`;
/*!50001 DROP VIEW IF EXISTS `titolo_scenav`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `titolo_scenav` AS SELECT 
 1 AS `codice_titolo_scena`,
 1 AS `offerta_titolo_scena`,
 1 AS `verbo_titolo_scena`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `abitov`
--

/*!50001 DROP VIEW IF EXISTS `abitov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `abitov` AS select `abito`.`codice_abito` AS `codice_abito`,`abito`.`codice_abito_nuovo` AS `codice_abito_nuovo`,`abito`.`tipologia_abito` AS `tipologia_abito`,`abito`.`nome_abito` AS `nome_abito`,`abito`.`descrizione_abito` AS `descrizione_abito` from `abito` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `accessoriov`
--

/*!50001 DROP VIEW IF EXISTS `accessoriov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `accessoriov` AS select `accessorio`.`codice_accessorio` AS `codice_accessorio`,`accessorio`.`nome_accessorio` AS `nome_accessorio`,`accessorio`.`descrizione_accessorio` AS `descrizione_accessorio` from `accessorio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ambientev`
--

/*!50001 DROP VIEW IF EXISTS `ambientev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ambientev` AS select `ambiente`.`codice_ambiente` AS `codice_ambiente`,`ambiente`.`tipo_ambiente` AS `tipo_ambiente`,`ambiente`.`epoca_costruzione_ambiente` AS `epoca_costruzione_ambiente`,`ambiente`.`committente_ambiente` AS `committente_ambiente`,`ambiente`.`codice_tempio` AS `codice_tempio` from `ambiente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `appartienev`
--

/*!50001 DROP VIEW IF EXISTS `appartienev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `appartienev` AS select `appartiene`.`codice_appartiene` AS `codice_appartiene`,`appartiene`.`codice_personaggio` AS `codice_personaggio`,`appartiene`.`codice_accessorio` AS `codice_accessorio` from `appartiene` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bibliografia_epitetov`
--

/*!50001 DROP VIEW IF EXISTS `bibliografia_epitetov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bibliografia_epitetov` AS select `bibliografia_epiteto`.`codice_bibliografia_epiteto` AS `codice_bibliografia_epiteto`,`bibliografia_epiteto`.`titolo_bibliografia_epiteto` AS `titolo_bibliografia_epiteto`,`bibliografia_epiteto`.`autore_bibliografia_epiteto` AS `autore_bibliografia_epiteto`,`bibliografia_epiteto`.`anno_pubblicazione_bibliografia_epiteto` AS `anno_pubblicazione_bibliografia_epiteto`,`bibliografia_epiteto`.`volume_bibliografia_epiteto` AS `volume_bibliografia_epiteto`,`bibliografia_epiteto`.`pagina_bibliografia_epiteto` AS `pagina_bibliografia_epiteto`,`bibliografia_epiteto`.`codice_epiteto` AS `codice_epiteto` from `bibliografia_epiteto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bibliografia_scenav`
--

/*!50001 DROP VIEW IF EXISTS `bibliografia_scenav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bibliografia_scenav` AS select `bibliografia_scena`.`codice_bibliografia_scena` AS `codice_bibliografia_scena`,`bibliografia_scena`.`serie_bibliografia_scena` AS `serie_bibliografia_scena`,`bibliografia_scena`.`titolo_b_s` AS `titolo_b_s`,`bibliografia_scena`.`volume_bibliografia_scena` AS `volume_bibliografia_scena`,`bibliografia_scena`.`autore_b_s` AS `autore_b_s`,`bibliografia_scena`.`anno_pubblicazione_b_s` AS `anno_pubblicazione_b_s`,`bibliografia_scena`.`n_pagina_b_s` AS `n_pagina_b_s`,`bibliografia_scena`.`n_tavola` AS `n_tavola` from `bibliografia_scena` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bibliografia_tempiov`
--

/*!50001 DROP VIEW IF EXISTS `bibliografia_tempiov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bibliografia_tempiov` AS select `bibliografia_tempio`.`codice_bibliografia_tempio` AS `codice_bibliografia_tempio`,`bibliografia_tempio`.`autore_bibliografia_tempio` AS `autore_bibliografia_tempio`,`bibliografia_tempio`.`titolo_bibliografia_tempio` AS `titolo_bibliografia_tempio`,`bibliografia_tempio`.`rivista_bibliografia_tempio` AS `rivista_bibliografia_tempio`,`bibliografia_tempio`.`volume_bibliografia_tempio` AS `volume_bibliografia_tempio`,`bibliografia_tempio`.`anno_pubblicazione_bibliografia_tempio` AS `anno_pubblicazione_bibliografia_tempio`,`bibliografia_tempio`.`luogo_pubblicazione_bibliografia_tempio` AS `luogo_pubblicazione_bibliografia_tempio`,`bibliografia_tempio`.`pagine_bibliografia_tempio` AS `pagine_bibliografia_tempio` from `bibliografia_tempio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `citatav`
--

/*!50001 DROP VIEW IF EXISTS `citatav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `citatav` AS select `citata`.`codice_citata` AS `codice_citata`,`citata`.`codice_scena` AS `codice_scena`,`citata`.`codice_bibliografia_scena` AS `codice_bibliografia_scena` from `citata` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `coronav`
--

/*!50001 DROP VIEW IF EXISTS `coronav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coronav` AS select `corona`.`codice_corona` AS `codice_corona`,`corona`.`codice_corona_nuovo` AS `codice_corona_nuovo`,`corona`.`codice_corona_Gauthier` AS `codice_corona_Gauthier`,`corona`.`tipologia_corona` AS `tipologia_corona`,`corona`.`descrizione_corona` AS `descrizione_corona` from `corona` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `costruitov`
--

/*!50001 DROP VIEW IF EXISTS `costruitov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `costruitov` AS select `costruito`.`codice_costruzione` AS `codice_costruzione`,`costruito`.`codice_tempio` AS `codice_tempio`,`costruito`.`codice_sovrano` AS `codice_sovrano` from `costruito` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dedicatov`
--

/*!50001 DROP VIEW IF EXISTS `dedicatov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dedicatov` AS select `dedicato`.`codice_dedicato` AS `codice_dedicato`,`dedicato`.`codice_tempio` AS `codice_tempio`,`dedicato`.`codice_divinita` AS `codice_divinita` from `dedicato` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dinastiav`
--

/*!50001 DROP VIEW IF EXISTS `dinastiav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dinastiav` AS select `dinastia`.`codice_dinastia` AS `codice_dinastia`,`dinastia`.`nome_dinastia` AS `nome_dinastia`,`dinastia`.`anni` AS `anni`,`dinastia`.`codice_epoca` AS `codice_epoca` from `dinastia` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `divinita_personaggiov`
--

/*!50001 DROP VIEW IF EXISTS `divinita_personaggiov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `divinita_personaggiov` AS select `divinita_personaggio`.`codice_divinita` AS `codice_divinita`,`divinita_personaggio`.`codice_personaggio_divinità` AS `codice_personaggio_divinità`,`divinita_personaggio`.`nome_divinita` AS `nome_divinita`,`divinita_personaggio`.`codice_dono_divinita` AS `codice_dono_divinita`,`divinita_personaggio`.`codice_scena` AS `codice_scena` from `divinita_personaggio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `donov`
--

/*!50001 DROP VIEW IF EXISTS `donov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `donov` AS select `dono`.`codice_dono` AS `codice_dono`,`dono`.`nome_dono` AS `nome_dono`,`dono`.`verbo_dono` AS `verbo_dono` from `dono` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `elemento_architettonicov`
--

/*!50001 DROP VIEW IF EXISTS `elemento_architettonicov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `elemento_architettonicov` AS select `elemento_architettonico`.`codice_e_a` AS `codice_e_a`,`elemento_architettonico`.`tipo_e_a` AS `tipo_e_a`,`elemento_architettonico`.`orientamento_spaziale` AS `orientamento_spaziale`,`elemento_architettonico`.`epoca_realizzazione_e_a` AS `epoca_realizzazione_e_a`,`elemento_architettonico`.`committente_e_a` AS `committente_e_a`,`elemento_architettonico`.`codice_ambiente` AS `codice_ambiente` from `elemento_architettonico` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `epitetov`
--

/*!50001 DROP VIEW IF EXISTS `epitetov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `epitetov` AS select `epiteto`.`codice_epiteto` AS `codice_epiteto`,`epiteto`.`epiteto_traslitterato` AS `epiteto_traslitterato`,`epiteto`.`epiteto_tradotto` AS `epiteto_tradotto`,`epiteto`.`epiteto_note` AS `epiteto_note` from `epiteto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `epocav`
--

/*!50001 DROP VIEW IF EXISTS `epocav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `epocav` AS select `epoca`.`codice_epoca` AS `codice_epoca`,`epoca`.`regno` AS `regno`,`epoca`.`anni` AS `anni` from `epoca` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `indossav`
--

/*!50001 DROP VIEW IF EXISTS `indossav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `indossav` AS select `indossa`.`codice_indossa` AS `codice_indossa`,`indossa`.`codice_personaggio` AS `codice_personaggio`,`indossa`.`codice_abito` AS `codice_abito` from `indossa` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `menzionatov`
--

/*!50001 DROP VIEW IF EXISTS `menzionatov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `menzionatov` AS select `menzionato`.`codice_mezionato` AS `codice_mezionato`,`menzionato`.`codice_tempio` AS `codice_tempio`,`menzionato`.`codice_bibliografia_tempio` AS `codice_bibliografia_tempio` from `menzionato` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `partev`
--

/*!50001 DROP VIEW IF EXISTS `partev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `partev` AS select `parte`.`codice_parte` AS `codice_parte`,`parte`.`tipologia_parte` AS `tipologia_parte`,`parte`.`codice_e_a` AS `codice_e_a` from `parte` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `personaggiov`
--

/*!50001 DROP VIEW IF EXISTS `personaggiov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `personaggiov` AS select `personaggio`.`codice_personaggio` AS `codice_personaggio`,`personaggio`.`tipologia_personaggio` AS `tipologia_personaggio`,`personaggio`.`nome_personaggio` AS `nome_personaggio`,`personaggio`.`donatore_ricevente` AS `donatore_ricevente`,`personaggio`.`ordine_comparizione` AS `ordine_comparizione`,`personaggio`.`caratteristiche_personaggio` AS `caratteristiche_personaggio`,`personaggio`.`seduto_stante` AS `seduto_stante`,`personaggio`.`codice_corona` AS `codice_corona`,`personaggio`.`codice_scena` AS `codice_scena`,`personaggio`.`codice_tempio` AS `codice_tempio` from `personaggio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `possiedev`
--

/*!50001 DROP VIEW IF EXISTS `possiedev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `possiedev` AS select `possiede`.`codice_possiede` AS `codice_possiede`,`possiede`.`codice_personaggio` AS `codice_personaggio`,`possiede`.`codice_epiteto` AS `codice_epiteto` from `possiede` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ricevev`
--

/*!50001 DROP VIEW IF EXISTS `ricevev`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ricevev` AS select `riceve`.`codice_riceve` AS `codice_riceve`,`riceve`.`codice_sovrano` AS `codice_sovrano`,`riceve`.`codice_dono` AS `codice_dono` from `riceve` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `scenav`
--

/*!50001 DROP VIEW IF EXISTS `scenav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `scenav` AS select `scena`.`codice_scena` AS `codice_scena`,`scena`.`sigla_scena` AS `sigla_scena`,`scena`.`n_scena` AS `n_scena`,`scena`.`registro` AS `registro`,`scena`.`codice_titolo_scena` AS `codice_titolo_scena`,`scena`.`offerta_iconografia` AS `offerta_iconografia`,`scena`.`n_personaggi` AS `n_personaggi`,`scena`.`oggetti_presenti` AS `oggetti_presenti`,`scena`.`stato_scena` AS `stato_scena`,`scena`.`codice_parte` AS `codice_parte`,`scena`.`codice_tempio` AS `codice_tempio` from `scena` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sovrano_tempiov`
--

/*!50001 DROP VIEW IF EXISTS `sovrano_tempiov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sovrano_tempiov` AS select `sovrano_tempio`.`codice_sovrano` AS `codice_sovrano`,`sovrano_tempio`.`nome_sovrano` AS `nome_sovrano`,`sovrano_tempio`.`anni` AS `anni`,`sovrano_tempio`.`codice_epoca` AS `codice_epoca`,`sovrano_tempio`.`codice_dinastia` AS `codice_dinastia` from `sovrano_tempio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tempio_librov`
--

/*!50001 DROP VIEW IF EXISTS `tempio_librov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tempio_librov` AS select `tempio_libro`.`codice_tempio_libro` AS `codice_tempio_libro`,`tempio_libro`.`codice_tempio` AS `codice_tempio`,`tempio_libro`.`codice_bibliografia_tempio` AS `codice_bibliografia_tempio` from `tempio_libro` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tempiov`
--

/*!50001 DROP VIEW IF EXISTS `tempiov`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tempiov` AS select `tempio`.`codice_tempio` AS `codice_tempio`,`tempio`.`nome_tempio` AS `nome_tempio`,`tempio`.`regione_antica` AS `regione_antica`,`tempio`.`luogo_antico` AS `luogo_antico`,`tempio`.`regione_odierna` AS `regione_odierna`,`tempio`.`luogo_odierno` AS `luogo_odierno`,`tempio`.`latitude` AS `latitude`,`tempio`.`longitude` AS `longitude`,`tempio`.`period` AS `period` from `tempio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titolo_scenav`
--

/*!50001 DROP VIEW IF EXISTS `titolo_scenav`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `titolo_scenav` AS select `titolo_scena`.`codice_titolo_scena` AS `codice_titolo_scena`,`titolo_scena`.`offerta_titolo_scena` AS `offerta_titolo_scena`,`titolo_scena`.`verbo_titolo_scena` AS `verbo_titolo_scena` from `titolo_scena` */;
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

-- Dump completed on 2026-10-18 22:28:27
