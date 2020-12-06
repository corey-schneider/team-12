-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: campus_eats_fall2020
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `driver_id` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `delivery_time` datetime DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_delivery_driver_id` (`driver_id`),
  KEY `fk_delivery_vehicle_id` (`vehicle_id`),
  CONSTRAINT `fk_delivery_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_delivery_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `license_number` varchar(75) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `Driver_Rating_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `fk_D_student_id` (`student_id`),
  KEY `fk_driver_Driver_Rating1_idx` (`Driver_Rating_id`),
  CONSTRAINT `fk_D_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `fk_driver_Driver_Rating1` FOREIGN KEY (`Driver_Rating_id`) REFERENCES `driver_rating` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_rating`
--

DROP TABLE IF EXISTS `driver_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_rating` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Overall_Rating` mediumint DEFAULT NULL,
  `Time` mediumint DEFAULT NULL,
  `Food_Handling` mediumint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_rating`
--

LOCK TABLES `driver_rating` WRITE;
/*!40000 ALTER TABLE `driver_rating` DISABLE KEYS */;
INSERT INTO `driver_rating` VALUES (1,'Yoshio L. Rivera',8,19,1),(2,'Ralph E. Reynolds',6,50,5),(3,'Seth A. Mercer',4,9,4),(4,'Julian X. Bird',3,35,9),(5,'Kevin J. Trujillo',8,34,7),(6,'Zane Y. Cabrera',4,50,5),(7,'Caesar S. Carney',2,33,7),(8,'Dominic H. Madden',6,25,10),(9,'Emi M. Kaufman',9,48,6),(10,'Jana R. Flores',5,38,7),(11,'Audra F. Vincent',2,20,9),(12,'Diana M. Carney',10,17,2),(13,'Hermione N. Benjamin',8,19,5),(14,'Jasper E. Hawkins',5,58,8),(15,'Dieter T. Dale',4,13,6),(16,'Asher O. Brock',8,27,8),(17,'Margaret P. Crosby',9,48,5),(18,'Lacota D. Hobbs',6,26,2),(19,'Lionel Y. Mcpherson',9,49,2),(20,'Dale S. Scott',2,50,1),(21,'Tyler T. Sears',6,37,1),(22,'Wayne Q. Hodge',2,42,6),(23,'Rashad F. Quinn',6,13,3),(24,'Larissa Y. Kaufman',10,40,9),(25,'Cain Z. Williamson',1,53,8),(26,'Keefe I. Kim',5,26,10),(27,'Luke V. Mcpherson',6,27,8),(28,'Leonard F. Lloyd',3,37,4),(29,'Acton R. Hogan',6,29,8),(30,'Teagan Z. Lyons',6,39,4),(31,'Timothy F. Robles',7,6,2),(32,'Erin N. Barton',1,54,6),(33,'Ulysses Q. Booth',1,19,5),(34,'Hadley O. Guthrie',5,28,6),(35,'Amos X. Spears',1,39,3),(36,'Len M. Stanley',1,46,3),(37,'Jessica S. Clarke',5,25,3),(38,'Damian U. Miles',1,56,1),(39,'Guy G. Watts',1,26,6),(40,'Christine L. Mcdonald',3,25,8),(41,'Honorato E. Carey',7,43,9),(42,'Ali T. Dennis',10,40,7),(43,'Brenden C. Valencia',4,9,10),(44,'MacKenzie F. Battle',8,11,6),(45,'Keegan P. Fuller',8,42,8),(46,'Armand K. Jimenez',1,58,9),(47,'Charles C. Glenn',7,48,7),(48,'Clarke W. Justice',10,36,5),(49,'Paula U. Best',7,60,3),(50,'Veda B. Williamson',1,12,6),(51,'Ruth X. Cohen',3,30,3),(52,'Quinn J. Galloway',6,38,7),(53,'Althea T. Cummings',10,21,1),(54,'Malcolm M. Garner',6,11,1),(55,'Alfreda S. Prince',9,44,3),(56,'Yen Y. Lancaster',3,18,2),(57,'Anjolie E. Stafford',6,32,8),(58,'Larissa D. Robbins',10,18,4),(59,'Sade D. Hubbard',10,30,7),(60,'Anika X. Mcgee',6,41,8),(61,'Penelope Q. Bartlett',4,31,4),(62,'Mollie M. Williams',2,21,8),(63,'Portia U. Moore',3,41,3),(64,'Hermione L. Mack',4,18,6),(65,'Zorita H. Meyers',9,56,4),(66,'Jocelyn B. Bradford',6,52,1),(67,'Macaulay F. White',10,37,4),(68,'Harriet V. Walton',5,18,6),(69,'Sebastian I. Morris',10,31,9),(70,'Neville I. Emerson',4,27,2),(71,'Kamal Z. Baxter',3,54,8),(72,'Sawyer C. Mcclure',10,58,5),(73,'Isaac Q. Mclean',8,14,5),(74,'Ethan V. Vega',1,24,9),(75,'Anne K. Snow',9,44,4),(76,'Ursula P. Clarke',2,8,5),(77,'Phyllis J. Moreno',10,43,8),(78,'Bernard D. Mclaughlin',3,47,7),(79,'Dean K. Mcgee',4,60,10),(80,'Harper P. Chambers',8,23,2),(81,'Indira T. Burgess',7,6,7),(82,'Charde A. Good',10,10,4),(83,'Serena Y. Cervantes',3,29,3),(84,'Sacha U. Rutledge',9,60,4),(85,'Kendall G. Raymond',3,53,2),(86,'Bevis F. Ewing',10,36,2),(87,'Martha R. Lamb',3,39,8),(88,'Chaim K. Frazier',1,21,2),(89,'Harriet I. Sparks',1,13,9),(90,'Amaya H. Rosario',7,50,9),(91,'Ahmed G. Gallegos',4,5,7),(92,'Connor H. Bass',9,56,7),(93,'Melanie W. Horn',7,11,9),(94,'Dennis G. Acosta',4,12,4),(95,'Noelani V. Anthony',6,5,5),(96,'Sharon O. Huffman',8,14,3),(97,'Robert S. Singleton',7,13,10),(98,'Heidi A. Ochoa',5,28,2),(99,'Vance H. Snider',2,47,5),(100,'Kimberly L. Cantu',1,60,7);
/*!40000 ALTER TABLE `driver_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_F_person_id` (`person_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `location_name` varchar(75) DEFAULT NULL,
  `location_address` varchar(75) DEFAULT NULL,
  `latitude` varchar(75) DEFAULT NULL,
  `longitude` varchar(75) DEFAULT NULL,
  `drop_off_point` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_index_desc` (`location_id`),
  KEY `idx_location_location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  `location_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `person_name` varchar(300) DEFAULT NULL,
  `person_email` varchar(150) DEFAULT NULL,
  `cell` bigint DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `person_join`
--

DROP TABLE IF EXISTS `person_join`;
/*!50001 DROP VIEW IF EXISTS `person_join`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_join` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `student_id`,
 1 AS `graduation_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `person_student`
--

DROP TABLE IF EXISTS `person_student`;
/*!50001 DROP VIEW IF EXISTS `person_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `person_student` AS SELECT 
 1 AS `person_id`,
 1 AS `person_name`,
 1 AS `person_email`,
 1 AS `cell`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(75) DEFAULT NULL,
  `restaurant_name` varchar(75) DEFAULT NULL,
  `schedule` varchar(75) DEFAULT NULL,
  `website` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_rating`
--

DROP TABLE IF EXISTS `restaurant_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_rating` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Overall_Rating` mediumint DEFAULT NULL,
  `Food_Rating` mediumint DEFAULT NULL,
  `Order_Accuracy` mediumint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_rating`
--

LOCK TABLES `restaurant_rating` WRITE;
/*!40000 ALTER TABLE `restaurant_rating` DISABLE KEYS */;
INSERT INTO `restaurant_rating` VALUES (1,'Eget Volutpat LLP',9,6,2),(2,'Erat Volutpat Nulla Foundation',6,8,7),(3,'Dolor Foundation',8,7,8),(4,'Risus Incorporated',3,5,6),(5,'Ultrices Posuere Consulting',7,7,7),(6,'Tincidunt Neque LLC',7,10,9),(7,'Hendrerit Consectetuer Associates',2,9,2),(8,'Aliquam Corp.',5,10,9),(9,'Placerat Orci Inc.',2,6,8),(10,'Rutrum PC',2,9,5),(11,'Elit Pretium PC',2,8,2),(12,'Nulla Corp.',7,3,7),(13,'Neque Venenatis Lacus Institute',8,1,2),(14,'Sodales Purus In Company',9,1,2),(15,'A Enim Institute',2,7,1),(16,'Egestas LLP',10,5,2),(17,'Enim Limited',8,10,10),(18,'Quam A Incorporated',10,2,1),(19,'Magnis Corporation',9,6,3),(20,'Vivamus Euismod Urna Consulting',10,7,10),(21,'Velit Incorporated',3,4,3),(22,'Vel LLC',4,2,9),(23,'A Limited',9,3,3),(24,'Pede Ltd',2,1,1),(25,'Phasellus LLP',5,9,5),(26,'Placerat Cras Associates',6,4,4),(27,'Arcu Imperdiet Ullamcorper Inc.',5,4,1),(28,'Erat Corporation',6,5,2),(29,'Fusce Corporation',3,6,5),(30,'Cursus PC',5,3,2),(31,'Pede Malesuada Vel Corp.',3,5,8),(32,'Tellus Consulting',7,7,7),(33,'Vitae Foundation',6,6,7),(34,'Turpis In Corporation',5,2,10),(35,'Enim Consulting',7,8,7),(36,'Gravida Aliquam Tincidunt Industries',8,1,9),(37,'Mattis Corp.',9,3,5),(38,'Sodales Incorporated',9,5,6),(39,'Risus A Ultricies Industries',2,3,3),(40,'Mauris Incorporated',7,1,10),(41,'Mauris Magna Duis PC',7,9,5),(42,'Ullamcorper Duis Inc.',5,1,1),(43,'Nostra Per Inceptos Corporation',9,7,2),(44,'Feugiat Foundation',2,2,10),(45,'Cubilia Institute',3,6,8),(46,'Ut Quam Vel Incorporated',9,8,9),(47,'Quisque Purus Sapien Institute',6,10,1),(48,'Lectus Justo Incorporated',7,1,4),(49,'Mi Aliquam PC',8,4,3),(50,'Viverra Associates',6,7,4),(51,'Aliquam Gravida Institute',2,3,8),(52,'Aliquam Foundation',7,4,6),(53,'Tincidunt Adipiscing Inc.',9,10,6),(54,'Dictum Mi Company',5,4,4),(55,'Nec Luctus Felis Limited',9,9,3),(56,'Enim Institute',8,9,5),(57,'Molestie Corp.',8,6,1),(58,'Rutrum Fusce Dolor Corporation',6,1,10),(59,'Lorem Eget Consulting',4,5,4),(60,'A Felis Industries',8,8,7),(61,'Vulputate Velit Eu Associates',4,10,6),(62,'Sit PC',8,1,4),(63,'Eget Consulting',4,10,6),(64,'Nunc Sed Limited',10,3,8),(65,'Nunc Laoreet Foundation',10,9,2),(66,'Ligula Corporation',6,4,8),(67,'Donec Tempus Inc.',8,8,4),(68,'Fermentum Arcu Associates',10,10,10),(69,'Ridiculus Mus Proin Corporation',5,2,2),(70,'Et Lacinia LLC',2,3,2),(71,'Sem Molestie Sodales PC',3,5,10),(72,'Aenean Massa Associates',5,10,2),(73,'Nam Tempor Diam Limited',4,5,9),(74,'Ipsum Inc.',6,4,6),(75,'Nisi Nibh PC',8,2,3),(76,'Phasellus Elit Limited',5,6,2),(77,'Nulla Vulputate Corp.',8,10,7),(78,'In Faucibus Orci Ltd',10,1,1),(79,'Convallis Corp.',6,5,6),(80,'Dictum Eu Placerat LLP',7,2,8),(81,'Dapibus LLC',2,6,8),(82,'Vehicula Aliquet Libero Ltd',4,2,4),(83,'Mauris Consulting',7,8,5),(84,'Tincidunt Dui LLP',4,9,2),(85,'Pellentesque Tellus Sem Associates',4,9,10),(86,'Egestas Inc.',3,3,6),(87,'Maecenas Malesuada Limited',10,5,9),(88,'Elit Pede Malesuada LLP',3,1,6),(89,'Neque In Company',8,3,9),(90,'Tempor Arcu Vestibulum Institute',4,1,5),(91,'Justo Praesent Luctus Company',3,6,6),(92,'Aliquam Limited',2,6,5),(93,'Et Magnis Dis Consulting',10,4,9),(94,'Cursus PC',2,7,4),(95,'Quam PC',5,5,7),(96,'Egestas Inc.',5,7,5),(97,'Molestie Tellus Company',4,7,1),(98,'Velit Cras Lorem Foundation',9,9,8),(99,'Phasellus At Consulting',4,4,9),(100,'Iaculis Odio Incorporated',5,6,9);
/*!40000 ALTER TABLE `restaurant_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `position` varchar(75) DEFAULT NULL,
  `is_admin` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`staff_id`),
  KEY `fk_S_person_id` (`person_id`),
  CONSTRAINT `fk_S_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `graduation_year` int DEFAULT NULL,
  `major` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_St_person_id` (`person_id`),
  CONSTRAINT `fk_St_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_plate` varchar(75) DEFAULT NULL,
  `model` varchar(75) DEFAULT NULL,
  `make` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `person_join`
--

/*!50001 DROP VIEW IF EXISTS `person_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_join` AS select `person`.`person_id` AS `person_id`,`person`.`person_name` AS `person_name`,`person`.`person_email` AS `person_email`,`student`.`student_id` AS `student_id`,`student`.`graduation_year` AS `graduation_year` from (`person` join `student` on((`student`.`person_id` = `person`.`person_id`))) where (`student`.`major` = 'Computer Science') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_student`
--

/*!50001 DROP VIEW IF EXISTS `person_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_student` AS select `a`.`person_id` AS `person_id`,`a`.`person_name` AS `person_name`,`a`.`person_email` AS `person_email`,`a`.`cell` AS `cell` from `person` `a` where `a`.`person_id` in (select `student`.`person_id` from `student` where (`student`.`graduation_year` = 2019)) */;
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

-- Dump completed on 2020-12-06 17:31:06
