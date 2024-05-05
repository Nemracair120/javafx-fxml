-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: destinoeuropa
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
-- Table structure for table `activinteres`
--

DROP TABLE IF EXISTS `activinteres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activinteres` (
  `idactivInteres` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) DEFAULT NULL,
  `Pais_idPais` int NOT NULL,
  `precioEntrada` int NOT NULL,
  PRIMARY KEY (`idactivInteres`,`Pais_idPais`),
  KEY `fk_activInteres_Pais1_idx` (`Pais_idPais`),
  CONSTRAINT `fk_activInteres_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activinteres`
--

LOCK TABLES `activinteres` WRITE;
/*!40000 ALTER TABLE `activinteres` DISABLE KEYS */;
INSERT INTO `activinteres` VALUES (1,'Visita al Museo del Prado',1,20),(2,'Tour por la Alhambra',1,30),(3,'Degustación de Tapas en Barcelona',1,15),(4,'Visita a la Torre Eiffel',2,25),(5,'Recorrido por el Louvre',2,35),(6,'Paseo en Barco por el Sena',2,20),(7,'Visita al Muro de Berlín',3,15),(8,'Recorrido por el Castillo de Neuschwanstein',3,30),(9,'Tour por la Puerta de Brandeburgo',3,20),(10,'Visita al Coliseo Romano',4,20),(11,'Paseo por Venecia',4,25),(12,'Degustación de Gelato en Florencia',4,10),(13,'Visita a la ciudad de Mdina',5,15),(14,'Tour por los templos de Ħaġar Qim',5,20),(15,'Baño en la Laguna Azul',5,10),(16,'Visita a la Ciudad Antigua de Nicosia',6,15),(17,'Tour por la Ciudad de Pafos',6,20),(18,'Relax en la playa de Fig Tree Bay',6,10),(19,'Visita al Castillo de Buda',7,20),(20,'Paseo en barco por el Danubio',7,25),(21,'Recorrido por las Termas de Budapest',7,15),(22,'Visita a la Plaza del Mercado de Cracovia',8,15),(23,'Recorrido por el Campo de Concentración de Auschwitz',8,30),(24,'Tour por el Castillo Real de Varsovia',8,20),(25,'Paseo en bicicleta por Ámsterdam',9,20),(26,'Visita al Museo Van Gogh',9,25),(27,'Recorrido por los Canales de Ámsterdam',9,15),(28,'Visita a la Grand Place de Bruselas',10,15),(29,'Degustación de Chocolate Belga',10,20),(30,'Tour por la Catedral de San Miguel y Santa Gúdula',10,10),(31,'Visita al Museo Vasa en Estocolmo',11,25),(32,'Recorrido por el Palacio Real de Drottningholm',11,30),(33,'Paseo en barco por los Archipiélagos de Estocolmo',11,20),(34,'Tour por el Palacio de Schönbrunn en Viena',12,30),(35,'Visita a la Ópera Estatal de Viena',12,25),(36,'Degustación de Strudel de Manzana en Innsbruck',12,15),(37,'Recorrido por el Casco Antiguo de Riga',13,20),(38,'Visita al Museo de la Ocupación de Letonia',13,15),(39,'Degustación de Riga Black Balsam',13,10),(40,'Visita al Monasterio de Rila',14,25),(41,'Tour por el Palacio Nacional de la Cultura en Sofía',14,20),(42,'Recorrido por el Museo Arqueológico Nacional',14,15),(43,'Visita al Parque de Atracciones Tivoli en Copenhague',15,30),(44,'Recorrido por el Castillo de Kronborg en Helsingør',15,25),(45,'Paseo en bicicleta por la isla de Fionia',15,20),(46,'Visita a la Fortaleza de Suomenlinna en Helsinki',16,25),(47,'Recorrido por el Parque Nacional de Nuuksio',16,20),(48,'Sauna tradicional finlandesa en Laponia',16,35),(49,'Tour por el Casco Antiguo de Luxemburgo',17,20),(50,'Visita al Palacio Ducal de Luxemburgo',17,25),(51,'Degustación de vinos en los viñedos de Moselle',17,30),(52,'Visita a la Acrópolis de Atenas',18,30),(53,'Recorrido por el Templo de Poseidón en Cabo Sunión',18,25),(54,'Paseo en barco por las Islas Griegas',18,35),(55,'Visita a la Torre de Belém en Lisboa',19,25),(56,'Recorrido por el Barrio de la Alfama en Lisboa',19,20),(57,'Degustación de Pastéis de Nata en Pastelería de Belém',19,15),(58,'Recorrido por los Acantilados de Moher',20,30),(59,'Visita a la Calzada del Gigante en el condado de Antrim',20,25),(60,'Paseo por el Parque Nacional de Killarney',20,20),(61,'Visita al Castillo de Praga',21,25),(62,'Recorrido por el Puente de Carlos en Praga',21,20),(63,'Degustación de cerveza checa en una taberna tradicional',21,15),(64,'Visita al Castillo de Bran (Castillo de Drácula)',22,30),(65,'Recorrido por el Palacio del Parlamento en Bucarest',22,25),(66,'Exploración de las Cuevas de Scarisoara',22,20),(67,'Visita al Casco Antiguo de Bratislava',23,20),(68,'Recorrido por el Castillo de Bratislava',23,25),(69,'Degustación de halušky (plato tradicional eslovaco)',23,15),(70,'Recorrido por el Palacio de Diocleciano en Split',24,25),(71,'Visita a las Cascadas de Plitvice',24,30),(72,'Paseo en barco por las Islas Kornati',24,20),(73,'Visita a la Colina de las Cruces en Šiauliai',25,20),(74,'Recorrido por la Ciudad Vieja de Vilna',25,25),(75,'Degustación de cepelinai (plato típico lituano)',25,15),(76,'Visita al Lago Bled',26,25),(77,'Recorrido por las Cuevas de Škocjan',26,30),(78,'Paseo por el Castillo de Liubliana',26,20),(79,'Visita al Casco Antiguo de Tallin',27,20),(80,'Recorrido por el Palacio de Kadriorg en Tallin',27,25),(81,'Degustación de vodkas estonias en una destilería local',27,15);
/*!40000 ALTER TABLE `activinteres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aeropuerto`
--

DROP TABLE IF EXISTS `aeropuerto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeropuerto` (
  `idAeropuerto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `estacionamiento` tinyint NOT NULL,
  `Pais_idPais` int NOT NULL,
  PRIMARY KEY (`idAeropuerto`,`Pais_idPais`),
  KEY `fk_Aeropuerto_Pais1_idx` (`Pais_idPais`),
  CONSTRAINT `fk_Aeropuerto_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeropuerto`
--

LOCK TABLES `aeropuerto` WRITE;
/*!40000 ALTER TABLE `aeropuerto` DISABLE KEYS */;
INSERT INTO `aeropuerto` VALUES (10,'Aeropuerto Adolfo Suárez Madrid-Barajas','Madrid','España',1,1),(20,'París-Charles de Gaulle','París','Francia',1,2),(30,'Berlín-Tegel','Berlín','Alemania',1,3),(40,'Roma-Fiumicino','Roma','Italia',1,4),(50,'Internacional de Malta','La Valeta','Malta',1,5),(60,'Lárnaca','Nicosia ','Chipre',1,6),(70,'Budapest-Ferenc Liszt','Budapest','Hungría',1,7),(80,'Varsovia-Chopin','Varsovia','Polonia',1,8),(90,'Ámsterdam-Schiphol','Ámsterdam','Países Bajos',1,9),(100,'Bruselas-Nacional','Bruselas','Bélgica',1,10),(110,'Estocolmo-Arlanda','Estocolmo','Suecia',1,11),(120,'Internacional de Viena','Viena','Austria',1,12),(130,' Internacional de Riga','Riga','Letonia',1,13),(140,'Aeropuerto de Sofía','Sofía','Bulgaria',1,14),(150,'Copenhague-Kastrup','Copenhague','Dinamarca',1,15),(160,'Helsinki-Vantaa','Helsinki','Finlandia',1,16),(170,'Luxemburgo-Findel','Luxemburgo','Luxemburgo',1,17),(180,'Atenas-Eleftherios Venizelos','Atenas','Grecia',1,18),(190,'Humberto Delgado','Lisboa','Portugal',1,19),(200,'Aeropuerto de Dublín','Dublín','Irlanda',1,20),(210,'Aeropuerto de Praga','Praga','República Checa',1,21),(220,'Bucarest-Henri Coandă','Bucarest','Rumania',1,22),(230,'Aeropuerto de Bratislava','Bratislava','Eslovaquia',1,23),(240,'Aeropuerto de Zagreb','Zagreb','Croacia',1,24),(250,'Internacional de Vilna','Vilna','Lituania',1,25),(260,'Jože Pučnik de Liubliana','Liubliana','Eslovenia',1,26),(270,'Aeropuerto de Tallin','Tallin','Estonia',1,27);
/*!40000 ALTER TABLE `aeropuerto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alojamiento`
--

DROP TABLE IF EXISTS `alojamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alojamiento` (
  `idalojamiento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `Pais_idPais` int NOT NULL,
  PRIMARY KEY (`idalojamiento`,`Pais_idPais`),
  KEY `fk_alojamiento_Pais1_idx` (`Pais_idPais`),
  CONSTRAINT `fk_alojamiento_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alojamiento`
--

LOCK TABLES `alojamiento` WRITE;
/*!40000 ALTER TABLE `alojamiento` DISABLE KEYS */;
INSERT INTO `alojamiento` VALUES (101,'Hotel Princesa','hotel','197',1),(102,'Hotel Gran Vía','hotel','150',1),(103,'Hotel Plaza Mayor','hotel','180',1),(104,'Hostal Madrid Sol','hostal','50',1),(105,'Hostal La Latina','hostal','60',1),(106,'Hostal Malasaña','hostal','70',1),(107,'Albergue El Retiro','albergue','20',1),(108,'Albergue Gran Vía','albergue','25',1),(109,'Albergue Lavapiés','albergue','30',1),(110,'Hotel Parisienne','hotel','180',2),(111,'Hotel du Louvre','hotel','220',2),(112,'Hotel Le Marais','hotel','200',2),(113,'Hostal Montmartre','hostal','60',2),(114,' Hostal Bastille','hostal','70',2),(115,' Hostal Marais','hostal','65',2),(116,' Albergue Latin Quarter','albergue','30',2),(117,' Albergue Belleville','albergue','25',2),(118,' Albergue Pigalle','albergue','35',2),(119,'Hotel Berliner Hof','hotel','120',3),(121,'Hotel Alexanderplatz','hotel','140',3),(122,'Hotel Friedrichshain','hotel','130',3),(123,'Hostal Mitte','hostal','50',3),(124,' Hostal Kreuzberg','hostal','60',3),(125,' Hostal Prenzlauer Berg','hostal','55',3),(126,' Albergue Friedrichshain','albergue','30',3),(127,' Albergue Neukölln  ','albergue','25',3),(128,' Albergue Wedding','albergue','28',3),(129,'Hotel Roma Centro','hotel','150',4),(130,'Hotel Vaticano','hotel','180',4),(132,'Hotel Coliseo','hotel','170',4),(133,'Hostal Trastevere','hostal','60',4),(134,' Hostal Termini','hostal','70',4),(135,' Hostal Testaccio','hostal','65',4),(136,' Albergue Monti','albergue','30',4),(137,' Albergue Esquilino','albergue','25',4),(138,' Albergue Trionfale','albergue','35',4),(139,'Hotel La Valletta Palace ','hotel','120',5),(141,'Hotel Grand Harbour ','hotel','140',5),(142,'Hotel Saint John ','hotel','130',5),(143,'Hostal Triton ','hostal','50',5),(144,' Hostal Upper Barrakka ','hostal','60',5),(145,' Hostal Camden Town','hostal','55',5),(146,' Albergue Gzira','albergue','30',5),(147,' Albergue Sliema','albergue','25',5),(148,' Albergue Spinola','albergue','28',5),(149,'Hotel Nicosia Center','hotel','100',6),(150,'Hotel Ledra Street','hotel','120',6),(152,'Hotel Old Town','hotel','110',6),(153,'Hostal City Walls','hostal','40',6),(154,' Hostal Cyprus Gate','hostal','50',6),(155,' Hostal Famagusta Gate','hostal','45',6),(156,' Albergue North Nicosia','albergue','20',6),(157,' Albergue South Nicosia','albergue','25',6),(158,' Albergue Green Line','albergue','22',6),(159,'Hotel Berliner Hof','hotel','120',7),(160,'Hostal Mitte','hostal','50',7),(161,'Albergue Friedrichshain','albergue','25',7),(162,'Hotel Alexanderplatz','hotel','140',8),(163,'Hostal Kreuzberg','hostal','60',8),(164,'Albergue Neukölln','albergue','30',8),(165,'Hotel Friedrichshain','hotel','130',9),(166,'Hostal Prenzlauer Berg','hostal','55',9),(167,'Albergue Wedding','albergue','28',9),(168,'Hotel Paris','hotel','150',10),(169,'Hostal Montmartre','hostal','65',10),(170,'Albergue Le Marais','albergue','32',10),(171,'Hotel Roma','hotel','160',11),(172,'Hostal Trastevere','hostal','70',11),(173,'Albergue Coliseo','albergue','35',11),(174,'Hotel Londres','hotel','170',12),(175,'Hostal Westminster','hostal','75',12),(176,'Albergue Soho','albergue','38',12),(177,'Hotel Bruselas','hotel','180',13),(178,'Hostal Manneken Pis','hostal','80',13),(179,'Albergue Grand Place','albergue','40',13),(180,'Hotel Ámsterdam','hotel','190',14),(181,'Hostal Leidseplein','hostal','85',14),(182,'Albergue Jordaan','albergue','45',14),(183,'Hotel Lisboa','hotel','200',15),(184,'Hostal Bairro Alto','hostal','90',15),(185,'Albergue Alfama','albergue','50',15),(186,'Hotel Viena','hotel','210',16),(187,'Hostal Stephansplatz','hostal','95',16),(188,'Albergue Danubio','albergue','55',16),(189,'Hotel Praga','hotel','220',17),(190,'Hostal Plaza de la Ciudad Vieja','hostal','100',17),(191,'Albergue Malá Strana','albergue','60',17),(192,'Hotel Budapest','hotel','230',18),(193,'Hostal Andrássy','hostal','105',18),(194,'Albergue Ruin Bar','albergue','65',18),(195,'Hotel Atenas','hotel','240',19),(196,'Hostal Plaka','hostal','110',19),(197,'Albergue Monastiraki','albergue','70',19),(198,'Hotel Dublín','hotel','250',20),(199,'Hostal Temple Bar','hostal','115',20),(200,'Albergue Trinity College','albergue','75',20),(201,'Hotel Helsinki','hotel','260',21),(202,'Hostal Esplanadi','hostal','120',21),(203,'Albergue Kallio','albergue','80',21),(204,'Hotel Copenhague','hotel','270',22),(205,'Hostal Nyhavn','hostal','125',22),(206,'Albergue Christiania','albergue','85',22),(207,'Hotel Estocolmo','hotel','280',23),(208,'Hostal Gamla Stan','hostal','130',23),(209,'Albergue Södermalm','albergue','90',23),(210,'Hotel Oslo','hotel','290',24),(211,'Hostal Karl Johans Gate','hostal','135',24),(212,'Albergue Grünerløkka','albergue','95',24),(213,'Hotel Varsovia','hotel','300',25),(214,'Hostal Uprising','hostal','140',25),(215,'Albergue Powiśle','albergue','100',25),(216,'Hotel Praga','hotel','310',26),(217,'Hostal Parque de la Ciudad Vieja','hostal','145',26),(218,'Albergue Ciudad Pequeña','albergue','105',26),(219,'Hotel Atenas','hotel','320',27),(220,'Hostal Plaka','hostal','150',27),(221,'Albergue Monastiraki','albergue','110',27),(222,'Hotel Europa','hotel','120',7),(223,'Hostal Sol','hostal','50',7),(224,'Albergue Montaña','albergue','25',7),(225,'Hotel Continental','hotel','140',8),(226,'Hostal Luna','hostal','60',8),(227,'Albergue Río','albergue','30',8),(228,'Hotel Aurora','hotel','130',9),(229,'Hostal Estrella','hostal','55',9),(230,'Albergue Puesta del Sol','albergue','28',9),(231,'Hotel Sunrise','hotel','150',10),(232,'Hostal Sunset','hostal','65',10),(233,'Albergue Moonlight','albergue','32',10),(234,'Hotel Royal','hotel','160',11),(235,'Hostal Imperial','hostal','70',11),(236,'Albergue Majestic','albergue','35',11),(237,'Hotel Paradise','hotel','170',12),(238,'Hostal Dream','hostal','75',12),(239,'Albergue Fantasy','albergue','38',12),(240,'Hotel Harmony','hotel','180',13),(241,'Hostal Serenity','hostal','80',13),(242,'Albergue Tranquility','albergue','40',13),(243,'Hotel Bliss','hotel','190',14),(244,'Hostal Zen','hostal','85',14),(245,'Albergue Nirvana','albergue','45',14),(246,'Hotel Elysium','hotel','200',15),(247,'Hostal Celestial','hostal','90',15),(248,'Albergue Heaven','albergue','50',15),(249,'Hotel Olympus','hotel','210',16),(250,'Hostal Divine','hostal','95',16),(251,'Albergue Spirit','albergue','55',16),(252,'Hotel Everest','hotel','220',17),(253,'Hostal Summit','hostal','100',17),(254,'Albergue Peak','albergue','60',17),(255,'Hotel Atlantic','hotel','230',18),(256,'Hostal Pacific','hostal','105',18),(257,'Albergue Indian','albergue','65',18),(258,'Hotel Caribbean','hotel','240',19),(259,'Hostal Tropical','hostal','110',19),(260,'Albergue Island','albergue','70',19),(261,'Hotel Mediterranean','hotel','250',20),(262,'Hostal Aegean','hostal','115',20),(263,'Albergue Ionian','albergue','75',20),(264,'Hotel Baltic','hotel','260',21),(265,'Hostal North Sea','hostal','120',21),(266,'Albergue English Channel','albergue','80',21),(267,'Hotel Adriatic','hotel','270',22),(268,'Hostal Caspian','hostal','125',22),(269,'Albergue Black Sea','albergue','85',22),(270,'Hotel Red Sea','hotel','280',23),(271,'Hostal Dead Sea','hostal','130',23),(272,'Albergue Mediterranean Sea','albergue','90',23),(273,'Hotel Arabian Sea','hotel','290',24),(274,'Hostal Coral Sea','hostal','135',24),(275,'Albergue Tasman Sea','albergue','95',24),(276,'Hotel Timor Sea','hotel','300',25),(277,'Hostal Celebes Sea','hostal','140',25),(278,'Albergue Banda Sea','albergue','100',25),(279,'Hotel Andaman Sea','hotel','310',26),(280,'Hostal Flores Sea','hostal','145',26),(281,'Albergue Molucca Sea','albergue','105',26),(282,'Hotel Java Sea','hotel','320',27),(283,'Hostal Bismarck Sea','hostal','150',27),(284,'Albergue Savu Sea','albergue','110',27),(285,'Hotel Montaña','hotel','120',7),(286,'Hostal Vista','hostal','50',7),(287,'Albergue Río','albergue','25',7),(288,'Hotel Aurora','hotel','140',8),(289,'Hostal Luna','hostal','60',8),(290,'Albergue Sol','albergue','30',8),(291,'Hotel Capital','hotel','130',9),(292,'Hostal Central','hostal','55',9),(293,'Albergue Centro','albergue','28',9),(294,'Hotel Gran Plaza','hotel','150',10),(295,'Hostal Pequeño','hostal','65',10),(296,'Albergue Hermoso','albergue','32',10),(297,'Hotel Montaña','hotel','160',11),(298,'Hostal Vista','hostal','70',11),(299,'Albergue Río','albergue','35',11),(300,'Hotel Aurora','hotel','170',12),(301,'Hostal Luna','hostal','75',12),(302,'Albergue Sol','albergue','38',12),(303,'Hotel Capital','hotel','180',13),(304,'Hostal Central','hostal','80',13),(305,'Albergue Centro','albergue','40',13),(306,'Hotel Gran Plaza','hotel','190',14),(307,'Hostal Pequeño','hostal','85',14),(308,'Albergue Hermoso','albergue','45',14),(309,'Hotel Montaña','hotel','200',15),(310,'Hostal Vista','hostal','90',15),(311,'Albergue Río','albergue','50',15),(312,'Hotel Aurora','hotel','210',16),(313,'Hostal Luna','hostal','95',16),(314,'Albergue Sol','albergue','55',16),(315,'Hotel Capital','hotel','220',17),(316,'Hostal Central','hostal','100',17),(317,'Albergue Centro','albergue','60',17),(318,'Hotel Gran Plaza','hotel','230',18),(319,'Hostal Pequeño','hostal','105',18),(320,'Albergue Hermoso','albergue','65',18),(321,'Hotel Montaña','hotel','240',19),(322,'Hostal Vista','hostal','110',19),(323,'Albergue Río','albergue','70',19),(324,'Hotel Aurora','hotel','250',20),(325,'Hostal Luna','hostal','115',20),(326,'Albergue Sol','albergue','75',20),(327,'Hotel Capital','hotel','260',21),(328,'Hostal Central','hostal','120',21),(329,'Albergue Centro','albergue','80',21),(330,'Hotel Gran Plaza','hotel','270',22),(331,'Hostal Pequeño','hostal','125',22),(332,'Albergue Hermoso','albergue','85',22),(333,'Hotel Montaña','hotel','280',23),(334,'Hostal Vista','hostal','130',23),(335,'Albergue Río','albergue','90',23),(336,'Hotel Aurora','hotel','290',24),(337,'Hostal Luna','hostal','135',24),(338,'Albergue Sol','albergue','95',24),(339,'Hotel Capital','hotel','300',25),(340,'Hostal Central','hostal','140',25),(341,'Albergue Centro','albergue','100',25),(342,'Hotel Gran Plaza','hotel','310',26),(343,'Hostal Pequeño','hostal','145',26),(344,'Albergue Hermoso','albergue','105',26),(345,'Hotel Montaña','hotel','320',27),(346,'Hostal Vista','hostal','150',27),(347,'Albergue Río','albergue','110',27);
/*!40000 ALTER TABLE `alojamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idPais` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `codigoPostal` varchar(45) NOT NULL,
  `clima` varchar(45) NOT NULL,
  `informacionGeneral` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'España','28001','Mediterráneo','País en el suroeste de Europa','Madrid'),(2,'Francia','75001','Templado','País en Europa occidental','París'),(3,'Alemania','10115','Templado','País en Europa central','Berlín'),(4,'Italia','00184','Mediterráneo','País en Europa meridional','Roma'),(5,'Malta','SW1A','Templado','País de Europa del Este','La Valeta'),(6,'Chipre','101000','Templado','Europa del Este','Nicosia'),(7,'Hugria','01001','Templado','Europa del Este','Budapest'),(8,'Polonia','00-001','Continental','País en Europa central','Varsovia'),(9,'Países Bajos','1012','Templado','País en Europa occidental','Ámsterdam'),(10,'Bélgica','1000','Templado','País en Europa occidental','Bruselas'),(11,'Suecia','111 29','Frío','País en Europa septentrional','Estocolmo'),(12,'Austria','1010','Templado','País en Europa central','Viena'),(13,'Letonia','3000','Templado','Europa del Este','Riga'),(14,'Bulgaria','1000','Continental','País en Europa oriental','Sofía'),(15,'Dinamarca','1050','Frío','País en Europa septentrional','Copenhague'),(16,'Finlandia','00100','Frío','País en Europa septentrional','Helsinki'),(17,'Luxemburgo','0010','Templado','Europa occidental','Luxemburgo'),(18,'Grecia','151 24','Mediterráneo','País en Europa meridional','Atenas'),(19,'Portugal','1100-341','Mediterráneo','País en Europa occidental','Lisboa'),(20,'Irlanda','D02','Templado','País insular en Europa occidental','Dublín'),(21,'República Checa','110 00','Templado','País en Europa central','Praga'),(22,'Rumania','030167','Continental','País en Europa oriental','Bucarest'),(23,'Eslovaquia','811 01','Continental','País en Europa central','Bratislava'),(24,'Croacia','10000','Mediterráneo','País en Europa meridional','Zagreb'),(25,'Lituania','01129','Templado','País en Europa septentrional','Vilna'),(26,'Eslovenia','1000','Templado','País en Europa meridional','Liubliana'),(27,'Estonia','10146','Templado','País en Europa septentrional','Tallin');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `idReserva` int NOT NULL AUTO_INCREMENT,
  `fechaReserva` date NOT NULL,
  `estadoReserva` varchar(45) NOT NULL,
  `Usuario_idUsuario` int NOT NULL,
  `Vuelo_idVuelo` int NOT NULL,
  PRIMARY KEY (`idReserva`,`Usuario_idUsuario`,`Vuelo_idVuelo`),
  KEY `fk_Reserva_Usuario_idx` (`Usuario_idUsuario`),
  KEY `fk_Reserva_Vuelo1_idx` (`Vuelo_idVuelo`),
  CONSTRAINT `fk_Reserva_Usuario` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Reserva_Vuelo1` FOREIGN KEY (`Vuelo_idVuelo`) REFERENCES `vuelo` (`idVuelo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'2024-04-25','confirmada',1,39),(2,'2024-04-26','en espera',2,45),(3,'2024-04-27','confirmada',3,50),(4,'2024-04-28','rechazada',4,37),(5,'2024-04-29','en espera',5,48);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurante`
--

DROP TABLE IF EXISTS `restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurante` (
  `idrestaurante` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `Pais_idPais` int NOT NULL,
  PRIMARY KEY (`idrestaurante`,`Pais_idPais`),
  KEY `fk_restaurante_Pais1_idx` (`Pais_idPais`),
  CONSTRAINT `fk_restaurante_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurante`
--

LOCK TABLES `restaurante` WRITE;
/*!40000 ALTER TABLE `restaurante` DISABLE KEYS */;
INSERT INTO `restaurante` VALUES (1,'La Tasca de Antonio','comida tradicional',1),(2,'Burger King','comida rápida',1),(3,'El Rincón de Tapas','comida tradicional',1),(4,'Le Petit Bistro','comida tradicional',2),(5,'McDonalds','comida rápida',2),(6,'La Crêperie Bretonne','comida tradicional',2),(7,'Zur Bratwurst','comida tradicional',3),(8,'Pizza Hut','comida rápida',3),(9,'Das Bierhaus','comida tradicional',3),(10,'Trattoria da Giovanni','comida tradicional',4),(11,'Subway','comida rápida',4),(12,'Pizzeria Napoli','comida tradicional',4),(13,'Il-Forn','comida tradicional',5),(14,'KFC','comida rápida',5),(15,'Tal-Kaptan','comida tradicional',5),(16,'To Katoi','comida tradicional',6),(17,'Pizza Express','comida rápida',6),(18,'Psarolimano','comida tradicional',6),(19,'Gundel Étterem','comida tradicional',7),(20,'Burger King','comida rápida',7),(21,'Menza','comida tradicional',7),(22,'Pierogi Heaven','comida tradicional',8),(23,'KFC','comida rápida',8),(24,'Restauracja Polska','comida tradicional',8),(25,'De Blauwe Hollander','comida tradicional',9),(26,'McDonalds','comida rápida',9),(27,'Pannenkoekenboot','comida tradicional',9),(28,'Chez Léon','comida tradicional',10),(29,'Quick','comida rápida',10),(30,'Le Vieux Bruxelles','comida tradicional',10),(31,'Stockholm Street Food','comida rápida',11),(32,'Kungsholmen','comida tradicional',11),(33,'Max Burgers','comida rápida',11),(34,'Gasthaus zum Renner','comida tradicional',12),(35,'McDonalds','comida rápida',12),(36,'Café Sacher','comida tradicional',12),(37,'Lido','comida tradicional',13),(38,'Hesburger','comida rápida',13),(39,'Key to Riga','comida tradicional',13),(40,'Hadjidraganovite kashti','comida tradicional',14),(41,'KFC','comida rápida',14),(42,'Happy Bar & Grill','comida tradicional',14),(43,'Noma','comida tradicional',15),(44,'McDonalds','comida rápida',15),(45,'Geranium','comida tradicional',15),(46,'Kuurna','comida tradicional',16),(47,'Hesburger','comida rápida',16),(48,'Savotta','comida tradicional',16),(49,'Um Plateau','comida tradicional',17),(50,'McDonalds','comida rápida',17),(51,'Chocolate House Nathalie Bonn','comida tradicional',17),(52,'Taverna tou Psiri','comida tradicional',18),(53,'Goodys Burger House','comida rápida',18),(54,'To Koutouki tou Nikola','comida tradicional',18),(55,'Pasteis de Belém','comida tradicional',19),(56,'Burger King','comida rápida',19),(57,'Cervejaria Ramiro','comida tradicional',19),(58,'The Old Storehouse','comida tradicional',20),(59,'Supermacs','comida rápida',20),(60,'Chapter One','comida tradicional',20),(61,'U Fleků','comida tradicional',21),(62,'KFC','comida rápida',21),(63,'Lokál Dlouháá','comida tradicional',21),(64,'Caru’ cu bere','comida tradicional',22),(65,'McDonalds','comida rápida',22),(66,'Hanu Berarilor','comida tradicional',22),(67,'Modra Hviezda','comida tradicional',23),(68,'KFC','comida rápida',23),(69,'Prasna Basta','comida tradicional',23),(70,'Konoba Pelegrini','comida tradicional',24),(71,'Burger King','comida rápida',24),(72,'Nav','comida tradicional',24),(73,'Snekutis','comida tradicional',25),(74,'Hesburger','comida rápida',25),(75,'Etno Dvaras','comida tradicional',25),(76,'Gostilna na gradu','comida tradicional',26),(77,'McDonalds','comida rápida',26),(78,'Gostilna AS','comida tradicional',26),(79,'Olde Hansa','comida tradicional',27),(80,'KFC','comida rápida',27),(81,'Rataskaevu 16','comida tradicional',27);
/*!40000 ALTER TABLE `restaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `dni` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `edad` int NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `idioma` varchar(45) NOT NULL,
  `favoritos` varchar(45) NOT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'12345678A','Juan','García','juan.garcia@example.com','123456789',35,'Español','Español','España','123456*'),(2,'23456789B','María','López','maria.lopez@example.com','987654321',28,'Español','Español','UK','123457*'),(3,'34567890C','Carlos','Martínez','carlos.martinez@example.com','654321987',42,'Español','Español','Belgica','123458*'),(4,'45678901D','Laura','Fernández','laura.fernandez@example.com','456123789',30,'Español','Español','Francia','123459*'),(5,'56789012E','Pedro','Gómez','pedro.gomez@example.com','789456123',25,'Español','Español','Luxemburgo','123450*'),(6,'67890123F','Ana','Sánchez','ana.sanchez@example.com','321654987',38,'Español','Español','Irlanda','123451*'),(7,'78901234G','David','Rodríguez','david.rodriguez@example.com','159357852',31,'Español','Español','Escocia','123452*'),(8,'89012345H','Sofía','Pérez','sofia.perez@example.com','753951456',29,'Español','Español','Hungría','123454*'),(9,'90123456I','Javier','González','javier.gonzalez@example.com','852963147',33,'Español','Español','Alemania','123455*'),(10,'01234567J','Elena','Hernández','elena.hernandez@example.com','369852147',27,'Español','Español','España','123445*'),(11,'12345678K','Diego','Jiménez','diego.jimenez@example.com','147258369',40,'Español','Español','UK','123448*');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viaje`
--

DROP TABLE IF EXISTS `viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viaje` (
  `idViaje` int NOT NULL AUTO_INCREMENT,
  `fechaViaje` date NOT NULL,
  `estadoViaje` varchar(45) NOT NULL,
  `Usuario_idUsuario` int NOT NULL,
  `Vuelo_idVuelo` int NOT NULL,
  `Vuelo_Aeropuerto_idAeropuerto` int NOT NULL,
  PRIMARY KEY (`idViaje`,`Usuario_idUsuario`,`Vuelo_idVuelo`,`Vuelo_Aeropuerto_idAeropuerto`),
  KEY `fk_Viaje_Usuario1_idx` (`Usuario_idUsuario`),
  KEY `fk_Viaje_Vuelo1_idx` (`Vuelo_idVuelo`,`Vuelo_Aeropuerto_idAeropuerto`),
  CONSTRAINT `fk_Viaje_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Viaje_Vuelo1` FOREIGN KEY (`Vuelo_idVuelo`, `Vuelo_Aeropuerto_idAeropuerto`) REFERENCES `vuelo` (`idVuelo`, `Aeropuerto_idAeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaje`
--

LOCK TABLES `viaje` WRITE;
/*!40000 ALTER TABLE `viaje` DISABLE KEYS */;
INSERT INTO `viaje` VALUES (1,'2024-04-25','realizado',1,1,10),(2,'2024-04-26','realizado',2,2,20),(3,'2024-04-27','realizado',3,3,30),(4,'2024-04-28','cancelado',4,4,40),(5,'2024-04-29','realizado',5,5,50),(6,'2024-04-30','realizado',6,6,60),(7,'2024-05-01','cancelado',7,7,70),(8,'2024-05-02','realizado',8,8,80),(9,'2024-05-03','realizado',9,9,90),(10,'2024-05-04','cancelado',10,10,100);
/*!40000 ALTER TABLE `viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vuelo`
--

DROP TABLE IF EXISTS `vuelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vuelo` (
  `idVuelo` int NOT NULL AUTO_INCREMENT,
  `numVuelo` int NOT NULL,
  `fechaSalida` date NOT NULL,
  `fechaLlegada` date NOT NULL,
  `horaSalida` varchar(45) NOT NULL,
  `horaLlegada` varchar(45) NOT NULL,
  `aeropuertoSalida` varchar(45) NOT NULL,
  `aeropuertoLlegada` varchar(45) NOT NULL,
  `asientosDisponibles` int NOT NULL,
  `aerolinea` varchar(45) NOT NULL,
  `Aeropuerto_idAeropuerto` int NOT NULL,
  PRIMARY KEY (`idVuelo`,`Aeropuerto_idAeropuerto`),
  KEY `fk_Vuelo_Aeropuerto1_idx` (`Aeropuerto_idAeropuerto`),
  CONSTRAINT `fk_Vuelo_Aeropuerto1` FOREIGN KEY (`Aeropuerto_idAeropuerto`) REFERENCES `aeropuerto` (`idAeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vuelo`
--

LOCK TABLES `vuelo` WRITE;
/*!40000 ALTER TABLE `vuelo` DISABLE KEYS */;
INSERT INTO `vuelo` VALUES (1,1234,'2024-04-25','2024-04-25','08:00','10:30','Aeropuerto de Madrid-Barajas','París-Charles de Gaulle',150,'Iberia',10),(2,2345,'2024-04-26','2024-04-26','09:30','11:45','París-Charles de Gaulle','Berlín-Tegel',180,'Air France',20),(3,3456,'2024-04-27','2024-04-27','11:15','13:45','Berlín-Tegel','Roma-Fiumicino',200,'Lufthansa',30),(4,4567,'2024-04-28','2024-04-28','13:45','16:30','Roma-Fiumicino','Londres-Heathrow',160,'Alitalia',40),(5,5678,'2024-04-29','2024-04-29','15:00','17:30','Londres-Heathrow','Sheremétievo',190,'British Airways',50),(6,6789,'2024-04-30','2024-04-30','17:30','19:45','Sheremétievo','Kiev-Boryspil',170,'Aeroflot',60),(7,7890,'2024-05-01','2024-05-01','19:00','21:15','Kiev-Boryspil','Varsovia-Chopin',180,'Ukraine International Airlines',70),(8,8901,'2024-05-02','2024-05-02','20:45','23:30','Varsovia-Chopin','Ámsterdam-Schiphol',200,'LOT Polish Airlines',80),(9,9012,'2024-05-03','2024-05-03','22:00','01:15','Ámsterdam-Schiphol','Bruselas-Nacional',190,'KLM Royal Dutch Airlines',90),(10,123,'2024-05-04','2024-05-04','05:30','08:15','Bruselas-Nacional','Estocolmo-Arlanda',170,'Brussels Airlines',100),(11,1234,'2024-05-05','2024-05-05','07:45','10:00','Estocolmo-Arlanda','Internacional de Viena',160,'SAS Scandinavian Airlines',110),(12,2345,'2024-05-06','2024-05-06','10:00','12:45','Internacional de Viena','Aeropuerto de Zúrich',150,'Austrian Airlines',120),(13,3456,'2024-05-07','2024-05-07','11:30','14:15','Aeropuerto de Zúrich','Aeropuerto de Sofía',170,'Swiss International Air Lines',130),(14,4567,'2024-05-08','2024-05-08','13:45','16:30','Aeropuerto de Sofía','Copenhague-Kastrup',160,'Bulgaria Air',140),(15,5678,'2024-05-09','2024-05-09','15:15','17:45','Copenhague-Kastrup','Helsinki-Vantaa',180,'Scandinavian Airlines',150),(16,6789,'2024-05-10','2024-05-10','17:30','19:45','Helsinki-Vantaa','Oslo-Gardermoen',190,'Finnair',160),(17,7890,'2024-05-11','2024-05-11','19:45','22:30','Oslo-Gardermoen','Atenas-Eleftherios Venizelos',200,'Norwegian Air Shuttle',170),(18,8901,'2024-05-12','2024-05-12','21:30','00:15','Atenas-Eleftherios Venizelos','Humberto Delgado',180,'Olympic Air',180),(19,9012,'2024-05-13','2024-05-13','00:45','03:00','Humberto Delgado','Aeropuerto de Dublín',170,'Ryanair',190),(20,123,'2024-05-14','2024-05-14','03:00','05:30','Aeropuerto de Dublín','Aeropuerto de Praga',160,'TAP Air Portugal',200),(21,1234,'2024-05-15','2024-05-15','06:15','08:30','Aeropuerto de Praga','Bucarest-Henri Coandă',150,'Aer Lingus',210),(22,2345,'2024-05-16','2024-05-16','09:30','11:45','Bucarest-Henri Coandă','Aeropuerto de Bratislava',170,'Czech Airlines',220),(23,3456,'2024-05-17','2024-05-17','12:45','15:30','Aeropuerto de Bratislava','Aeropuerto de Zagreb',180,'Blue Air',230),(24,4567,'2024-05-18','2024-05-18','14:30','17:15','Aeropuerto de Zagreb','Internacional de Vilna',160,'Croatia Airlines',240),(25,5678,'2024-05-19','2024-05-19','16:45','19:15','Internacional de Vilna','Jože Pučnik de Liubliana',190,'Air Baltic',250),(26,6789,'2024-05-20','2024-05-20','18:30','20:45','Jože Pučnik de Liubliana','Aeropuerto de Tallin',180,'Adria Airways',260),(27,7890,'2024-05-21','2024-05-21','20:15','22:30','Aeropuerto de Tallin','Aeropuerto de Madrid-Barajas',200,'airBaltic',270),(28,8901,'2024-05-22','2024-05-22','21:45','00:30','Aeropuerto de Madrid-Barajas','París-Charles de Gaulle',190,'Iberia Express',10),(29,9012,'2024-05-23','2024-05-23','05:00','07:15','París-Charles de Gaulle','Berlín-Tegel',180,'Transavia',20),(30,123,'2024-05-24','2024-05-24','07:30','10:15','Berlín-Tegel','Roma-Fiumicino',200,'EasyJet',30),(31,1234,'2024-05-25','2024-05-25','09:45','12:00','Roma-Fiumicino','Londres-Heathrow',160,'Vueling Airlines',40),(32,2345,'2024-05-26','2024-05-26','11:30','14:15','Londres-Heathrow','Sheremétievo',190,'Flybe',50),(33,3456,'2024-05-27','2024-05-27','13:15','15:45','Sheremétievo','Kiev-Boryspil',170,'Wizz Air',60),(34,4567,'2024-05-28','2024-05-28','15:30','18:15','Kiev-Boryspil','Varsovia-Chopin',180,'LOT Polish Airlines',70),(35,5678,'2024-05-29','2024-05-29','17:45','20:15','Varsovia-Chopin','Ámsterdam-Schiphol',200,'Ukraine International Airlines',80),(36,6789,'2024-05-30','2024-05-30','19:30','21:45','Ámsterdam-Schiphol','Bruselas-Nacional',190,'KLM Royal Dutch Airlines',90),(37,7890,'2024-05-31','2024-05-31','21:15','23:30','Bruselas-Nacional','Estocolmo-Arlanda',170,'Brussels Airlines',100),(38,8901,'2024-06-01','2024-06-01','23:00','01:15','Estocolmo-Arlanda','Internacional de Viena',160,'SAS Scandinavian Airlines',110),(39,9012,'2024-06-02','2024-06-02','05:30','08:15','Internacional de Viena','Aeropuerto de Zúrich',150,'Austrian Airlines',120),(40,123,'2024-06-03','2024-06-03','08:45','11:00','Aeropuerto de Zúrich','Aeropuerto de Sofía',170,'Swiss International Air Lines',130),(41,1234,'2024-06-04','2024-06-04','10:30','13:15','Aeropuerto de Sofía','Copenhague-Kastrup',160,'Bulgaria Air',140),(42,2345,'2024-06-05','2024-06-05','12:15','14:45','Copenhague-Kastrup','Helsinki-Vantaa',180,'Scandinavian Airlines',150),(43,3456,'2024-06-06','2024-06-06','14:30','17:15','Helsinki-Vantaa','Oslo-Gardermoen',190,'Finnair',160),(44,4567,'2024-06-07','2024-06-07','16:45','19:30','Oslo-Gardermoen','Atenas-Eleftherios Venizelos',200,'Norwegian Air Shuttle',170),(45,5678,'2024-06-08','2024-06-08','19:00','21:45','Atenas-Eleftherios Venizelos','AHumberto Delgado',180,'Olympic Air',180),(46,6789,'2024-06-09','2024-06-09','21:15','00:00','Humberto Delgado','Aeropuerto de Dublín',170,'Ryanair',190),(47,7890,'2024-06-10','2024-06-10','00:30','03:45','Aeropuerto de Dublín','Aeropuerto de Praga',160,'TAP Air Portugal',200),(48,8901,'2024-06-11','2024-06-11','03:45','06:15','Aeropuerto de Praga','Bucarest-Henri Coandă',150,'Aer Lingus',210),(49,9012,'2024-06-12','2024-06-12','07:00','09:15','Bucarest-Henri Coandă','Aeropuerto de Bratislava',170,'Czech Airlines',220),(50,123,'2024-06-13','2024-06-13','09:30','11:45','Aeropuerto de Bratislava','Aeropuerto de Zagreb',180,'Blue Air',230);
/*!40000 ALTER TABLE `vuelo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 10:38:21
