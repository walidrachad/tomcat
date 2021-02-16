-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: myschool
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `absent`
--

DROP TABLE IF EXISTS `absent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `time_finish` varchar(255) DEFAULT NULL,
  `time_start` varchar(255) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absent`
--

LOCK TABLES `absent` WRITE;
/*!40000 ALTER TABLE `absent` DISABLE KEYS */;
INSERT INTO `absent` VALUES (1,1,'16-02-2021','',NULL,3,'2:00 AM','1:00 AM',1);
/*!40000 ALTER TABLE `absent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `affectation_prof_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,NULL,'walidrachad@gmail.com','walidrachad','','walidrachad','walidrachad','walidrachad','walidrachad','','123456789',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_attachment`
--

DROP TABLE IF EXISTS `affectation_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_attachment`
--

LOCK TABLES `affectation_attachment` WRITE;
/*!40000 ALTER TABLE `affectation_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `affectation_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_event`
--

DROP TABLE IF EXISTS `affectation_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_event`
--

LOCK TABLES `affectation_event` WRITE;
/*!40000 ALTER TABLE `affectation_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `affectation_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_prof`
--

DROP TABLE IF EXISTS `affectation_prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_prof` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prof_id` bigint(20) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_prof`
--

LOCK TABLES `affectation_prof` WRITE;
/*!40000 ALTER TABLE `affectation_prof` DISABLE KEYS */;
/*!40000 ALTER TABLE `affectation_prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affectation_role`
--

DROP TABLE IF EXISTS `affectation_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affectation_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affectation_role`
--

LOCK TABLES `affectation_role` WRITE;
/*!40000 ALTER TABLE `affectation_role` DISABLE KEYS */;
INSERT INTO `affectation_role` VALUES (1,4,6),(3,3,160),(4,3,161),(5,3,163),(6,3,164),(7,3,165),(8,3,166),(9,3,167),(10,3,168),(307,2,465),(308,2,466),(309,2,467),(310,2,468),(311,2,469),(312,2,470),(313,2,471),(314,2,472),(315,2,473),(316,2,474),(317,2,475),(318,2,476),(319,2,477),(320,2,478),(321,2,479),(322,2,480),(323,2,481),(324,2,482),(325,2,483),(326,2,484),(327,2,485),(328,2,486),(329,2,487),(330,2,488),(331,2,489),(332,2,490),(333,2,491),(334,2,492),(335,2,493),(336,2,494),(337,2,495),(338,2,496),(339,2,497),(340,2,498),(341,2,499),(342,2,500),(343,2,501),(344,2,502),(345,2,503),(346,2,504),(347,2,505),(348,2,506),(349,2,507),(350,2,508),(351,2,509),(352,2,510),(353,2,511),(354,2,512),(355,2,513),(356,2,514),(357,2,515),(358,2,516),(359,2,517),(360,2,518),(361,2,519),(362,2,520),(363,2,521),(364,2,522),(365,2,523),(366,2,524),(367,2,525),(368,2,526),(369,2,527),(370,2,528),(371,2,529),(372,2,530),(373,2,531),(374,2,532),(375,2,533),(376,2,534),(377,2,535),(378,2,536),(379,2,537),(380,2,538),(381,2,539),(382,2,540),(383,2,541),(384,2,542),(385,2,543),(386,2,544),(387,2,545),(388,2,546),(389,2,547),(390,2,548),(391,2,549),(392,2,550),(393,2,551),(394,2,552),(395,2,553),(396,2,554),(397,2,555),(398,2,556),(399,2,557),(400,2,558),(401,2,559),(402,2,560),(403,2,561),(404,2,562),(405,2,563),(406,2,564),(407,2,565),(408,2,566),(409,2,567),(410,2,568),(411,2,569),(412,2,570),(413,2,571),(414,2,572),(415,2,573),(416,2,574),(417,2,575),(418,2,576),(419,2,577),(420,2,578),(421,2,579),(422,2,580),(423,2,581),(424,2,582),(425,2,583),(426,2,584),(427,2,585),(428,2,586),(429,2,587),(430,2,588),(431,2,589),(432,2,590),(433,2,591),(434,2,592),(435,2,593),(436,2,594),(437,2,595),(438,2,596),(439,2,597),(440,2,598),(441,2,599),(442,2,600),(443,2,601),(444,2,602),(445,2,603),(446,2,604),(447,2,605),(448,2,606),(449,2,607),(450,2,608),(451,2,609),(452,2,610),(453,2,611),(454,2,612),(455,2,613),(456,2,614),(457,2,615),(458,2,616),(459,2,617),(460,2,618),(461,2,619),(462,2,620),(463,2,621),(464,2,622),(465,2,623),(466,2,624),(467,2,625),(468,2,626),(469,2,627),(470,2,628),(471,2,629),(472,2,630),(473,2,631),(474,2,632),(475,2,633),(476,2,634),(477,2,635),(478,2,636),(479,2,637),(480,2,638),(481,2,639),(482,2,640),(483,2,641),(484,2,642),(485,2,643),(486,2,644),(487,2,645),(488,2,646),(489,2,647),(490,2,648),(491,2,649),(492,2,650),(493,2,651),(494,2,652),(495,2,653),(496,2,654),(497,2,655),(498,2,656),(499,2,657),(500,2,658),(501,2,659),(502,2,660),(503,2,661),(504,2,662),(505,2,663),(506,2,664),(507,2,665),(508,2,666),(509,2,667),(510,2,668),(511,2,669),(512,2,670),(513,2,671),(514,2,672),(515,2,673),(516,2,674),(517,2,675),(518,2,676),(519,2,677),(520,2,678),(521,2,679),(522,2,680),(523,2,681),(524,2,682),(525,2,683),(526,2,684),(527,2,685),(528,2,686),(529,2,687),(530,2,688),(531,2,689),(532,2,690),(533,2,691),(534,2,692),(535,2,693),(536,2,694),(537,2,695),(538,2,696),(539,2,697),(540,2,698),(541,2,699),(542,2,700),(543,2,701),(544,2,702),(545,2,703),(546,2,704),(547,2,705),(548,2,706),(549,2,707),(550,2,708),(551,2,709),(552,2,710),(553,2,711),(554,2,712),(555,2,713),(556,2,714),(557,2,715),(558,2,716),(559,2,717),(560,2,718),(561,2,719),(562,2,720),(563,2,721),(564,2,722),(565,2,723),(566,2,724),(567,2,725),(568,2,726),(569,2,727),(570,2,728),(571,2,729),(572,2,730),(573,2,731),(574,2,732),(575,2,733),(576,2,734),(577,2,735),(578,2,736),(579,2,737),(580,2,738),(581,2,739),(582,2,740),(583,2,741),(584,2,742),(585,2,743),(586,2,744),(587,2,745),(588,2,746),(589,2,747),(590,2,748),(591,2,749),(592,2,750),(593,2,751),(594,2,752),(595,2,753),(596,2,754),(597,2,755),(598,2,756),(599,2,757),(600,2,758),(601,2,759),(602,2,760),(603,3,761),(604,2,762),(605,3,763),(606,3,764),(607,3,765),(608,3,766),(609,3,767),(610,3,768),(611,3,769),(612,3,770),(613,3,771),(614,3,772),(615,3,773),(616,3,774),(617,3,774),(618,3,775),(619,3,776),(620,3,777),(621,3,778),(622,3,779),(623,1,780),(624,3,781),(625,1,782),(626,1,782),(627,1,782),(628,1,782),(629,3,783),(630,3,783),(631,3,785),(632,3,785),(633,3,785);
/*!40000 ALTER TABLE `affectation_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affictation_message`
--

DROP TABLE IF EXISTS `affictation_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affictation_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `favorite` bit(1) DEFAULT NULL,
  `is_seen` bit(1) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `recipient_id` bigint(20) DEFAULT NULL,
  `recipient_role` varchar(255) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `sender_role` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affictation_message`
--

LOCK TABLES `affictation_message` WRITE;
/*!40000 ALTER TABLE `affictation_message` DISABLE KEYS */;
INSERT INTO `affictation_message` VALUES (1,'\0','\0',2,3,'Student',1,'Admin',3),(2,'\0','\0',2,4,'Student',1,'Admin',4),(3,'\0','\0',2,2,'Student',1,'Admin',2),(4,'\0','\0',3,4,'Student',1,'Admin',4),(5,'\0','\0',3,4,'Student',1,'Admin',4),(6,'\0','\0',7,3,'Student',1,'Admin',3),(7,'\0','\0',4,3,'Student',1,'Admin',3),(8,'\0','\0',4,3,'Student',1,'Admin',3),(9,'\0','\0',6,3,'Student',1,'Admin',3),(10,'\0','\0',5,3,'Student',1,'Admin',3),(11,'\0','\0',5,3,'Student',1,'Admin',3),(12,'\0','\0',8,4,'Student',1,'Admin',4),(13,'\0','\0',9,4,'Student',1,'Admin',4),(14,'\0','\0',10,2,'Student',1,'Admin',2),(15,'\0','\0',10,4,'Student',1,'Admin',4),(16,'\0','\0',10,4,'Student',1,'Admin',4),(17,'\0','\0',11,2,'Student',1,'Admin',2),(18,'\0','\0',13,2,'Student',1,'Admin',2),(19,'\0','\0',12,2,'Student',1,'Admin',2),(20,'\0','\0',13,2,'Student',1,'Admin',2),(21,'\0','\0',11,4,'Student',1,'Admin',4),(22,'\0','\0',12,4,'Student',1,'Admin',4),(23,'\0','\0',11,4,'Student',1,'Admin',4),(24,'\0','\0',13,4,'Student',1,'Admin',4),(25,'\0','\0',12,4,'Student',1,'Admin',4),(26,'\0','\0',13,4,'Student',1,'Admin',4),(27,'\0','\0',13,4,'Student',1,'Admin',4),(28,'\0','\0',14,2,'Student',1,'Admin',2),(29,'\0','\0',14,2,'Student',1,'Admin',2),(30,'\0','\0',14,4,'Student',1,'Admin',4),(31,'\0','\0',14,4,'Student',1,'Admin',4),(32,'\0','\0',14,4,'Student',1,'Admin',4),(33,'\0','\0',16,2,'Student',1,'Admin',2),(34,'\0','\0',15,2,'Student',1,'Admin',2),(35,'\0','\0',15,2,'Student',1,'Admin',2),(36,'\0','\0',16,2,'Student',1,'Admin',2),(37,'\0','\0',17,2,'Student',1,'Admin',2),(38,'\0','\0',16,4,'Student',1,'Admin',4),(39,'\0','\0',15,4,'Student',1,'Admin',4),(40,'\0','\0',16,4,'Student',1,'Admin',4),(41,'\0','\0',15,4,'Student',1,'Admin',4),(42,'\0','\0',16,4,'Student',1,'Admin',4),(43,'\0','\0',17,4,'Student',1,'Admin',4),(44,'\0','\0',15,4,'Student',1,'Admin',4),(45,'\0','\0',17,4,'Student',1,'Admin',4),(46,'\0','\0',18,2,'Student',1,'Admin',2),(47,'\0','\0',18,2,'Student',1,'Admin',2),(48,'\0','\0',18,4,'Student',1,'Admin',4),(49,'\0','\0',18,4,'Student',1,'Admin',4),(50,'\0','\0',18,4,'Student',1,'Admin',4),(51,'\0','\0',19,2,'Student',1,'Admin',2),(52,'\0','\0',19,4,'Student',1,'Admin',4),(53,'\0','\0',19,4,'Student',1,'Admin',4);
/*!40000 ALTER TABLE `affictation_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachment`
--

DROP TABLE IF EXISTS `attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_url` varchar(255) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachment`
--

LOCK TABLES `attachment` WRITE;
/*!40000 ALTER TABLE `attachment` DISABLE KEYS */;
INSERT INTO `attachment` VALUES (1,'http://192.168.1.100:5000/downloadFile/5bf17f1c-0f17-4a2f-aac2-58c38b9f19ad147513.gif',6,'147513.gif',28299,'image/gif'),(2,'http://192.168.1.100:5000/downloadFile/f9422b4e-dd96-42a7-9b78-0d8dbba1602d147513.gif',5,'147513.gif',28299,'image/gif'),(3,'http://192.168.1.100:5000/downloadFile/1644379e-4563-465e-b9a8-8f03493c389bca-fe104aedf380',8,'ca-fe104aedf380',548908,'audio/wav'),(4,'http://192.168.1.100:5000/downloadFile/20884b9f-354c-49d0-8b7e-89aa221753a1putty-64bit-0.74-installer.msi',9,'putty-64bit-0.74-installer.msi',2843648,'application/octet-stream'),(5,'http://192.168.1.100:5000/downloadFile/1e6d7744-c714-46fe-b730-55f5fb2455a0ca-fe104aedf380',11,'ca-fe104aedf380',548908,'audio/wav'),(6,'http://192.168.1.100:5000/downloadFile/9d02b533-a4f3-47c2-bc93-32d500ef99b2ca-fe104aedf380',12,'ca-fe104aedf380',548908,'audio/wav'),(7,'http://192.168.1.100:5000/downloadFile/4322aed9-c74e-4b15-ab95-e2d4f2cff16fca-fe104aedf380',13,'ca-fe104aedf380',548908,'audio/wav'),(8,'http://192.168.1.100:5000/downloadFile/83908a1c-f582-4387-8bcb-6ad52263c2f3ca-fe104aedf380',15,'ca-fe104aedf380',548908,'audio/wav'),(9,'http://192.168.1.100:5000/downloadFile/7716987f-ff40-4588-846e-2797eb1ef157putty-64bit-0.74-installer.msi',16,'putty-64bit-0.74-installer.msi',2843648,'application/octet-stream'),(10,'http://192.168.1.100:5000/downloadFile/fdc847f2-0520-48c2-bd43-da3a032bf13aputty-64bit-0.74-installer.msi',17,'putty-64bit-0.74-installer.msi',2843648,'application/octet-stream'),(11,'http://192.168.1.100:5000/downloadFile/84b9c28f-3183-4f3e-8e12-58c9fd8db36dputty-64bit-0.74-installer.msi',18,'putty-64bit-0.74-installer.msi',2843648,'application/octet-stream'),(12,'http://192.168.1.100:5000/downloadFile/fea143bb-0ed5-4f9a-b9d9-5abca9b0124dputty-64bit-0.74-installer.msi',19,'putty-64bit-0.74-installer.msi',2843648,'application/octet-stream');
/*!40000 ALTER TABLE `attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe`
--

DROP TABLE IF EXISTS `classe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `nivaux_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe`
--

LOCK TABLES `classe` WRITE;
/*!40000 ALTER TABLE `classe` DISABLE KEYS */;
INSERT INTO `classe` VALUES (1,'PS-A',5),(2,'PS-B',5),(3,'PS-C',5),(4,'MS-A',6),(5,'MS-B',6),(6,'MS-C',6),(7,'GS-A',7),(8,'GS-B',7),(9,'GS-C',7),(10,'1AEP-A',8),(11,'1AEP-B',8),(12,'1AEP-C',8),(13,'2AEP-A',9),(14,'2AEP-B',9),(15,'2AEP-C',9),(16,'3AEP-A',10),(17,'3AEP-B',10),(18,'3AEP-C',10),(19,'4AEP-A',11),(20,'4AEP-B',11),(21,'4AEP-C',11),(22,'5AEP-A',12),(23,'5AEP-B',12),(24,'5AEP-C',12),(25,'6AEP-A',13),(26,'6AEP-B',13),(27,'6AEP-C',13),(28,'1APIC-A',14),(29,'1APIC-B',14),(30,'1APIC-B',14),(31,'1APIC-C',14),(32,'2APIC-A',15),(33,'2APIC-B',15),(34,'2APIC-C',15),(35,'3APIC-A',16),(36,'3APIC-B',16),(37,'3APIC-C',16),(38,'3APIC-C',16),(39,'TC-A',17),(40,'TC-B',17),(41,'TC-C',17),(42,'1BAC-A',18),(43,'1BAC-B',18),(44,'1BAC-C',18),(45,'2BAC-A',19),(46,'2BAC-B',19),(47,'2BAC-C',19),(48,'test',20);
/*!40000 ALTER TABLE `classe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cycle`
--

DROP TABLE IF EXISTS `cycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cycle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cycle`
--

LOCK TABLES `cycle` WRITE;
/*!40000 ALTER TABLE `cycle` DISABLE KEYS */;
INSERT INTO `cycle` VALUES (1,'PRESCOLAIRE'),(2,'PREMAIRE'),(3,'COLLEGE'),(4,'LYCEE');
/*!40000 ALTER TABLE `cycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `days` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `poster_first_name` varchar(255) DEFAULT NULL,
  `poster_id` bigint(20) DEFAULT NULL,
  `poster_last_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `sender_role` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'15/02/2021','walidrachad','','walidrachad','Votre enfant à était absent ce jour à 1:00 AM',1,'Admin','14:07'),(2,'15/02/2021','walidrachad','','walidrachad','salam',1,'Admin','16:57'),(3,'16/02/2021','walidrachad','','walidrachad','salam',1,'Admin','12:44'),(4,'16/02/2021','walidrachad','','walidrachad','bonjour',1,'Admin','12:46'),(5,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:46'),(6,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:46'),(7,'16/02/2021','walidrachad','','walidrachad','bonjour',1,'Admin','12:46'),(8,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(9,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(10,'16/02/2021','walidrachad','','walidrachad','hello',1,'Admin','12:50'),(11,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(12,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(13,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(14,'16/02/2021','walidrachad','','walidrachad','hello',1,'Admin','12:50'),(15,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(16,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(17,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(18,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50'),(19,'16/02/2021','walidrachad','','walidrachad','',1,'Admin','12:50');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_recipient`
--

DROP TABLE IF EXISTS `message_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_recipient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `message_to` varchar(255) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_recipient`
--

LOCK TABLES `message_recipient` WRITE;
/*!40000 ALTER TABLE `message_recipient` DISABLE KEYS */;
INSERT INTO `message_recipient` VALUES (1,47,2,'Parent & Student',NULL),(2,NULL,3,'Parent & Student',4),(3,NULL,3,'Parent & Student',4),(4,NULL,7,'Parent & Student',3),(5,NULL,4,'Parent & Student',3),(6,NULL,4,'Parent & Student',3),(7,NULL,6,'Parent & Student',3),(8,NULL,5,'Parent & Student',3),(9,NULL,5,'Parent & Student',3),(10,2,8,'Parent & Student',NULL),(11,2,9,'Parent & Student',NULL),(12,NULL,10,'Parent & Student',2),(13,2,10,'Parent & Student',NULL),(14,2,10,'Parent & Student',NULL),(15,NULL,11,'Parent & Student',2),(16,NULL,12,'Parent & Student',2),(17,2,11,'Parent & Student',NULL),(18,NULL,13,'Parent & Student',2),(19,2,11,'Parent & Student',NULL),(20,NULL,13,'Parent & Student',2),(21,2,12,'Parent & Student',NULL),(22,2,12,'Parent & Student',NULL),(23,2,13,'Parent & Student',NULL),(24,2,13,'Parent & Student',NULL),(25,2,13,'Parent & Student',NULL),(26,NULL,14,'Parent & Student',2),(27,NULL,14,'Parent & Student',2),(28,2,14,'Parent & Student',NULL),(29,2,14,'Parent & Student',NULL),(30,2,14,'Parent & Student',NULL),(31,NULL,16,'Parent & Student',2),(32,NULL,15,'Parent & Student',2),(33,NULL,15,'Parent & Student',2),(34,NULL,16,'Parent & Student',2),(35,2,15,'Parent & Student',NULL),(36,2,16,'Parent & Student',NULL),(37,2,15,'Parent & Student',NULL),(38,2,16,'Parent & Student',NULL),(39,2,15,'Parent & Student',NULL),(40,2,16,'Parent & Student',NULL),(41,NULL,17,'Parent & Student',2),(42,2,17,'Parent & Student',NULL),(43,2,17,'Parent & Student',NULL),(44,NULL,18,'Parent & Student',2),(45,NULL,18,'Parent & Student',2),(46,2,18,'Parent & Student',NULL),(47,2,18,'Parent & Student',NULL),(48,2,18,'Parent & Student',NULL),(49,NULL,19,'Parent & Student',2),(50,2,19,'Parent & Student',NULL),(51,2,19,'Parent & Student',NULL);
/*!40000 ALTER TABLE `message_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `poster_id` bigint(20) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'16/02/2021','Description','walidrachad','http://192.168.1.100:5000/downloadFile/f9f06d62-42d9-4b55-9f4e-6dec693ba247pp.jpg','','walidrachad',1,'Administration','13:00','Une Bonne Nouvelle'),(2,'16/02/2021','DESCRIPTION 2','walidrachad','http://192.168.1.100:5000/downloadFile/d5880cc7-ad0d-4b1f-9a76-a7bf371502febg-login.jpg','','walidrachad',1,'Administration','15:26','NEW 2');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivaux`
--

DROP TABLE IF EXISTS `nivaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivaux` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cycle_id` bigint(20) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivaux`
--

LOCK TABLES `nivaux` WRITE;
/*!40000 ALTER TABLE `nivaux` DISABLE KEYS */;
INSERT INTO `nivaux` VALUES (5,1,'PS'),(6,1,'MS'),(7,1,'GS'),(8,2,'1AEP'),(9,2,'2AEP'),(10,2,'3AEP'),(11,2,'4AEP'),(12,2,'5AEP'),(13,2,'6AEP'),(14,3,'1APIC'),(15,3,'2APIC'),(16,3,'3APIC'),(17,4,'TC'),(18,4,'1BAC'),(19,4,'2BAC'),(20,1,'test');
/*!40000 ALTER TABLE `nivaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `student_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,NULL,'15/02/2021','salam','student',1,3,'message',3),(2,NULL,'15/02/2021','salam','student',1,4,'message',4),(3,NULL,'15/02/2021','salam','student',1,2,'message',2),(4,NULL,'15/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(5,NULL,'16/02/2021','salam','student',1,4,'message',4),(6,NULL,'16/02/2021','salam','student',1,4,'message',4),(7,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(8,NULL,'16/02/2021','bonjour','student',1,3,'message',3),(9,NULL,'16/02/2021','bonjour','student',1,3,'message',3),(10,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(11,NULL,'16/02/2021','bonjour','student',1,3,'message',3),(12,NULL,'16/02/2021','','student',1,3,'message',3),(13,NULL,'16/02/2021','','student',1,3,'message',3),(14,NULL,'16/02/2021','','student',1,3,'message',3),(15,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(16,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(17,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(18,NULL,'16/02/2021','','student',1,4,'message',4),(19,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(20,NULL,'16/02/2021','','student',1,4,'message',4),(21,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(22,NULL,'16/02/2021','hello','student',1,2,'message',2),(23,NULL,'16/02/2021','hello','student',1,4,'message',4),(24,NULL,'16/02/2021','hello','student',1,4,'message',4),(25,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(26,NULL,'16/02/2021','','student',1,2,'message',2),(27,NULL,'16/02/2021','','student',1,2,'message',2),(28,NULL,'16/02/2021','','student',1,2,'message',2),(29,NULL,'16/02/2021','','student',1,2,'message',2),(30,NULL,'16/02/2021','','student',1,4,'message',4),(31,NULL,'16/02/2021','','student',1,4,'message',4),(32,NULL,'16/02/2021','','student',1,4,'message',4),(33,NULL,'16/02/2021','','student',1,4,'message',4),(34,NULL,'16/02/2021','','student',1,4,'message',4),(35,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(36,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(37,NULL,'16/02/2021','','student',1,4,'message',4),(38,NULL,'16/02/2021','','student',1,4,'message',4),(39,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(40,NULL,'16/02/2021','hello','student',1,2,'message',2),(41,NULL,'16/02/2021','hello','student',1,2,'message',2),(42,NULL,'16/02/2021','hello','student',1,4,'message',4),(43,NULL,'16/02/2021','hello','student',1,4,'message',4),(44,NULL,'16/02/2021','hello','student',1,4,'message',4),(45,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(46,NULL,'16/02/2021','','student',1,2,'message',2),(47,NULL,'16/02/2021','','student',1,2,'message',2),(48,NULL,'16/02/2021','','student',1,2,'message',2),(49,NULL,'16/02/2021','','student',1,2,'message',2),(50,NULL,'16/02/2021','','student',1,2,'message',2),(51,NULL,'16/02/2021','','student',1,4,'message',4),(52,NULL,'16/02/2021','','student',1,4,'message',4),(53,NULL,'16/02/2021','','student',1,4,'message',4),(54,NULL,'16/02/2021','','student',1,4,'message',4),(55,NULL,'16/02/2021','','student',1,4,'message',4),(56,NULL,'16/02/2021','','student',1,4,'message',4),(57,NULL,'16/02/2021','','student',1,4,'message',4),(58,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(59,NULL,'16/02/2021','','student',1,4,'message',4),(60,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(61,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(62,NULL,'16/02/2021','','student',1,2,'message',2),(63,NULL,'16/02/2021','','student',1,2,'message',2),(64,NULL,'16/02/2021','','student',1,4,'message',4),(65,NULL,'16/02/2021','','student',1,4,'message',4),(66,NULL,'16/02/2021','','student',1,4,'message',4),(67,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1),(68,NULL,'16/02/2021','','student',1,2,'message',2),(69,NULL,'16/02/2021','','student',1,4,'message',4),(70,NULL,'16/02/2021','','student',1,4,'message',4),(71,NULL,'16/02/2021','veuillez valider un message envoy','admin',NULL,NULL,'validateMessage',1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT 0,
  `last_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_relation`
--

DROP TABLE IF EXISTS `parent_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_valid` tinyint(1) DEFAULT 0,
  `parent` bigint(20) DEFAULT NULL,
  `student` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_relation`
--

LOCK TABLES `parent_relation` WRITE;
/*!40000 ALTER TABLE `parent_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof`
--

DROP TABLE IF EXISTS `prof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `affectation_prof_id` bigint(20) DEFAULT NULL,
  `auto_send` tinyint(1) DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT 0,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof`
--

LOCK TABLES `prof` WRITE;
/*!40000 ALTER TABLE `prof` DISABLE KEYS */;
/*!40000 ALTER TABLE `prof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code_massar` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `is_valid` bit(1) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `request_category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_category`
--

DROP TABLE IF EXISTS `request_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_active` bit(1) DEFAULT NULL,
  `request` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_category`
--

LOCK TABLES `request_category` WRITE;
/*!40000 ALTER TABLE `request_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `code_massar` varchar(255) DEFAULT NULL,
  `date_of_brits` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `token_notification` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (2,4,'12345678','$2a$10$oTKcpLU4MfsZu6l/VvVqlex8DWg624fqkJUA1Wp9PiyZQ8jLQBOCi','PATRON.WALIDD@gmail.com','WALIDD','PATRON','',3,''),(3,1,'12345678','$2a$10$xNplU4OvCg0uzj39J8c13eEndCTe06jjFQkM32KR5FsMgz.Zg6Hma','chefProjet.WALIDD@gmail.com','WALIDD','chefProjet','',3,''),(4,2,'12345678','$2a$10$zCspV08ptw1R0N.Kwi8pB..ko3masEaH9ix07ZSnFxBGUPgAXdZXu','sabiiir.lamiae@gmail.com','lamiae','sabiiir','',3,'');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_table`
--

DROP TABLE IF EXISTS `time_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `days_id` bigint(20) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `time_finish` varchar(255) DEFAULT NULL,
  `time_start` varchar(255) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_table`
--

LOCK TABLES `time_table` WRITE;
/*!40000 ALTER TABLE `time_table` DISABLE KEYS */;
INSERT INTO `time_table` VALUES (1,1,1,3,'9:00','8:00',2),(2,1,1,3,'10:00','9:00',2),(3,1,1,3,'11:30','10:30',5),(4,1,1,3,'12:00','11:00',4),(5,1,1,3,'15:00','14:00',5),(6,1,1,3,'16:00','15:00',5),(7,1,1,3,'17:00','16:00',6),(8,1,1,3,'18:00','17:00',6),(9,1,2,3,'11:00','10:00',7),(10,1,2,3,'12:00','11:00',7),(11,1,2,3,'15:00','14:00',1),(13,1,2,3,'16:00','15:00',2),(14,1,3,3,'9:00','8:00',3),(15,1,3,3,'10:00','9:00',3),(17,1,3,3,'11:00','10:00',3),(18,1,3,3,'12:00','11:00',10),(19,2,1,3,'9:00','8:00',3),(20,2,6,3,'15:00','14:00',3),(21,1,3,3,'15:00','14:00',15),(22,1,5,3,'15:30','14:00',6);
/*!40000 ALTER TABLE `time_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unity`
--

DROP TABLE IF EXISTS `unity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_id` bigint(20) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `prof_id` bigint(20) DEFAULT NULL,
  `unity_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unity`
--

LOCK TABLES `unity` WRITE;
/*!40000 ALTER TABLE `unity` DISABLE KEYS */;
/*!40000 ALTER TABLE `unity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unity_list`
--

DROP TABLE IF EXISTS `unity_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unity_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unity_list`
--

LOCK TABLES `unity_list` WRITE;
/*!40000 ALTER TABLE `unity_list` DISABLE KEYS */;
INSERT INTO `unity_list` VALUES (1,'#F6CECE','arabe'),(2,'#FF0000','français'),(3,'#80FF00','anglais'),(4,'#8181F7','mathématique'),(5,'#0040FF','physique chimie'),(6,'#BDBDBD','historique géographie'),(7,'#00FFFF','philosophie'),(8,'#088A08','education islamique'),(9,'#FFFF00','Svt'),(10,'#2EFEF7','informatique'),(11,'#F6CED8','education physique'),(12,'#173B0B','traduction'),(13,'#5858FA','comptabilité'),(14,'#F6CED8','economie'),(15,'#F7F8E0','DROIT-ORGANISATION'),(16,'#6E6E6E','ECONOMIE-GENERAL');
/*!40000 ALTER TABLE `unity_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,'Prof'),(2,'Parent'),(3,'Student'),(4,'Admin');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'walidrachad@gmail.com','walid','$2a$10$5aIiVLpiIQglCg1u5bxSCOoBV6ckBsKxmiIvmsCNpSsKUZwGnyHQG','walidrachad',4,'rachad'),(105,'0prenom@gmail.com','prenom00','$2a$10$H51JiXvHHdmHCuBj6ZC9IOtprcKDZhFFkKE/S6unn8Dw9MnLDFxPa','J12345600',3,'prenom00'),(114,'9prenom@gmail.com','prenom45','$2a$10$U2UDMx8Jt.lMRGCTSQ.eveizvXUojWf016MqiI0OsP3/Z2FLDJuYW','J12345645',3,'prenom45'),(115,'10prenom@gmail.com','prenom55','$2a$10$vdOmykSuIr9ZIzZ8kuITFe1Y41JwS.dQmdlGnRPvdcrfS94kMOaMC','J12345655',3,'prenom55'),(116,'11prenom@gmail.com','prenom65','$2a$10$sDFRbWlQNuOPdfwCnQB7.u/420EH8Kd4wuB3lYGkJaFetWneEvFPa','J12345665',3,'prenom65'),(117,'12prenom@gmail.com','prenom75','$2a$10$40HSPjezP0Nu1vRiQI3dT.BeWNaOgqbUTuckSeiBlGDp0LMeLPzzO','J12345675',3,'prenom75'),(118,'13prenom@gmail.com','prenom85','$2a$10$HwM6Ae/SB3c2oK82muQxPO0uqgRAF0N17OvyXN5LC2zwa1vYh8PiC','J12345685',3,'prenom85'),(119,'14prenom@gmail.com','prenom95','$2a$10$8Qtq/ZD.6fmbSEyTRsIpG.wTpmAxFIGP9cCTHlhr2Q6/gq.O48xla','J12345695',3,'prenom95'),(120,'15prenom@gmail.com','prenom105','$2a$10$33GbWz8yE16D01PLNZhyjOjH8ZpsBRXgsC3TVIpBLQVaBLD9FazYq','J123456105',3,'prenom105'),(121,'16prenom@gmail.com','prenom115','$2a$10$oR4oAFutC/Qwz7XJaaDgy.AeckrZau3i5Os56YXtOvMjFFgdbhCbu','J123456115',3,'prenom115'),(122,'17prenom@gmail.com','prenom125','$2a$10$uXNXoJ4.4W83EPD9cbje6uM.W8Y93B7lNZjM4ZIaUzCAsVqUZbH4a','J123456125',3,'prenom125'),(123,'18prenom@gmail.com','prenom135','$2a$10$9EsWk1OujIwM3lyTuqNq9uV5Ep9.zf9hmHuWmCYmQ4uZAMotj0Wh2','J123456135',3,'prenom135'),(124,'19prenom@gmail.com','prenom145','$2a$10$p/apzM6NoQjDyPwEIjzcf.5R2q5nNrLTZizUKF/FVoH.50/C1YvMu','J123456145',3,'prenom145'),(125,'20prenom@gmail.com','pren','$2a$10$27tS91xE0KmA0pOfROchMOnXRhZ6FAFK5tnZAC1mTZ/qwoGwxXPk6','J123456155',3,'prenom'),(129,'24prenom@gmail.com','prenom195','$2a$10$Z5zJvVkHoyiJbzP31MtOu.dKAZjqVFneivU.e/cozNpcROq4VNyNm','J123456195',3,'prenom195'),(130,'25prenom@gmail.com','prenom205','$2a$10$t7YsY2Qk3NJAFXZ14hu2qezj3TLJJnIZ3D8rWPaGdwqNQr6yYhNfi','J123456205',3,'prenom205'),(131,'26prenom@gmail.com','prenom215','$2a$10$gJesPe.S09ZFd6cJ9..DxOPeq8Z0T1jXV3oAnEXmaz0pIW1nub2pm','J123456215',3,'prenom215'),(132,'27prenom@gmail.com','prenom225','$2a$10$p5AM889cwoyHlZeA4boknu/L.vPMGlWPEys.unJYe7cehU4qXq7pK','J123456225',3,'prenom225'),(133,'28prenom@gmail.com','prenom235','$2a$10$TkFckRpmpxXKBtCc840gQ.qIh1jqAOBfIeh7OiVY66.rW90fAciE.','J123456235',3,'prenom235'),(134,'29prenom@gmail.com','prenom245','$2a$10$UhRCwBlxjBoU3QC72HENoORB91ZS.UIpXNqN7aFMjPh3ntJgtsGHe','J123456245',3,'prenom245'),(135,'30prenom@gmail.com','prenom255','$2a$10$p97nTOdhi/HUDgPbSL79DeZJp2Nr6CV8mAiUt4c//FC0F68qhyxMu','J123456255',3,'prenom255'),(136,'31prenom@gmail.com','prenom265','$2a$10$STaZ8TY2bA4FiwnhtHLea.2ciB1GsqKUNiO6Cf4fho9JWbFVg7GpK','J123456265',3,'prenom265'),(137,'32prenom@gmail.com','prenom275','$2a$10$jtJ10v.Kw9UfbL81WMyQkelDiQmIGOtqFC80tt2Gm45AqKSPcGNBe','J123456275',3,'prenom275'),(138,'33prenom@gmail.com','prenom285','$2a$10$BdLT3pLThBazjkbvKnZKs.92PhaWsDi1qa8Attd8Qbo/O6yKP.Hpa','J123456285',3,'prenom285'),(139,'34prenom@gmail.com','prenom295','$2a$10$jBYCeAZ6S5BUxqcl6Hsj8.B4jBRucGdMAn6J1eaXeKbxbEyjACWLa','J123456295',3,'prenom295'),(140,'35prenom@gmail.com','prenom305','$2a$10$vFd1HOxU.0SltQZLr0dTheLT8700aYS8I/Q.YLMofvc4ksKheW502','J123456305',3,'prenom305'),(141,'36prenom@gmail.com','prenom315','$2a$10$sdA7SmW6igsjn7RNVTVBOO7ulaNAFAarHHRhPHiw1SPAMndcyfCYW','J123456315',3,'prenom315'),(142,'37prenom@gmail.com','prenom325','$2a$10$nkBL23IvZFAxJq8IQ4In6exyjEC.DzG0//ECwbAMgVvRymqHZPnGK','J123456325',3,'prenom325'),(143,'38prenom@gmail.com','prenom335','$2a$10$SB8KImg.PjJmB9mMhxJ.a.J3Hd2hvZIcnMEC3B/YN6ImRfwfJ5eRu','J123456335',3,'prenom335'),(144,'39prenom@gmail.com','prenom345','$2a$10$PVgN.2QoozYbhm.4H6SgVOyTyYqQGVZNSFUY1YtB1IlTgjz9aG2C6','J123456345',3,'prenom345'),(145,'40prenom@gmail.com','prenom355','$2a$10$IUd3utrJ.JLxnvcBOu23BuIupTRoPSyggQ/dW.Gp/CLIe1TGGLDt6','J123456355',3,'prenom355'),(146,'41prenom@gmail.com','prenom365','$2a$10$NgTwW8GrShF3swUcPx/0BevxymDcvbZ/PjnOUs7rBLGTdcT4UYXs.','J123456365',3,'prenom365'),(147,'42prenom@gmail.com','prenom375','$2a$10$gGtjreHz79QdXWnWYqdhYuEbZOD3ah02kFCwVvpYPAjto2ERxfDpm','J123456375',3,'prenom375'),(148,'43prenom@gmail.com','prenom385','$2a$10$h67ca1e3tMqdJw7KbJa25.Ca692Z/GPM98ls.Vi./7IY7kW6n4iW6','J123456385',3,'prenom385'),(149,'44prenom@gmail.com','prenom395','$2a$10$aIh1LeMXQUGIzVFGwxz.C.Vy9A3w57NJPc2gQjl0fZKD8EZl0Mx2W','J123456395',3,'prenom395'),(150,'45prenom@gmail.com','prenom405','$2a$10$RrYubBglkTgAGF5owfOtZ.LWM5sk0rspocfkTK9wp7IowOwdyJeo6','J123456405',3,'prenom405'),(151,'46prenom@gmail.com','prenom415','$2a$10$kgKQ9qEDTttgDyxj21TN5ed/wulX51QKNBV7JyUDPHWbBXPOgwR2m','J123456415',3,'prenom415'),(152,'47prenom@gmail.com','prenom425','$2a$10$uBnj3RyrEyccZQf95dOIo.MlsGnKzqLaexssHmDfGFXjWMJ8VXCKK','J123456425',3,'prenom425'),(153,'48prenom@gmail.com','prenom435','$2a$10$rx0oqp3Svcv6N/RrE3KttOyu8Y7HfsAEZPBf8nNmAam3bOGEY.vnW','J123456435',3,'prenom435'),(154,'49prenom@gmail.com','prenom445','$2a$10$xXVRCPbCYAHFz03bK03Bx.zhXJ/WLi3kDgQ05HW4niHMEObKVKmJ6','J123456445',3,'prenom445'),(155,'50prenom@gmail.com','prenom455','$2a$10$7P0EghjDZs0QAF3R./tMwu1AdaMJS8GYmHXnxh3DGMh/.qhqWrarK','J123456455',3,'prenom455'),(156,'51prenom@gmail.com','prenom465','$2a$10$sUqB8z9XkIAkac6tMkpA9Oq1sAHtezhEGtQewEyD.RPG1O79S.8Y.','J123456465',3,'prenom465'),(157,'rachidWasif@gmail.com','rachid','$2a$10$M5aEtCDPCyZcnXdNfoyqLOKZxtvbUlJJDpTbOWEYUdC3.idSH7IBq','J12374747',3,'wasif'),(158,'thgyh@gmail.com','walid','$2a$10$./y9lN9FuqDu91Pno.4fjeFfz2W1rQ4MQ1fXX8PlqDftKajUReuey','tytytytyty',1,'tetetetet'),(159,'kkkkkkk.kkkkkkk@gmail.com','kkkkkkk','$2a$10$.67EGU//15m58Ld8A2ffO.7.ATfRYVMOOMXnUpnJbWXwV6XZCAVz2','kkkkkkkkk',3,'kkkkkkk'),(160,'EDCEZ.CDZCZE@gmail.com','CDZCZE','$2a$10$GDShMnHNzDdgvNZ2330rF.NiGVlSVpBUGxFrdh6G7/25teIsbcmHG','CQSD089',3,'EDCEZ'),(161,'ABIDOOOOO.ABIDO@gmail.com','ABIDO','$2a$10$3sD5BOZoMJdtHJn2lXzkQuNYD4TEzkIOIb2DXw.Vq3uvMjbf6bI2C','FSF3T34',3,'ABIDOOOOO'),(163,'WAYLIIII.WAYLI@gmail.com','WAYLI','$2a$10$i9ss923VNzY5AoljQ8lCaul90ySiXI/1KamPZHnOvPCesbJPf6asK','FFFFFFAE',3,'WAYLIIII'),(164,'WELDNNAS.HASSAN@gmail.com','HASSAN','$2a$10$iCCPavPaZDBtH16Rtc4FK.j1HFFcaC9w8joAz.1viAdyaTHPqTDIC','SCDF35T',3,'WELDNNAS'),(165,'tazzi.ahmed@gmail.com','ahmed','$2a$10$eVEdBlsuUaI6Dt5U7her5.6V5rIB.eg3CdiMnTOYLDNv6fIVIXW3q','fsqrt',3,'tazzi'),(166,'7nkour.walid@gmail.com','walid','$2a$10$xfMgIp9V1ZN1MQL7dhAc0uKGiz.45KkMKLzPJz0X6AKe6R.bNZeYG','F4543543',3,'7nkour'),(167,'artiste.walid@gmail.com','walid','$2a$10$SbielM4/6ZPny2GBlIKJseypuPK.t0iz.Bh5a2CFdsA7JErH9gTJa','3T452ER',3,'artiste'),(168,'WAYLIIII.walid@gmail.com','walid','$2a$10$WjOdUeTZUCL4hLQDxRfTfuGN7kfdDOX6WFw.huSh5LptxbeyDsIlW','VCQSGET',3,'WAYLIIII'),(465,'parent0@gmail.com','parent0','$2a$10$U4NWTdugVdOE6LerLfv6xOeu.ydfvG4uOI3YTKFT86dWBjbd2ns/O','066853590',2,'parent0'),(466,'parent1@gmail.com','parent1','$2a$10$Koi8DcC7KTOoze8XnMbBWu7radkrWcwRAmiggle9AseIJxmDMKwS2','066853591',2,'parent1'),(467,'parent2@gmail.com','parent2','$2a$10$SNBDh8ZKDUud4njBK8vINugWyXWW8buZwTFkCWMdg39Y4FZ2KFYDK','066853592',2,'parent2'),(468,'parent3@gmail.com','parent3','$2a$10$jCh7zb/mAwEcaz6AoC5LgOy6tlIqt0i77SQxuqbF0gt1XJTTabMni','066853593',2,'parent3'),(469,'parent4@gmail.com','parent4','$2a$10$iFEKTYb0VmDM1qf/ciFrQeEj/dIfh9OKN4vIzGAdMGcq3Z81Ac6aa','066853594',2,'parent4'),(470,'parent5@gmail.com','parent5','$2a$10$8P7UoDwpnDdamAd.ckEz5.WpuklmOlwrFm1qbcGjpymCcWwh54ZdG','066853595',2,'parent5'),(471,'parent6@gmail.com','parent6','$2a$10$.krpTZIUIr/I8wAxMlH.h.lfsHpvf7uLZ/ORrlsdTY7Wfld5zsUpu','066853596',2,'parent6'),(472,'parent7@gmail.com','parent7','$2a$10$Now/leGed0VH7US92/I4xO2uEjuZaP6urTXE7L0gdVPtD8T6JzsRe','066853597',2,'parent7'),(473,'parent8@gmail.com','parent8','$2a$10$PGDIK2DkpmVMzjPCLOrJYOZmuBHwgz/gjEEaZqHX4T/WRl3XieC.e','066853598',2,'parent8'),(474,'parent9@gmail.com','parent9','$2a$10$UJqxOVF/YiFjhmRPVoEbf.xje5DHMkcsjjBgI6H4EVN72BObJM5Bq','066853599',2,'parent9'),(475,'parent10@gmail.com','parent10','$2a$10$eFXR5Q/cmGndR1OzNteKrufE5P9ESQSfi45o9n428CbdiHrO/dKL.','0668535910',2,'parent10'),(476,'parent11@gmail.com','parent11','$2a$10$p2src03MWPpQZ2zLq8D.LekVbaYU35q880A/UddW.SE3ICb3DWd3W','0668535911',2,'parent11'),(477,'parent12@gmail.com','parent12','$2a$10$t4y0kklqY1yDUXDyz/9xd.JThuWiQCSktZVoyA86CRDdzocj2WOCK','0668535912',2,'parent12'),(478,'parent13@gmail.com','parent13','$2a$10$wwj.PvKIx4O44JBSWUukhepsXXnL2iULphRqBkobnfatKmzWpOpQe','0668535913',2,'parent13'),(479,'parent14@gmail.com','parent14','$2a$10$MKM09rpE4KhjiJxp0kIcBOakAtQktyFSa8grlI6P2EGscYGBcTPFO','0668535914',2,'parent14'),(480,'parent15@gmail.com','parent15','$2a$10$xKgNb8bOsXGjZiTLvK4wHOPXHzQcJade3a21hS.yh5/B4vdiBMxke','0668535915',2,'parent15'),(481,'parent16@gmail.com','parent16','$2a$10$oLWL5vP12uXvbEpP8Dll3O.9681UJSwdEXRwlv4EKA9yxKqCb3HnS','0668535916',2,'parent16'),(482,'parent17@gmail.com','parent17','$2a$10$lcsGPHoRBdSQQVCLUP1O.uAYSoTxBjPHMY8N.IUdbTfEpjisXP4n.','0668535917',2,'parent17'),(484,'parent19@gmail.com','parent19','$2a$10$V3yU1IkPVDOO.1OPJu/Qde9IC3rpKanOaUMHY/aahKKydCDrQsdJG','0668535919',2,'parent19'),(485,'parent20@gmail.com','parent20','$2a$10$yotzje6JHKbKc/qKeGWdgOftwYEwPIkXPGiihLH21uKmrZXUTVCwm','0668535920',2,'parent20'),(487,'parent22@gmail.com','parent22','$2a$10$n3jIn45QUWlVvLyK95PIpOuf7SEjrdQryMgi/UZ2lQPoKAyDP9f.W','0668535922',2,'parent22'),(488,'parent23@gmail.com','parent23','$2a$10$47Iij.OVxm2H9jXC36EuUueCn453uyPCCuy33JSkqqGZulZhDFeK6','0668535923',2,'parent23'),(495,'parent30@gmail.com','parent30','$2a$10$yLlwHVL3KDKUMMtA8hh81eJQ6KVza3aKFwNqObtXh8RR6QiYp94X2','0668535930',2,'parent30'),(496,'parent31@gmail.com','parent31','$2a$10$z/7vBsVOtW9R7EAX4Vz.NuDp35akivpypkpv5VAVJfCuZ412nM7l6','0668535931',2,'parent31'),(497,'parent32@gmail.com','parent32','$2a$10$kGrbZhQGdbfm2YH/MHKk2.7qxZvdjQrjju0p4oJ4cEBhT64bhdKtu','0668535932',2,'parent32'),(498,'parent33@gmail.com','parent33','$2a$10$yR8Zqy0xkFqsRrzhl9oP3e7DgjLQab1CsZWvor.A0BLIUFbkLOtDy','0668535933',2,'parent33'),(499,'parent34@gmail.com','parent34','$2a$10$zMN97qDcpvtu88qeRsLae.Q9HJhHMNARI..TzTXJ8I/FgpPlrmluq','0668535934',2,'parent34'),(500,'parent35@gmail.com','parent35','$2a$10$GyZhnyHS2usFmsVLAKslK.rj8eRnXoHYktxgdMIQOhCJbboUR7NjW','0668535935',2,'parent35'),(501,'parent36@gmail.com','parent36','$2a$10$h4XNJLDo3Pi2IxB9hR2oDOmx0X5AoOjZuv8hk4dbavMXj4CK13cHW','0668535936',2,'parent36'),(502,'parent37@gmail.com','parent37','$2a$10$A69Hwn1hL.fl6/.V8lM89.uP2uSMZsyrFsxwtgY22ELQYnNPI2AX2','0668535937',2,'parent37'),(503,'parent38@gmail.com','parent38','$2a$10$jOdb4P9hD3GL7RFrM/7j9enQeJZb2.eLlxCGhJwen/lt1b882xJuK','0668535938',2,'parent38'),(504,'parent39@gmail.com','parent39','$2a$10$ULM2G3KYk2BdHkMeps3uZubrG8CMJchMqk0ARbRImRPW02kX5fK8S','0668535939',2,'parent39'),(505,'parent40@gmail.com','parent40','$2a$10$0lFmyR3yHnfE/PmZqj..SulYcKVlITNy8Wuv0iaaA/ylCNjgZnQ0q','0668535940',2,'parent40'),(506,'parent41@gmail.com','parent41','$2a$10$zrl2WR8QBQj8YPMWh59HseoaCLIJS6gWZiac.8FZaz.wNUhN4h5da','0668535941',2,'parent41'),(507,'parent42@gmail.com','parent42','$2a$10$5Q6GwhjLU8f7DdSO9uHWBOVlxUb9OonGN5ICXtTW2rn1/Ews.6FCm','0668535942',2,'parent42'),(508,'parent43@gmail.com','parent43','$2a$10$WfrbZ/UH/MSb04YQYVgdTun7grHhIloLkdx8erjL5PulWOIBzsFgy','0668535943',2,'parent43'),(509,'parent44@gmail.com','parent44','$2a$10$CWYywehdEINkAm7OCkp.2uU3LynR9i.MSmJar/FuGXA6ijglpEs9W','0668535944',2,'parent44'),(510,'parent45@gmail.com','parent45','$2a$10$8lK4vlT3SAexHUfp7kYPUO6X0Jv/Hwv5so0SmZ25C7sNxRMhTQQSy','0668535945',2,'parent45'),(511,'parent46@gmail.com','parent46','$2a$10$dqd9R2bbkLhE0Y4Tufo2Wej1C0hw5/KMYugm7gNiut49PTFBcXmx2','0668535946',2,'parent46'),(512,'parent47@gmail.com','parent47','$2a$10$tZ1verKu6RHdkfrgs86s1ef/VK1FcUlFrOf71gD/Du5KbhK0BZQOu','0668535947',2,'parent47'),(513,'parent48@gmail.com','parent48','$2a$10$YqRt2ILDkVyU1Kg3ScsShObyMzEGR3AY3NiOzt/rk8tO9mjjPh2Ya','0668535948',2,'parent48'),(514,'parent49@gmail.com','parent49','$2a$10$YTPWyw41dj69L3IKPcf4I.WquAoP4Eudgtso7yFYWZ1o4xu1XKijK','0668535949',2,'parent49'),(515,'parent50@gmail.com','parent50','$2a$10$xFI0oG7TRTCUWTBnsJQbb.2WhCP2gJjC3LKfR4uo0k43l23LJbN9u','0668535950',2,'parent50'),(516,'parent51@gmail.com','parent51','$2a$10$0LvdvW03hubAaFe9SRJfHeUu0DT9Zt4ftGSjA3wGhD5ridoJl4Ism','0668535951',2,'parent51'),(517,'parent52@gmail.com','parent52','$2a$10$NWVoBCZFkqswMO9JIXunTOvAjAAcolm5Kb3dwpgErIyNFjbIJoRKe','0668535952',2,'parent52'),(518,'parent53@gmail.com','parent53','$2a$10$CCnTkkjyGUleAcB5Qw1SouEWvi6gpZCIuV1V2WBVFxDUuRdWk93S2','0668535953',2,'parent53'),(519,'parent54@gmail.com','parent54','$2a$10$mN2Qf.dUWKV31VFkN4KPpeun7UyydlfJc2GS40GA2ua7Jx.e31td2','0668535954',2,'parent54'),(520,'parent55@gmail.com','parent55','$2a$10$JcKWiacivTu4kdGcl2qPb.2AoCXYOsRpNKTHRq1L4lr4VGzLGQLoy','0668535955',2,'parent55'),(521,'parent56@gmail.com','parent56','$2a$10$JsaGa6798QrIZFFhh4zbF.OrlVHKGR4Bkwd5G9jItj3U.sTvEmJmm','0668535956',2,'parent56'),(523,'parent58@gmail.com','parent58','$2a$10$WaOfyKfdi7P95avoj/U4euKda7xwh/kz8daSs99BKB9X6A52NvIl6','0668535958',2,'parent58'),(525,'parent60@gmail.com','parent60','$2a$10$hTYQYXUwiKuh9ezodulYWO2TpN7gwLp4giDpHuWbFvtUvq0mG7cEC','0668535960',2,'parent60'),(527,'parent62@gmail.com','parent62','$2a$10$AV7O63g0UEkdzxmo2oMBu.xy8oA.FwdfMMR1ZrTeDsRmrpnr3e2Im','0668535962',2,'parent62'),(528,'parent63@gmail.com','parent63','$2a$10$9aDvugqsINnAZv.69dz2sutHEPMg7lU90nrBP.lf3G.V0rZQ4Q7KO','0668535963',2,'parent63'),(529,'parent64@gmail.com','parent64','$2a$10$y8pmHiUaGoHkAAf3cPpc/ugvXWYs7EflvcgEXjRMrcjBiBMox/MHe','0668535964',2,'parent64'),(531,'parent66@gmail.com','parent66','$2a$10$RSc7iypCtNE1Q7.1Fik0S.MpqK2wlTfLD7MyUPnirzYRzRcEdoAXS','0668535966',2,'parent66'),(532,'parent67@gmail.com','parent67','$2a$10$vK/88MfmB.Cd4OXZBR0.CeXwwUQVyHDC8cI7ivaUfh46Fqd3h0NqS','0668535967',2,'parent67'),(533,'parent68@gmail.com','parent68','$2a$10$9R.7WOVs4h3YyJXs0bj3PuIqbhwxOb.nF88b7U0FUWcc5MjJofCEW','0668535968',2,'parent68'),(534,'parent69@gmail.com','parent69','$2a$10$Hnvtjg22t6QLz0wy9EfYMO.M/O4565bVzM.CzwKGxmaoYvfP9U9iO','0668535969',2,'parent69'),(535,'parent70@gmail.com','parent70','$2a$10$CJ0Z.JkwPbAVOdFhYEsOFuhuafJUnh9RC2Hx1CVgw.VRh1qVjeG42','0668535970',2,'parent70'),(536,'parent71@gmail.com','parent71','$2a$10$5mzDy/PFIRWB7kwwUH7im./Rv8PfyRwOEeTizntlqlg0RJ77mfcBy','0668535971',2,'parent71'),(537,'parent72@gmail.com','parent72','$2a$10$sdfQCU2yPXO/FwOwTHH3feqbLz.kfYjss3t99W5Iml10qF76nbIZS','0668535972',2,'parent72'),(538,'parent73@gmail.com','parent73','$2a$10$K.PndeIF6WpuPNGr5OAywupl33x8776AvRaZekPCsS1YHLnLMMyU2','0668535973',2,'parent73'),(539,'parent74@gmail.com','parent74','$2a$10$sBnjLOL2IuZS.ZU9vuuyTekjsRM5hTPsJpNARSivL4Q0T989Wblhy','0668535974',2,'parent74'),(540,'parent76@gmail.com','parent76','$2a$10$C4elgqRXTBotv1F4.fmeBuDQ/5NvbSDkfWRecQSRdPX9TLuHyVgrO','0668535976',2,'parent76'),(541,'parent77@gmail.com','parent77','$2a$10$glyUHUcdIZMjY2fg7NMYluz5Ym/0dAH9moX3UmzruspQhj0kf42tW','0668535977',2,'parent77'),(543,'parent79@gmail.com','parent79','$2a$10$VB4U7Qd46A7HFTmgkmgf4uheIPpZ8NK.wbPNOc9DsV2RSR0gD24KC','0668535979',2,'parent79'),(544,'parent80@gmail.com','parent80','$2a$10$sgrezEBhMbDbV7RQwhK1WeBCX4FoT0S3jOT6ggDWOqPbotMw5z5ay','0668535980',2,'parent80'),(545,'parent81@gmail.com','parent81','$2a$10$Gmlc1dTUVWmD117FMKHuqe6cXWdh6zLvhabSkbptsmTSH4rFOs94e','0668535981',2,'parent81'),(546,'parent82@gmail.com','parent82','$2a$10$K2DHbrGBUSTNxuM0t3oUVeb8vmm49efuiAu6W7odxqxVbMMZwruW6','0668535982',2,'parent82'),(547,'parent83@gmail.com','parent83','$2a$10$wzCH6mu9yCFHp1tiayduzuuS/MEljb23DtzyrbKgIzCnBPOoVxNfe','0668535983',2,'parent83'),(548,'parent84@gmail.com','parent84','$2a$10$5C/SE8qZ/qZm9/LvsvszO.GygCJ4dVWZLdn2xLjSxlfxcs0JCOc9O','0668535984',2,'parent84'),(549,'parent85@gmail.com','parent85','$2a$10$nnQxU8ILyVPNRCFDtGawg.luTCjJtfgenIvCi4oRIl3mEEzVq92tm','0668535985',2,'parent85'),(550,'parent86@gmail.com','parent86','$2a$10$/ztVIA7lrQS90HmjCrcLne5kr20eKLb4YbMoloRImsZPIRjniQToW','0668535986',2,'parent86'),(551,'parent87@gmail.com','parent87','$2a$10$FxaswfAgjNQyN72HaUaoMuzZpD8mYCzM78ied8R3k1xlomvaK1xiq','0668535987',2,'parent87'),(552,'parent88@gmail.com','parent88','$2a$10$K9o9j3xt3noRRbWSj3TNJ..0ZYsJNwAqy2nqEnYrxLAuPnHy.EFAS','0668535988',2,'parent88'),(553,'parent89@gmail.com','parent89','$2a$10$DCVjRaErPyPtv9TCxj6Bb.cfENVHRGL9otsXHks2kCbaAzCoN8Qsi','0668535989',2,'parent89'),(554,'parent90@gmail.com','parent90','$2a$10$WFs7lIuYg5Qff9DsOygqxeyKsm.mPQWODY3NDf/EqYNY79hhz6jAK','0668535990',2,'parent90'),(555,'parent91@gmail.com','parent91','$2a$10$Yj3w2NHp4ufTnQPqJQCDdezy21mI0LMspl9RdFdOrqYzrj3LvadSK','0668535991',2,'parent91'),(556,'parent92@gmail.com','parent92','$2a$10$eDuz5ZAt3KUorRR1.x45VeVIcnJ99sdo.gAzm9fewd2mcAw8Lli/a','0668535992',2,'parent92'),(557,'parent93@gmail.com','parent93','$2a$10$u9nQge467q1CHCHDNE1OLuxUJ0QeF.bgJZD9OzavPRSEuTC6xAabG','0668535993',2,'parent93'),(558,'parent94@gmail.com','parent94','$2a$10$AQkT8iHtwrO00RYkXPnLJevbV2JhDukRIqOzCPJBQFpKIY5YyO7Ai','0668535994',2,'parent94'),(559,'parent95@gmail.com','parent95','$2a$10$0gswKMhdCghmr4vKpO7kKuoBxzj1sV/9jsN.b4y6hKHA79aSoX5g.','0668535995',2,'parent95'),(560,'parent96@gmail.com','parent96','$2a$10$BYHM00pNaDM5zh1DLPxQduXvK8lZRvrU9rclVIq1wtcdI3g7Jr5VK','0668535996',2,'parent96'),(561,'parent97@gmail.com','parent97','$2a$10$cAYvcNGGXFD4984D9Bffj.mmh/E6Epp4k561uGGKIcB72ZR8NUwUS','0668535997',2,'parent97'),(562,'parent98@gmail.com','parent98','$2a$10$cKEBh1se0G8yYg8zCAYPkuW99/c8.ZHyLD9ODVmWSfFuIiW5hiNDq','0668535998',2,'parent98'),(563,'parent99@gmail.com','parent99','$2a$10$i90hIQkMcq99rwouj/1YFO94/.TZejdFd.dCBai3lBIkuzrJyX6L6','0668535999',2,'parent99'),(564,'parent100@gmail.com','parent100','$2a$10$SzrIt5r1ry5hf/AcodDGKu4h8vXkfALapGX5AicEFs7Y4qeonqKwC','06685359100',2,'parent100'),(565,'parent101@gmail.com','parent101','$2a$10$w2jM.9GOY4.xnAZGpNU77OH6/VXeYovGwH/RUKPgbF52ksw5Ulihm','06685359101',2,'parent101'),(566,'parent102@gmail.com','parent102','$2a$10$UfQ9ZOCPVA84wfF2hPG.X.RSZuWsTm.HywTPeLgmw/wNzJX7oEH7S','06685359102',2,'parent102'),(567,'parent103@gmail.com','parent103','$2a$10$TKuyDtQl8vTHGdj9JVApBO0mSjsNLlNsklofDUDH.2Ehihh9Iw.dC','06685359103',2,'parent103'),(568,'parent104@gmail.com','parent104','$2a$10$1O6sKrAvJeJlvmN3GLf.J.3xJ07oj.6fBz1thINZl23Ekbqkg4rUu','06685359104',2,'parent104'),(569,'parent105@gmail.com','parent105','$2a$10$G61xFM7ozMUUcyG02ssyf.PomEQSXCBJ2fkMIWcEwQMjc/gy7y9Rq','06685359105',2,'parent105'),(570,'parent106@gmail.com','parent106','$2a$10$8ThuWkqeQZ08RgfyBlv9ZODtFBgtN/tkJJvtwUTCwXF1rPFQ3UytS','06685359106',2,'parent106'),(571,'parent107@gmail.com','parent107','$2a$10$bgnvvUyXnBmi0xM3mxtv4.rYx63tOMbPNdSZIWw4GJTiuxBctWFZ2','06685359107',2,'parent107'),(572,'parent108@gmail.com','parent108','$2a$10$aiyo9YAgM5uGx.lbuGSH7OZmJaFJjFTIKHKW6cmX1jLMPTyDN8gp.','06685359108',2,'parent108'),(573,'parent109@gmail.com','parent109','$2a$10$gzA1QEDMYNwi1R44W8zPZe3oy3lLRFmNktVKNrLhXZExg0JgLreLS','06685359109',2,'parent109'),(574,'parent110@gmail.com','parent110','$2a$10$yQo1JgVALidIMtTzICY3ueb1WeEH6AKMQLDxmHTWvgEXKCrbPXq8O','06685359110',2,'parent110'),(575,'parent111@gmail.com','parent111','$2a$10$AZchXg2/NR5r.eRYZEoZe.eOjewk/DApVWSkR0hKt.oyKjhBKAIRW','06685359111',2,'parent111'),(576,'parent112@gmail.com','parent112','$2a$10$0X9cBvLm4fuy69TNLOckeO.xnqGFtGhnV9E81SH.jP1JbzO1OhUWG','06685359112',2,'parent112'),(577,'parent113@gmail.com','parent113','$2a$10$MYK4nmViGiJZNZ1xpr8DVOady7PW8TejeJAYy1fVvaDChQGhPiwh.','06685359113',2,'parent113'),(578,'parent114@gmail.com','parent114','$2a$10$LH3/QzoRvoFV0.zTJJU0veNG06GNuz7QroPzFysgzPQhg7HQyVfR2','06685359114',2,'parent114'),(579,'parent115@gmail.com','parent115','$2a$10$51rOLT2EYp8KxITCir3amOE/bD4kktlOOPJtd.lhtZegIcz0jySSi','06685359115',2,'parent115'),(580,'parent116@gmail.com','parent116','$2a$10$3h8AEMm38k8mn5zWo6m33umOp2d0smsvlnc50RbiC1tKY5RDBQhcy','06685359116',2,'parent116'),(581,'parent117@gmail.com','parent117','$2a$10$euZfkUuS49e/KUQawBbiL.ZQNZx5jusgyaphfGJiwrZHYj60q.HfG','06685359117',2,'parent117'),(582,'parent118@gmail.com','parent118','$2a$10$cV6pMXh9/4H0P0XVGO5i/e7kNW6WSZ6Fk42tkucCrY53FmHoyjFOy','06685359118',2,'parent118'),(583,'parent119@gmail.com','parent119','$2a$10$cWEZqopoAPRXF2T7/HPfn.yY0gLlQpQfVQz1hgwesueH8FplLtEou','06685359119',2,'parent119'),(584,'parent120@gmail.com','parent120','$2a$10$SJ8iJnfBksYT4LPeFQ69vuCiX08Y5y/WlLT0VYZabl8cuxvyCN4bO','06685359120',2,'parent120'),(585,'parent121@gmail.com','parent121','$2a$10$HmaGuNi9uIKtwWKJ6ZE1HuBQvtW/HNx6uc61vf7QbSzmO3Izfer8G','06685359121',2,'parent121'),(586,'parent122@gmail.com','parent122','$2a$10$g4K47ENs6YlCfao/xoEtTeFQGg1YRxquEKSy5C.Y/tJ3JfajYDvBO','06685359122',2,'parent122'),(587,'parent123@gmail.com','parent123','$2a$10$UbFDXPaTcgbRRBP1LHfffuOVdppOJpD1vDFWaVyR/vMyErd8fuiaS','06685359123',2,'parent123'),(588,'parent124@gmail.com','parent124','$2a$10$VilUXHnvX.hnz5p1LQQtqepLo6csn/eo2bBhfWxI09B9jH3bHNUki','06685359124',2,'parent124'),(589,'parent125@gmail.com','parent125','$2a$10$Hm5je2LmSuaRdPNLMSu0BuhilO6IUiV2vZoCCYJeo01h9wNXeAb3i','06685359125',2,'parent125'),(590,'parent126@gmail.com','parent126','$2a$10$nts0GvcOLmchlJW9oLCEt.SXpgSMYZSfbOGLQx0lwQZwsxMYe7K5.','06685359126',2,'parent126'),(591,'parent127@gmail.com','parent127','$2a$10$qoqAdvH5d6M7V3Pw2PzUDeLJoKUJ2/lRKl1xt6sAiyAxHx5NLstre','06685359127',2,'parent127'),(592,'parent128@gmail.com','parent128','$2a$10$AL999cB6p5NWgNfkfLE8ouV6kNZfIbD1IUJihjDRajAsbldtDepNa','06685359128',2,'parent128'),(593,'parent129@gmail.com','parent129','$2a$10$bpvmR4l5wZF2BHGzQa2pFOjX0NdZi74rEjX/2NQbdDcuVepOr4mty','06685359129',2,'parent129'),(594,'parent130@gmail.com','parent130','$2a$10$YVbbdjYWHbUGXhvuKDhI3.qxQMdkz2He2AvI0VeI5.e37MNBydiUe','06685359130',2,'parent130'),(595,'parent131@gmail.com','parent131','$2a$10$qeViXJk/sMiViz.bN0W/wOh.K5R1C88s3Z5cSB8iWXyOSIbgQu7Mu','06685359131',2,'parent131'),(596,'parent132@gmail.com','parent132','$2a$10$bgGRjVvlowgkCwadWKdTFeINMRlTIUI38VQNmW9pOeVPNP83R192G','06685359132',2,'parent132'),(597,'parent133@gmail.com','parent133','$2a$10$xpeSdcnqxKJAXyWd9fmg/ed9hqZSGmmh4LiY0RY1mq/FvOjBjSZKG','06685359133',2,'parent133'),(598,'parent134@gmail.com','parent134','$2a$10$pqLcbz.Z4ys29BBSqA.lgOiMwVKkxTOa7UIMZ/655k4WGljdMaVYa','06685359134',2,'parent134'),(599,'parent135@gmail.com','parent135','$2a$10$x/E9u3f2r6IeJten8PuyC.ku2V7jdlzUL9TgaY1DhxrN8ygOIyPAq','06685359135',2,'parent135'),(600,'parent136@gmail.com','parent136','$2a$10$2cqiKEoEQQO6RANgpKthleJz6rcjYz3LsK6aj3NXhkDwtopO/gK/O','06685359136',2,'parent136'),(601,'parent137@gmail.com','parent137','$2a$10$bqF.0jU5nHoo8RRNlLmZbOKK4xmIC.3Z.XEj/uuuY9YFLkxWKUwtS','06685359137',2,'parent137'),(602,'parent138@gmail.com','parent138','$2a$10$rtIphukQc3ccvdpgRtklde.BWC3hjy4anefT5LbHRCDbKlFWeXA7a','06685359138',2,'parent138'),(603,'parent139@gmail.com','parent139','$2a$10$x6v2MCi5Rcm5lek8XE.TM.pfUCGWhIlngUBz19e7wjDJCBdoCYrS.','06685359139',2,'parent139'),(604,'parent140@gmail.com','parent140','$2a$10$SFHVFG7a0SNUA8tVkFCixeicFBL81GAAGAwCH/xztuxJ7S2jy1AFu','06685359140',2,'parent140'),(605,'parent141@gmail.com','parent141','$2a$10$SosB5g6BQznj2uAPIcgO3uO5rhDHCpwD6BNOlxZBtmuQ.2oYO/dOe','06685359141',2,'parent141'),(606,'parent142@gmail.com','parent142','$2a$10$roc4bNsRtVo6quTbyKc0g..CegN631qxZFaUyhhUFZJwpdyYuaktu','06685359142',2,'parent142'),(607,'parent143@gmail.com','parent143','$2a$10$n/ByLF/qZyx4XuAwJHWdiOFnZVqO4qWHioWsMmHMHHMCe65RXf7Ia','06685359143',2,'parent143'),(608,'parent144@gmail.com','parent144','$2a$10$HPFTPiVNWl.QSjFEoyf5j.PNXc/7nGgEs3CIwWBJDbG3OmRV4wo76','06685359144',2,'parent144'),(609,'parent145@gmail.com','parent145','$2a$10$cBh8AjlQDrXfYaQCT24wjuy67VI3lKqfX9/xdKsHIWRSckKNoaW6G','06685359145',2,'parent145'),(610,'parent146@gmail.com','parent146','$2a$10$CQX2bYMdSAqRqhmc1pe8nuz2tXuHwsjhWtZ6EcWMuP29Jm5KtinnS','06685359146',2,'parent146'),(611,'parent147@gmail.com','parent147','$2a$10$IOX3mH4aVyrrZhFmGariCefQRWMk6nzxcLA/j3.1LTZ4KcCHte.em','06685359147',2,'parent147'),(612,'parent148@gmail.com','parent148','$2a$10$pWe2j2k2ulOCsVRIxfuKh.XGNXYDFgY3Df9JtBtfooksXn7hWn10G','06685359148',2,'parent148'),(613,'parent149@gmail.com','parent149','$2a$10$yY1rt0aJ7XOikig/hSODqOEtlBUV3dkzPKeDep0XoL6LgKgH7NVf6','06685359149',2,'parent149'),(614,'parent150@gmail.com','parent150','$2a$10$ZUbmpE9wPvuk5B84owKDrunL6shQktbZ08SXBqM1UjIGaPMFNHYbC','06685359150',2,'parent150'),(615,'parent151@gmail.com','parent151','$2a$10$MTWFepBtRogEb2LmKkfrrOfhWSA/CEt1NEkeeSyIlmQyw/p3fAdoa','06685359151',2,'parent151'),(616,'parent152@gmail.com','parent152','$2a$10$o30bO06RQ7xQFiFGASaf1.ughPJh6Y3sMSnbqHbQj/UALRTy.jo2.','06685359152',2,'parent152'),(617,'parent153@gmail.com','parent153','$2a$10$VINMIb44dEkrNR.9JvCrBO3SIuFFh1rfGab6ucBgs1jmLLXCj.p9G','06685359153',2,'parent153'),(618,'parent154@gmail.com','parent154','$2a$10$QZ3P/CQO6p.Wd69r8Sxhlen/XUOm/xNPTmo9EyTrQcW4vlngGu1/i','06685359154',2,'parent154'),(619,'parent155@gmail.com','parent155','$2a$10$Pr3exHXaZr1NPSuiq7papuRgUX1BLzKJ44Gpdml02pd4Qn8ekf1Mq','06685359155',2,'parent155'),(620,'parent156@gmail.com','parent156','$2a$10$icJzI7aETtF/s1EB/lmvAuNy9/dty3IYoyRECT7Vc84.GwYCwSlq.','06685359156',2,'parent156'),(621,'parent157@gmail.com','parent157','$2a$10$qISHkHkRaKZF7iIkkX4r6eNTf1n4Lk7FRm8Xf31oHsC2xJQkkKmZ6','06685359157',2,'parent157'),(622,'parent158@gmail.com','parent158','$2a$10$duOKXApbnqjr2R5HyeCOx.CEV313fTKvo69DmV1E3KSm.RI8B/KgW','06685359158',2,'parent158'),(623,'parent159@gmail.com','parent159','$2a$10$MXFJRSr0Cze6qQUtkeIPkuPxgnnnjnCmlt/K/h48LGZUvtd1jdT5a','06685359159',2,'parent159'),(624,'parent160@gmail.com','parent160','$2a$10$cFXEdUR34TQEst2JXceaKOa08mIziKrIs021gdkmuy./DRnRg1Sa6','06685359160',2,'parent160'),(625,'parent161@gmail.com','parent161','$2a$10$z7tSmOuHTl1wh.oju5pNl.EqX3kr5ayoMySAqMEqQXWYlPjUvBqB6','06685359161',2,'parent161'),(626,'parent162@gmail.com','parent162','$2a$10$ijEICPjLMU9wvNqPVdp2DulDq967JmThy9ohReFmSM4Cq4MdZI17K','06685359162',2,'parent162'),(627,'parent163@gmail.com','parent163','$2a$10$NLS3lSCdpGRGQeL2WRoiwOZAchM//SuOZL/7fah7l6PB4zqSRWrba','06685359163',2,'parent163'),(628,'parent164@gmail.com','parent164','$2a$10$bLs8CbS0wgDDAOkZmZtqK.YK8091sfP1riACOaNNrZi40LIiQdqVq','06685359164',2,'parent164'),(629,'parent165@gmail.com','parent165','$2a$10$3XtRYnnj2qynoQ1BZ8WTVuqs2no7nfzayBfkXgiFqbBQQfkFesfZ2','06685359165',2,'parent165'),(630,'parent166@gmail.com','parent166','$2a$10$FYL65yLoAR0Y5aCpUxa0K.rKS2a7OGB9Bvpb7..vk/w7Pkxj9eRZe','06685359166',2,'parent166'),(631,'parent167@gmail.com','parent167','$2a$10$uSuUuVbqvJoTnyPxCYczmOmMhDmmgzBsV20cPBP1A5XvgOM2qMzCG','06685359167',2,'parent167'),(632,'parent168@gmail.com','parent168','$2a$10$Agp/B7ls0VGW4imPmF6o8eMl7778JoHYeJFtYK6xmSF.4sdaNsnpG','06685359168',2,'parent168'),(633,'parent169@gmail.com','parent169','$2a$10$ZoL/1RMETwKCshT1m/VPA.EWqVsLrKhe8IPRsdbjVh68JpA6Imyd6','06685359169',2,'parent169'),(634,'parent170@gmail.com','parent170','$2a$10$8b.TVUGtBsnm.l.j1rd9xeHyQtm1iZBl5Su.IMnY8eyqZAZ7fR/le','06685359170',2,'parent170'),(635,'parent171@gmail.com','parent171','$2a$10$nbnKA.IwziDvYnQyYQo5wuQO/I/joBlSk1UjgUud8E4K9f25objk6','06685359171',2,'parent171'),(636,'parent172@gmail.com','parent172','$2a$10$wOvmrMnswbJ6zBHk85GUSO8skXNFrq5gfxEPpk2vXiGT6jrdfgMz6','06685359172',2,'parent172'),(637,'parent173@gmail.com','parent173','$2a$10$mLPC/OOtURDzAzMDtODQ6.AFhiHxGF79Wy33DXNbzKatPnSlHdOs6','06685359173',2,'parent173'),(638,'parent174@gmail.com','parent174','$2a$10$5H0Qu86iPGjkWa83dZr0KevszJ5hn3yq2MopczWzRsP933BXAfe4y','06685359174',2,'parent174'),(639,'parent175@gmail.com','parent175','$2a$10$4PZrBMmYFNHGfWo4eTnQtO/Uz6JEVn0JlgO1psONRPVaFAfviO1wK','06685359175',2,'parent175'),(640,'parent176@gmail.com','parent176','$2a$10$NTIizj2y7eCBFgVZbdc7/ORnU0SGbuWJNt7w7E0QK8XV9lyYvggj.','06685359176',2,'parent176'),(641,'parent177@gmail.com','parent177','$2a$10$EryUJIFiReo5TLgLMQ8ofuQOS4hXzsUm8mdlk4gmBkFpUaNzZlmtq','06685359177',2,'parent177'),(642,'parent178@gmail.com','parent178','$2a$10$LaU8rNdIzaJ11kRsBNMt/eNt1Jh4jMtnargnBOyuijBL4Tpmg1iK2','06685359178',2,'parent178'),(643,'parent179@gmail.com','parent179','$2a$10$QCdysXEZCuvBWGjkbzdhoeZ8SeBWkPjge6BCmXbrE8FsJN93mvQAa','06685359179',2,'parent179'),(644,'parent180@gmail.com','parent180','$2a$10$R09N2KNDtI7R65EXZXc3cexnpKxUd/P4rEnOfQwabd0qqrrMDEtb2','06685359180',2,'parent180'),(645,'parent181@gmail.com','parent181','$2a$10$FpTqH65172wGHw2Vi7CZdOYbU0c.g.Dz13w9PGQxudpmu/JF2ZGF2','06685359181',2,'parent181'),(646,'parent182@gmail.com','parent182','$2a$10$YvSS1MoBJRyrbqb.Os.NJO840jFOL.0TckszW/Xsd39K2Nn2b9Pg2','06685359182',2,'parent182'),(647,'parent183@gmail.com','parent183','$2a$10$fZiy5z0i6KjsPwifckTDC.7ZqUiIhwiG29bWTyj/3PLN5AW0rvbzu','06685359183',2,'parent183'),(648,'parent184@gmail.com','parent184','$2a$10$35LPO/jfGyBm67mnpuPTy.IxzPqTbcr.4w4GYYs2iu3UMMmIgvOtu','06685359184',2,'parent184'),(649,'parent185@gmail.com','parent185','$2a$10$h6UaqB8OPdpc8TSomkpZCeDRGnnXqX4KZ7V62p6owTRbDpNf5kG/q','06685359185',2,'parent185'),(650,'parent186@gmail.com','parent186','$2a$10$Na3kk0LsHWiUgCrcHhvqYeHr6txAWAcKjjBhrXc900WxYdqCwD/8a','06685359186',2,'parent186'),(651,'parent187@gmail.com','parent187','$2a$10$TN8MjUtIQ1bQTqlp7J6YC.tLfLy9WGHYysE4zdYtuRjGfOPd3GVXi','06685359187',2,'parent187'),(652,'parent188@gmail.com','parent188','$2a$10$s.ymopHZ.SJ7.mHN54qcau1U2tbUrc52awRkTd6ee6U2CEauih9vm','06685359188',2,'parent188'),(653,'parent189@gmail.com','parent189','$2a$10$ag3xQmgwsesytwcs2qJQWuTccQLR2nbnVlwe3BG3gd6f.uzKd8S4e','06685359189',2,'parent189'),(654,'parent190@gmail.com','parent190','$2a$10$9k/PzMDOekt8DFvPLLG7C.7NPsRospf33AQwmWuIIgJI/YmyiTn/W','06685359190',2,'parent190'),(655,'parent191@gmail.com','parent191','$2a$10$rA0lzntOL9ZjDW8zNCmGROy41M7mVzTKEfM31Oi7.uxWSQ4tvE7Fy','06685359191',2,'parent191'),(656,'parent192@gmail.com','parent192','$2a$10$sW6o.gx/FyqQ4HxijsfLM.efu91KQHmZ0L2KS8UdzOWaETGv1VnVG','06685359192',2,'parent192'),(657,'parent193@gmail.com','parent193','$2a$10$vcmn7ii/9RtZGRJfmHOPzOIPkbvYNIMMzzwHiPRM4hD8u.7Hto1bu','06685359193',2,'parent193'),(658,'parent194@gmail.com','parent194','$2a$10$o/Fst7..eNjOT8ekKie5l.BkSzOJ38itTddGbrKbADK94Zc87.08q','06685359194',2,'parent194'),(659,'parent195@gmail.com','parent195','$2a$10$MJqHrh7eNpszYYc9Afwse.f5Q9a2LnSCpT37Ld/SSdE0TCNGb1Wae','06685359195',2,'parent195'),(660,'parent196@gmail.com','parent196','$2a$10$ydeyWNthdOhwoHhdrjQLLu5PEG/kDLQLzlXjKGSWpJH9AkF.n4cFm','06685359196',2,'parent196'),(661,'parent197@gmail.com','parent197','$2a$10$M9soqjCWIDMeINyPErtFr.QIVbzsr83whlnfcTblitGd93MHRO.me','06685359197',2,'parent197'),(662,'parent198@gmail.com','parent198','$2a$10$aA8.rxBqKksn9HtEj5PgGOHC2gEbSWs8A40B4kaVe88mEaEqCcW2W','06685359198',2,'parent198'),(663,'parent199@gmail.com','parent199','$2a$10$Db22XbAPCmBmeMdygLqsPO6e2bgP0KXwhNJLWUfSDBRbHDRUv3kNK','06685359199',2,'parent199'),(664,'parent200@gmail.com','parent200','$2a$10$imJl1LTAqgBCI7hSDsPnue/RzeBDrbscoO5shL7W0ZyR/YLvyjR0u','06685359200',2,'parent200'),(665,'parent201@gmail.com','parent201','$2a$10$.khmTWGWIaG/TrXgA4m8eudAUTn7bOdWFovk61E6ejU5RH4VydV.G','06685359201',2,'parent201'),(666,'parent202@gmail.com','parent202','$2a$10$DnvqKf4PZ/oMDlCcmFX44uOFgST7JZOX0WTh88s.ixCgQftg.84P6','06685359202',2,'parent202'),(667,'parent203@gmail.com','parent203','$2a$10$w95g2dFl4fxbqNq3/klUN.HKlBBADfZsrkM/7DBwmJGfTJdI/Fl2.','06685359203',2,'parent203'),(668,'parent204@gmail.com','parent204','$2a$10$MKswM2qCMCsA7KFMUcPIkOVFHh5Rqocd0YZYHqRWJQxJgO.UaXX6q','06685359204',2,'parent204'),(669,'parent205@gmail.com','parent205','$2a$10$4ERnA0hocRDUUWsbmHxjN.j1nHKG/qqnqdXUVscJQv11Kh9USCkKK','06685359205',2,'parent205'),(670,'parent206@gmail.com','parent206','$2a$10$6LA796MKAkMUVBSV/pwR0ecm/rvG6enU//NcQqS29xwgrwpzIMtIa','06685359206',2,'parent206'),(671,'parent207@gmail.com','parent207','$2a$10$EBemR.SVSf9rf0zofkCWvuAuIWSybmMDvJHo5M8Z.y/b3yjh2kTFi','06685359207',2,'parent207'),(672,'parent208@gmail.com','parent208','$2a$10$bL6rK4keONGtWzCaXXu5IOtryCcxzM0ov7tCXr2viQfJBfDyrZYG2','06685359208',2,'parent208'),(673,'parent209@gmail.com','parent209','$2a$10$gRrKo36ZyVaApMY75sdls..0BKE5LxBfg1bBzBEBa6AMXAfgK1LV2','06685359209',2,'parent209'),(674,'parent210@gmail.com','parent210','$2a$10$RHr12GPD/QC91ERLAQosweUhJ3/yhs1jIgHL3ARRdbFvJGJeYr/Yu','06685359210',2,'parent210'),(675,'parent211@gmail.com','parent211','$2a$10$zu3kTRhIw9jka/qPOx1CEeGmursAhL9nhcUDIbOIzEGqbXpkD4lhe','06685359211',2,'parent211'),(676,'parent212@gmail.com','parent212','$2a$10$hP.t0cp1MXxQJNfdTSCxOex.TgMSZtL9U97hcz/fsh5vzWGMNTDTu','06685359212',2,'parent212'),(677,'parent213@gmail.com','parent213','$2a$10$shFyr7TBbKge9oi1irXcM.MFMPh03TrFuQj3NVBOWXq/7NjHugZC2','06685359213',2,'parent213'),(678,'parent214@gmail.com','parent214','$2a$10$zXMySSA1Hp6Fq0yq5qf2SOXnLtsHUdnGjClZ6cdvhL/LRzNL.Q8EC','06685359214',2,'parent214'),(679,'parent215@gmail.com','parent215','$2a$10$y/j06KosCXgx5JzFcAYUv.0yLMtKe2Ncwf0ca/rh1dU08JVeb3LQW','06685359215',2,'parent215'),(680,'parent216@gmail.com','parent216','$2a$10$yYmuEYMALj9POCQDggD8CO.e63uw7GNyrMnjoujrZW/.WUrbUxKJu','06685359216',2,'parent216'),(681,'parent217@gmail.com','parent217','$2a$10$oQ2xWZOxYPAK7wDMircTeOKOItjsZx2ToFLxcM7hii/r9oi.VPi3G','06685359217',2,'parent217'),(682,'parent218@gmail.com','parent218','$2a$10$VSTUmJ81yGYxa1e6RPeMYeOg6SWd6dhwfO4JamesQm8p5vFN.v34m','06685359218',2,'parent218'),(683,'parent219@gmail.com','parent219','$2a$10$v5a85pJTA48BxUtUQdEDAelE43Ldw5SE0UXJpSNaJfj3wJED4gyd.','06685359219',2,'parent219'),(684,'parent220@gmail.com','parent220','$2a$10$wokNuKvVPvpWGuVl/ZSqzelAhmST6qo.nfIN2b0ip64qWiWO11qiC','06685359220',2,'parent220'),(685,'parent221@gmail.com','parent221','$2a$10$rK/M8csHBot6OeeyCaYutOfIvZ8ta/1BoslZo3.gRM6bOhyw.mD6W','06685359221',2,'parent221'),(686,'parent222@gmail.com','parent222','$2a$10$XtTEHkpbiVy1d7Docqz5jei9reKY2AJEK7gKbHpl4IKi1FPCdKlKu','06685359222',2,'parent222'),(687,'parent223@gmail.com','parent223','$2a$10$OvbNUeeLiEdQ6Vu126pF.Od8cUzrHcOVXI6qi7gscN/K6H6kuOXRW','06685359223',2,'parent223'),(688,'parent224@gmail.com','parent224','$2a$10$.ceZvNHOkpc5Ej5s/KOmN.yGXoTLqQkyD3wqJqy8oGHMkIqjpMffW','06685359224',2,'parent224'),(689,'parent225@gmail.com','parent225','$2a$10$Dgkp/.7t.dEtbkAXgMO1R.HlkaOEu1AWpcyystnK7A3h.bsEYOlVO','06685359225',2,'parent225'),(690,'parent226@gmail.com','parent226','$2a$10$2D/4u1mnzQwwqgjR5Y2spuRBmdFB3ffn8oRMm7OfpCKENtDr6bX2y','06685359226',2,'parent226'),(691,'parent227@gmail.com','parent227','$2a$10$xodcaQerCcaiaK9lg4fRFuCW62ePonYxn5IUVdsvweuQgJiaLEPxi','06685359227',2,'parent227'),(692,'parent228@gmail.com','parent228','$2a$10$nk22fUhrWRchz9JjrK9KiedEPq04aBcH.c2wwIlYMvFJyc8kVuQy6','06685359228',2,'parent228'),(693,'parent229@gmail.com','parent229','$2a$10$ALDKHZZFTnKeDjQF5AmpaOz4GTJJKB7.3X1xnWgXtpoQZXAa52yEG','06685359229',2,'parent229'),(694,'parent230@gmail.com','parent230','$2a$10$tapFsVgjW54PpO4paWFnfe.x2jO.wlOO9SHwAabLDzmfVNHObqwHy','06685359230',2,'parent230'),(695,'parent231@gmail.com','parent231','$2a$10$2OdenLHxMXn6vXC1nP2TI.PyqBxXTmEqZ7kicXdi1N5xuDIQ/lZj.','06685359231',2,'parent231'),(696,'parent232@gmail.com','parent232','$2a$10$mgqPceYOFaU46tHqISp8uuSG3qVDsAjy3VE6P5kf45xM9/06wKF0W','06685359232',2,'parent232'),(697,'parent233@gmail.com','parent233','$2a$10$z5L.bIYpzrGtgL/iBB5YhOby3BcSVxtjp/mYqXfBIqGQr9R/BS1O2','06685359233',2,'parent233'),(698,'parent234@gmail.com','parent234','$2a$10$nRTIz2bPXCvJqLB755POqOwX2Zy23Q3aRomjUnq3B0cmqjgUV0Lfi','06685359234',2,'parent234'),(699,'parent235@gmail.com','parent235','$2a$10$F93w7EdASS2LjO8VUDbdxOJr9oVaGwzG7w8Mv9IIirGG18AJaVaca','06685359235',2,'parent235'),(700,'parent236@gmail.com','parent236','$2a$10$yAbtR8BPZTPATJ8eiZBdBO5H2GjG319CJ5wSROoDUNHPJ5f4Cfo0G','06685359236',2,'parent236'),(701,'parent237@gmail.com','parent237','$2a$10$giuVyZuFfiErLiznY1NuJOMpcxt6SLPIz1ySMr3esNt4GHG3kPWa6','06685359237',2,'parent237'),(702,'parent238@gmail.com','parent238','$2a$10$XY3tNOhyeANaFdHEysCyCuGv/TB6tBPxYTe2F7Oqa.73Oek5NtvnO','06685359238',2,'parent238'),(703,'parent239@gmail.com','parent239','$2a$10$FvXTMmZXe9JZ3X9kTARQD.xjqsUPRRDVZMrenBiV4E2WskU8NQ0v2','06685359239',2,'parent239'),(704,'parent240@gmail.com','parent240','$2a$10$MeZ0PHDNEkHMv2eDqEF.H.5zVzl2ne7Iwl41Ul/EOPl.dCXosN8ee','06685359240',2,'parent240'),(705,'parent241@gmail.com','parent241','$2a$10$U0ZzHJ8TrQnV1NXx5D7dXuxbIlga7KkbRzQMqBNt0Zfx3/AhOqCB.','06685359241',2,'parent241'),(706,'parent242@gmail.com','parent242','$2a$10$gngj2kK9tghgOHMrc8R7GelKnWeqpB4X98tBKOJfcuKrpNPvw7gc.','06685359242',2,'parent242'),(707,'parent243@gmail.com','parent243','$2a$10$4xSjDhKy5YIxVSjua/dCt.xyI1/YLxh38B2/JkFxcYgXRFno4xq1m','06685359243',2,'parent243'),(708,'parent244@gmail.com','parent244','$2a$10$lcJODN3idOO7NODW53bWaekGpALPQ7b9e5hCu.M0Ewjbb3jmbUlV.','06685359244',2,'parent244'),(709,'parent245@gmail.com','parent245','$2a$10$yrCTdxwLrm3Z8LgqR2TvV.wFpCeghTrQf541YEVOf/wLA84KBHQcC','06685359245',2,'parent245'),(710,'parent246@gmail.com','parent246','$2a$10$dgMzZBy9Ymw34IyNnTFNi.mr48i8cSeAmf.T7b2/S/DgJG0aqAwl2','06685359246',2,'parent246'),(711,'parent247@gmail.com','parent247','$2a$10$ijtolRbcZcYhAlaBey6ymeX4fmU9/Sgrmj6XctktiT3n1ScYdQY.i','06685359247',2,'parent247'),(712,'parent248@gmail.com','parent248','$2a$10$f9sFqPCpeOax8LbOD6ohEeIn7ZBe6WhNMfYsMQoMJ7IUAM6A2YuKO','06685359248',2,'parent248'),(713,'parent249@gmail.com','parent249','$2a$10$cz12mZsFp9jWzInjdIhN4OgasM8kUpRT1yxqHkMCLNogeWChbWjaW','06685359249',2,'parent249'),(714,'parent250@gmail.com','parent250','$2a$10$jogOs8PLU1Mp0AqIYuVMcuGSbxTOoEoLAXTeBwIwNriCwEbhit/D2','06685359250',2,'parent250'),(715,'parent251@gmail.com','parent251','$2a$10$ziaQe/w.BQyvO3vlV0H8tOyweXgwwIvJp9X.2LF7QZlRpuHzz54dK','06685359251',2,'parent251'),(716,'parent252@gmail.com','parent252','$2a$10$bxK5wKQKVUy.m9AKB5qkcutyd6MeEGBvqfbROnPH7.E.xNnMR49oO','06685359252',2,'parent252'),(717,'parent253@gmail.com','parent253','$2a$10$JBb8CgWEZttuiddgUq6JN.XYr5t0D8N2bwDuEEX3le/Oc03sLaMCu','06685359253',2,'parent253'),(718,'parent254@gmail.com','parent254','$2a$10$/DjcEe3lZWwXOLIeAjSK5.aunZR0u9RLDEdFTsTQdAW/vPdGM.Y/u','06685359254',2,'parent254'),(719,'parent255@gmail.com','parent255','$2a$10$aTYpTdMh6InIeF78GOYy3u3NsYEBlIhIF0elx5LqHzRRTkiLbvRTi','06685359255',2,'parent255'),(720,'parent256@gmail.com','parent256','$2a$10$apoI5VvXYUZB4VV8FnZCru09PsqRZgo5xnuwgYoA38oQGjcLgtJSu','06685359256',2,'parent256'),(721,'parent257@gmail.com','parent257','$2a$10$LpRbSiFhVgN97pSc62bsNuHXjBpCkYsotpCUsdV7ARxJsN1aVt/sK','06685359257',2,'parent257'),(722,'parent258@gmail.com','parent258','$2a$10$p7nggjtqCiq2yUnz0sf/YOr360z.m0g5FQUrvf6F7CTM8gccJ2J42','06685359258',2,'parent258'),(723,'parent259@gmail.com','parent259','$2a$10$T.9KkvrQmny96gLPX25CIuzWnfexW87MS79Fhqvh7Pd7QlgWnnL8i','06685359259',2,'parent259'),(724,'parent260@gmail.com','parent260','$2a$10$/go8Z.J3mjwSoDRKea8vpO042UXduqXsUNkvNzDPFQgDezfRtuc8u','06685359260',2,'parent260'),(725,'parent261@gmail.com','parent261','$2a$10$cfsyzme/SgfTkUQ2j3sZ/OnNLJ4fq61wbvtMj5LuIkuyV3XpwkRbO','06685359261',2,'parent261'),(726,'parent262@gmail.com','parent262','$2a$10$N1HxcwkFvg6rYS/v5LBkheXAniscwiWLCvQtrSbJ1Qa/f8yv7sPDK','06685359262',2,'parent262'),(727,'parent263@gmail.com','parent263','$2a$10$tOxSvIGdJjL9ryd8H2LIBO4Wz9aqvyDXCkiSftJmeDhYiEEMuS4le','06685359263',2,'parent263'),(728,'parent264@gmail.com','parent264','$2a$10$sbGAIrEXIEeuBKQ4QE4/aupXeFB/NuvaooCixwhveffTF0LpbKNXO','06685359264',2,'parent264'),(729,'parent265@gmail.com','parent265','$2a$10$4NkIWPQ.uwOa0Pytn27c9Ov.y5XTke61STYKhLxbaOX5LaequAfCG','06685359265',2,'parent265'),(730,'parent266@gmail.com','parent266','$2a$10$aewVQ0DPvFZFjM6YpYzjZO/9VafZ0PXjxlWW20jvk8RGDmFWgHs6a','06685359266',2,'parent266'),(731,'parent267@gmail.com','parent267','$2a$10$hK9O2g/5z.zTvxYXohHnvuHgy0opoB.VpP/zCZbgmYUD/zdf1umZq','06685359267',2,'parent267'),(732,'parent268@gmail.com','parent268','$2a$10$OFSCRzCxjrjBhgthYfptiOhdSVhEFAufCsCauwZ9fidYwzI57DZpG','06685359268',2,'parent268'),(733,'parent269@gmail.com','parent269','$2a$10$3zW1geuzuuGm2Z349npFUOS5B7MU7cndA3FQYw0D2TtMbRfq2H4Hi','06685359269',2,'parent269'),(734,'parent270@gmail.com','parent270','$2a$10$U1HFAbh2iSmFVsJDrPOk0ewsT4HAzTB6lF70fnDnZTaBKZ3WueR5.','06685359270',2,'parent270'),(735,'parent271@gmail.com','parent271','$2a$10$lWzoQO2rzSdJq5RjcvjAFuVTSGw4tSTatnmBefR107T0.PjlVcxc6','06685359271',2,'parent271'),(736,'parent272@gmail.com','parent272','$2a$10$wPAGveF/LUOTIunzx67eo.EZfw4JMi0lby/zIc/ybPTHBNwUUDB0u','06685359272',2,'parent272'),(737,'parent273@gmail.com','parent273','$2a$10$jVjByutca63gyZJo.IStue/EXCcU6m3rjZAOYhxYnZxSAOEVVPXo6','06685359273',2,'parent273'),(738,'parent274@gmail.com','parent274','$2a$10$ZF2HrT0BQsVV6lcsx3kdL.l.Apt0IveKvPfopbJrF5ZNmi39AkYR2','06685359274',2,'parent274'),(739,'parent275@gmail.com','parent275','$2a$10$ErVjAM15wydQw6ZhGgANT.NicquIu57sx66a379yH5UvBtHIT.wHi','06685359275',2,'parent275'),(740,'parent276@gmail.com','parent276','$2a$10$lDNJj3NrN04bxnU/DjVFUeJgwbyN5OVZKlCfW5fr7qvpgc53mJ3TK','06685359276',2,'parent276'),(741,'parent277@gmail.com','parent277','$2a$10$SZi/WDqwlEPMHsBDhezClu1zjemoUPQh6Qs4f3LIfqN3g4MguDQjK','06685359277',2,'parent277'),(742,'parent278@gmail.com','parent278','$2a$10$iATZYsgFIJ12nbnxpbI0xOmZ0e5i0MT3sD1urr60EilwS/yHcY0k6','06685359278',2,'parent278'),(743,'parent279@gmail.com','parent279','$2a$10$Q7Kh2r/SaK5DHQq84F.8ouXyeMS7Y/AY7znPR1xEmXma/ekMsZ1f6','06685359279',2,'parent279'),(744,'parent280@gmail.com','parent280','$2a$10$2WqNFFffU/ikkqdrFJ0gdOZMx3cIAJ6td/kpymA2ThQXreEhBkeYW','06685359280',2,'parent280'),(745,'parent281@gmail.com','parent281','$2a$10$UaSj3iBeEx5lOfiLvTfjP.W680sK2Q8OVBGe6wL8lyeocSRBbcwPS','06685359281',2,'parent281'),(746,'parent282@gmail.com','parent282','$2a$10$wQrCmDdHADBXah28MaasRuOZGFjjdCY4eRHyn4f.fIDBIJWKtb58a','06685359282',2,'parent282'),(747,'parent283@gmail.com','parent283','$2a$10$Ruz48eimSLpcUwmz7txrBuXNMDPtobzYArEAV9eony7YGx.CE2cE2','06685359283',2,'parent283'),(748,'parent284@gmail.com','parent284','$2a$10$syqhmNgEzl9Xbt2wgB1UUO3a7YCs2MMt0LJysuxJ4s9QkEUWngFVy','06685359284',2,'parent284'),(749,'parent285@gmail.com','parent285','$2a$10$u8Z2rAyn.OxdVayfyuyxi.oT9pvmQ6DQfnAGyfHl4S7PouG20Im1O','06685359285',2,'parent285'),(750,'parent286@gmail.com','parent286','$2a$10$0shoEisRhoA0iMsa8E9K0etxvZ.cWIVoPmgFj3b7ybMByBc33cybO','06685359286',2,'parent286'),(751,'parent287@gmail.com','parent287','$2a$10$zf.ngMXg3an9H1pcomn/a.D6/cppnZKgk1w3LNQrVJmknG7SEUN4O','06685359287',2,'parent287'),(752,'parent288@gmail.com','parent288','$2a$10$56/G/2w7ZVXaGcKn.PEISe/ymOU3h.fjli7/6sIsQMjdLow6HCBhK','06685359288',2,'parent288'),(753,'parent289@gmail.com','parent289','$2a$10$pA7YI1376bZLde6ynyp1SO6FivkllWEzPdBBMZQHAnGWBd5bddmni','06685359289',2,'parent289'),(754,'parent290@gmail.com','parent290','$2a$10$Z61P..djjS6itRWcrGR.4uLvBsMB1niQWE7GnHuK5d3pi0wdGntCy','06685359290',2,'parent290'),(755,'parent291@gmail.com','parent291','$2a$10$LZ0uKVcPFsi/WGrN.LNR6e6d8W.Sv6i.uQ51PjUdpsCYVDXlLTMa2','06685359291',2,'parent291'),(756,'parent292@gmail.com','parent292','$2a$10$utXMnfUdhm9.CYDLBZ04ZeSTnQloaqvuetR0/T/5XidvRXF9iMsX.','06685359292',2,'parent292'),(757,'parent293@gmail.com','parent293','$2a$10$NiiN0uy7Dr8IuMriRpucZ.EJZcQUxNZ/qNxBCEvAlN8G9vtOG/wpm','06685359293',2,'parent293'),(758,'parent294@gmail.com','parent294','$2a$10$NpK9vudxqbq0nj.Aa9wUk.MtZz/VJQlQM2g6UCdtW.FFWjUTbO6o2','06685359294',2,'parent294'),(759,'b.mohamed@ritsysteme.net','benjrad','$2a$10$MJrJb7Gr.Ccpo9H2JP0pResIFWE4gLGdsmCDa9F7AnitHT16nJc3.','0620357700',2,'mohamed'),(760,'b.mohamed1@ritsysteme.net','benjrade','$2a$10$S43SFPdBngGzJaKkW5kqreJbvnzGMdJb.mULG2jyZvJ5jzrnSPhRm','06203577001',2,'mohamede'),(761,'sousi.samir@gmail.com','samir','$2a$10$t6kVtUSJ7plbyEC4mr9UZ.8/XqZTBgviYDizGBb5TIOt6pu2aLW.S','j1234567103',3,'sousi'),(762,'Ted@ted.hrh','Tets','$2a$10$yCnyWMy1lbq7qMOgBSCVcu8YdU80S5kTMoHMkAe8lVzMKwYejA7za','9999',2,'Tegd'),(763,'hamzaS.elhilali@gmail.com','elhilali','$2a$10$M8jRTNZl1AYMJJT1lDzXCO9IbanwbGPUW7IIZmuPjfMjZAdmgfNmG','12544',3,'hamzaS'),(764,'hamada.hamid@gmail.com','hamid','$2a$10$O0EiqTQq0FgKbuNiA4Gq0OOB3TMD/lOdgSX/JWuKhAJT4vZXkh35y','12309',3,'hamada'),(765,'khatiri.khadija@gmail.com','khadija','$2a$10$.zQDD2M3v2Zzj5Vm2NjJ4uWfMx9bnsB72s3TkCEQ702Q47EPxuA7u','0907',3,'khatiri'),(766,'sabiri.amina@gmail.com','amina','$2a$10$1YSZnBt8hFhCPKIsKN5Xpe9/T4SNwsJVKYjZphEgRVKT5iKgWr1Wy','9900',3,'sabiri'),(767,'WALIDI.WALID@gmail.com','WALID','$2a$10$pCDKs0P.ma9ODIDwXmiJZuOZN8aySSVFRaYjYdjrxl4ZYx5asOZzy','4444',3,'WALIDI'),(768,'KAOUTATR.NAJI@gmail.com','NAJI','$2a$10$cuu5QadFZn9U/LA2lJ0ziuekyZerbgLU8BWuMCXUNMmMnyX6GxS8G','00009',3,'KAOUTATR'),(769,'vvvvvn.vvv@gmail.com','vvv','$2a$10$0imo7WwfE4N..DsjwS6A1uMQqFpara.txF9m2hJE6sDCV9bfxqrZ.','vvvb',3,'vvvvvn'),(770,'cccd.cc@gmail.com','cc','$2a$10$y0YXyQ/ifLgUd2K1RnWgL.iSsxXQM/qrZkWhDDSCFR/TscrxhQ1u6','bdbd',3,'cccd'),(771,'cdcd.cxx@gmail.com','cxx','$2a$10$.Ts5Ml7IFhNmxi9s4rIpiuTUiyos5JVq9NtDpnKaHoaAUlQN2Q1n2','cdcd',3,'cdcd'),(772,'sqsq.sqsq@gmail.com','sqsq','$2a$10$4KQCPTibCZAIGCpHBq5YQ.jQ47CXak8Zot//EspYDRlIHGDzxO6VO','qssq',3,'sqsq'),(773,'vqd.dv@gmail.com','dv','$2a$10$LOzVC8jhZHWhEdMWsvQp9.C5c22J./AB7cIlVYUk4Tqf53nybDu4u','vqdf',3,'vqd'),(774,'sdfdsf.fsdf@gmail.com','fsdf','$2a$10$F1mLa7aeuYRsqRGLA7Ldw.2xeG1Nv8uQt.b1gPgMh96IDSNW64KIi','sdfsd',3,'sdfdsf'),(775,'scsdc.dsc@gmail.com','dsc','$2a$10$mE5f38CVTaTTwrP4S5emcuvsnc0/dF3/HmamTSXNqGVs5SW1MtIqC','sdc',3,'scsdc'),(776,'zaefz.fzaf@gmail.com','fzaf','$2a$10$0RBV73KaE2vx/jCiSpqpJ.hE1EfBy8wumf9M104q3diBsaoAPBvKi','fzf',3,'zaefz'),(777,'fzae.fz@gmail.com','fz','$2a$10$R8P8OcNTVoWMHfT2oJ1TROAFran0ita530T5OaEfZy6gNFQVDsu56','fazf',3,'fzae'),(778,'cqsc.dqs@gmail.com','dqs','$2a$10$6eO1Nx1VZ6psEN6OFcMj4.KFIDsNBtnEepy8iW8jrMyIEcDlsbA5a','df',3,'cqsc'),(779,'esssss.ffffff@gmail.com','ffffff','$2a$10$/7xKlkcQPJ04HTGTYIkMweOp4qkjSWvipsVfPv5CGjkshVERDAhHW','15353e353',3,'esssss'),(781,'tetetd.tetetdd@gmail.com','tetetdd','$2a$10$hL7QVliybJl6dY4WEPTynemvkW188uHAyRoTJ.W63MLhWVMGjS7G.','ddddddddd',3,'tetetd'),(785,'PATRON.WALIDD@gmail.com','WALIDD','$2a$10$DnvtTFHKbCvZIRZm8IAKtO.1lWjQbXVk0SkWS0bW3g1UiAGB.aMyu','12345678',3,'chefProjet');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-16 15:29:03
