-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mekatario_luz
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add auth group',7,'add_authgroup'),(26,'Can change auth group',7,'change_authgroup'),(27,'Can delete auth group',7,'delete_authgroup'),(28,'Can view auth group',7,'view_authgroup'),(29,'Can add auth group permissions',8,'add_authgrouppermissions'),(30,'Can change auth group permissions',8,'change_authgrouppermissions'),(31,'Can delete auth group permissions',8,'delete_authgrouppermissions'),(32,'Can view auth group permissions',8,'view_authgrouppermissions'),(33,'Can add auth permission',9,'add_authpermission'),(34,'Can change auth permission',9,'change_authpermission'),(35,'Can delete auth permission',9,'delete_authpermission'),(36,'Can view auth permission',9,'view_authpermission'),(37,'Can add auth user',10,'add_authuser'),(38,'Can change auth user',10,'change_authuser'),(39,'Can delete auth user',10,'delete_authuser'),(40,'Can view auth user',10,'view_authuser'),(41,'Can add auth user groups',11,'add_authusergroups'),(42,'Can change auth user groups',11,'change_authusergroups'),(43,'Can delete auth user groups',11,'delete_authusergroups'),(44,'Can view auth user groups',11,'view_authusergroups'),(45,'Can add auth user user permissions',12,'add_authuseruserpermissions'),(46,'Can change auth user user permissions',12,'change_authuseruserpermissions'),(47,'Can delete auth user user permissions',12,'delete_authuseruserpermissions'),(48,'Can view auth user user permissions',12,'view_authuseruserpermissions'),(49,'Can add bodega lamerica',13,'add_bodegalamerica'),(50,'Can change bodega lamerica',13,'change_bodegalamerica'),(51,'Can delete bodega lamerica',13,'delete_bodegalamerica'),(52,'Can view bodega lamerica',13,'view_bodegalamerica'),(53,'Can add clientes de lamerica',14,'add_clientesdelamerica'),(54,'Can change clientes de lamerica',14,'change_clientesdelamerica'),(55,'Can delete clientes de lamerica',14,'delete_clientesdelamerica'),(56,'Can view clientes de lamerica',14,'view_clientesdelamerica'),(57,'Can add django admin log',15,'add_djangoadminlog'),(58,'Can change django admin log',15,'change_djangoadminlog'),(59,'Can delete django admin log',15,'delete_djangoadminlog'),(60,'Can view django admin log',15,'view_djangoadminlog'),(61,'Can add django content type',16,'add_djangocontenttype'),(62,'Can change django content type',16,'change_djangocontenttype'),(63,'Can delete django content type',16,'delete_djangocontenttype'),(64,'Can view django content type',16,'view_djangocontenttype'),(65,'Can add django migrations',17,'add_djangomigrations'),(66,'Can change django migrations',17,'change_djangomigrations'),(67,'Can delete django migrations',17,'delete_djangomigrations'),(68,'Can view django migrations',17,'view_djangomigrations'),(69,'Can add django session',18,'add_djangosession'),(70,'Can change django session',18,'change_djangosession'),(71,'Can delete django session',18,'delete_djangosession'),(72,'Can view django session',18,'view_djangosession'),(73,'Can add empleados lamerica',19,'add_empleadoslamerica'),(74,'Can change empleados lamerica',19,'change_empleadoslamerica'),(75,'Can delete empleados lamerica',19,'delete_empleadoslamerica'),(76,'Can view empleados lamerica',19,'view_empleadoslamerica'),(77,'Can add inventario de lamerica',21,'add_inventariodelamerica'),(78,'Can change inventario de lamerica',21,'change_inventariodelamerica'),(79,'Can delete inventario de lamerica',21,'delete_inventariodelamerica'),(80,'Can view inventario de lamerica',21,'view_inventariodelamerica'),(81,'Can add pedidos en proceso',22,'add_pedidosenproceso'),(82,'Can change pedidos en proceso',22,'change_pedidosenproceso'),(83,'Can delete pedidos en proceso',22,'delete_pedidosenproceso'),(84,'Can view pedidos en proceso',22,'view_pedidosenproceso'),(85,'Can add proveedores lamerica',24,'add_proveedoreslamerica'),(86,'Can change proveedores lamerica',24,'change_proveedoreslamerica'),(87,'Can delete proveedores lamerica',24,'delete_proveedoreslamerica'),(88,'Can view proveedores lamerica',24,'view_proveedoreslamerica'),(89,'Can add solicitudes acceso',25,'add_solicitudesacceso'),(90,'Can change solicitudes acceso',25,'change_solicitudesacceso'),(91,'Can delete solicitudes acceso',25,'delete_solicitudesacceso'),(92,'Can view solicitudes acceso',25,'view_solicitudesacceso'),(93,'Can add producto',23,'add_producto'),(94,'Can change producto',23,'change_producto'),(95,'Can delete producto',23,'delete_producto'),(96,'Can view producto',23,'view_producto'),(97,'Can add envios lamerica',20,'add_envioslamerica'),(98,'Can change envios lamerica',20,'change_envioslamerica'),(99,'Can delete envios lamerica',20,'delete_envioslamerica'),(100,'Can view envios lamerica',20,'view_envioslamerica'),(101,'Can add ventas de lamerica',26,'add_ventasdelamerica'),(102,'Can change ventas de lamerica',26,'change_ventasdelamerica'),(103,'Can delete ventas de lamerica',26,'delete_ventasdelamerica'),(104,'Can view ventas de lamerica',26,'view_ventasdelamerica'),(105,'Can add cliente',27,'add_cliente'),(106,'Can change cliente',27,'change_cliente'),(107,'Can delete cliente',27,'delete_cliente'),(108,'Can view cliente',27,'view_cliente'),(109,'Can add detalle venta',28,'add_detalleventa'),(110,'Can change detalle venta',28,'change_detalleventa'),(111,'Can delete detalle venta',28,'delete_detalleventa'),(112,'Can view detalle venta',28,'view_detalleventa'),(113,'Can add venta',29,'add_venta'),(114,'Can change venta',29,'change_venta'),(115,'Can delete venta',29,'delete_venta'),(116,'Can view venta',29,'view_venta'),(117,'Can add movimiento',30,'add_movimiento'),(118,'Can change movimiento',30,'change_movimiento'),(119,'Can delete movimiento',30,'delete_movimiento'),(120,'Can view movimiento',30,'view_movimiento'),(121,'Can add compra',31,'add_compra'),(122,'Can change compra',31,'change_compra'),(123,'Can delete compra',31,'delete_compra'),(124,'Can view compra',31,'view_compra'),(125,'Can add detalle compra',32,'add_detallecompra'),(126,'Can change detalle compra',32,'change_detallecompra'),(127,'Can delete detalle compra',32,'delete_detallecompra'),(128,'Can view detalle compra',32,'view_detallecompra'),(129,'Can add proveedor',35,'add_proveedor'),(130,'Can change proveedor',35,'change_proveedor'),(131,'Can delete proveedor',35,'delete_proveedor'),(132,'Can view proveedor',35,'view_proveedor'),(133,'Can add detalle orden compra',33,'add_detalleordencompra'),(134,'Can change detalle orden compra',33,'change_detalleordencompra'),(135,'Can delete detalle orden compra',33,'delete_detalleordencompra'),(136,'Can view detalle orden compra',33,'view_detalleordencompra'),(137,'Can add orden compra',34,'add_ordencompra'),(138,'Can change orden compra',34,'change_ordencompra'),(139,'Can delete orden compra',34,'delete_ordencompra'),(140,'Can view orden compra',34,'view_ordencompra'),(141,'Can add bodega',36,'add_bodega'),(142,'Can change bodega',36,'change_bodega'),(143,'Can delete bodega',36,'delete_bodega'),(144,'Can view bodega',36,'view_bodega'),(145,'Can add solicitud soporte',37,'add_solicitudsoporte'),(146,'Can change solicitud soporte',37,'change_solicitudsoporte'),(147,'Can delete solicitud soporte',37,'delete_solicitudsoporte'),(148,'Can view solicitud soporte',37,'view_solicitudsoporte'),(149,'Can add empleado bodega',38,'add_empleadobodega'),(150,'Can change empleado bodega',38,'change_empleadobodega'),(151,'Can delete empleado bodega',38,'delete_empleadobodega'),(152,'Can view empleado bodega',38,'view_empleadobodega');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodega_lamerica`
--

DROP TABLE IF EXISTS `bodega_lamerica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bodega_lamerica` (
  `Id_bodega` int NOT NULL,
  `Ubicacion` varchar(100) NOT NULL,
  `Capacidad_de_productos` int NOT NULL,
  `Productos` int NOT NULL,
  `Nombre_de_encargado` varchar(100) NOT NULL,
  `Id_empleado` int NOT NULL,
  `Id_pedido` int NOT NULL,
  PRIMARY KEY (`Id_bodega`),
  KEY `bodega_pedido` (`Id_pedido`),
  CONSTRAINT `bodega_pedido` FOREIGN KEY (`Id_pedido`) REFERENCES `pedidos_en_proceso` (`Id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodega_lamerica`
--

LOCK TABLES `bodega_lamerica` WRITE;
/*!40000 ALTER TABLE `bodega_lamerica` DISABLE KEYS */;
INSERT INTO `bodega_lamerica` VALUES (1,'Bodega Principal',1000,0,'Adrián Belisario',1,1);
/*!40000 ALTER TABLE `bodega_lamerica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_de_lamerica`
--

DROP TABLE IF EXISTS `clientes_de_lamerica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes_de_lamerica` (
  `Id_usuario` int NOT NULL,
  `Nombre_de_clinte` varchar(100) DEFAULT NULL,
  `Numero_telefonico` varchar(20) DEFAULT NULL,
  `Correo_electronico` varchar(50) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Fecha_de_nacimiento` date DEFAULT NULL,
  `Productos_que_compra` varchar(500) DEFAULT NULL,
  `Cantidad_De_productos` int DEFAULT NULL,
  PRIMARY KEY (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_de_lamerica`
--

LOCK TABLES `clientes_de_lamerica` WRITE;
/*!40000 ALTER TABLE `clientes_de_lamerica` DISABLE KEYS */;
INSERT INTO `clientes_de_lamerica` VALUES (1,'Adrian Belisario','3045601999','abelisariopacheco@gmail.com','av33 #1281 El reposo ','2007-07-10','Paquete de chicles ',5),(2,'Diana Pacheco ','3006305867','dikami1204@gmail.com','av33 #1281 El reposo ','1977-01-16','Papas de mayonesa',12);
/*!40000 ALTER TABLE `clientes_de_lamerica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'gesym','authgroup'),(8,'gesym','authgrouppermissions'),(9,'gesym','authpermission'),(10,'gesym','authuser'),(11,'gesym','authusergroups'),(12,'gesym','authuseruserpermissions'),(36,'gesym','bodega'),(13,'gesym','bodegalamerica'),(27,'gesym','cliente'),(14,'gesym','clientesdelamerica'),(31,'gesym','compra'),(32,'gesym','detallecompra'),(33,'gesym','detalleordencompra'),(28,'gesym','detalleventa'),(15,'gesym','djangoadminlog'),(16,'gesym','djangocontenttype'),(17,'gesym','djangomigrations'),(18,'gesym','djangosession'),(38,'gesym','empleadobodega'),(19,'gesym','empleadoslamerica'),(20,'gesym','envioslamerica'),(21,'gesym','inventariodelamerica'),(30,'gesym','movimiento'),(34,'gesym','ordencompra'),(22,'gesym','pedidosenproceso'),(23,'gesym','producto'),(35,'gesym','proveedor'),(24,'gesym','proveedoreslamerica'),(25,'gesym','solicitudesacceso'),(37,'gesym','solicitudsoporte'),(29,'gesym','venta'),(26,'gesym','ventasdelamerica'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-07-03 02:50:43.759925'),(2,'auth','0001_initial','2026-07-03 02:50:44.194330'),(3,'admin','0001_initial','2026-07-03 02:50:44.288775'),(4,'admin','0002_logentry_remove_auto_add','2026-07-03 02:50:44.294889'),(5,'admin','0003_logentry_add_action_flag_choices','2026-07-03 02:50:44.304617'),(6,'contenttypes','0002_remove_content_type_name','2026-07-03 02:50:44.405924'),(7,'auth','0002_alter_permission_name_max_length','2026-07-03 02:50:44.452182'),(8,'auth','0003_alter_user_email_max_length','2026-07-03 02:50:44.481545'),(9,'auth','0004_alter_user_username_opts','2026-07-03 02:50:44.488438'),(10,'auth','0005_alter_user_last_login_null','2026-07-03 02:50:44.547135'),(11,'auth','0006_require_contenttypes_0002','2026-07-03 02:50:44.551786'),(12,'auth','0007_alter_validators_add_error_messages','2026-07-03 02:50:44.571208'),(13,'auth','0008_alter_user_username_max_length','2026-07-03 02:50:44.653678'),(14,'auth','0009_alter_user_last_name_max_length','2026-07-03 02:50:44.704608'),(15,'auth','0010_alter_group_name_max_length','2026-07-03 02:50:44.716818'),(16,'auth','0011_update_proxy_permissions','2026-07-03 02:50:44.734763'),(17,'auth','0012_alter_user_first_name_max_length','2026-07-03 02:50:44.792738'),(18,'sessions','0001_initial','2026-07-03 02:50:44.823463'),(19,'gesym','0001_initial','2026-07-09 00:15:18.139701'),(20,'gesym','0002_cliente_venta_detalleventa','2026-07-09 06:02:24.423402'),(21,'gesym','0003_movimiento','2026-07-09 06:31:11.481094'),(22,'gesym','0004_producto_activo','2026-07-09 06:47:41.641008'),(23,'gesym','0005_compra_detallecompra','2026-07-09 07:25:16.504420'),(24,'gesym','0006_ordencompra_proveedor_detalleordencompra_and_more','2026-07-09 12:36:16.513593'),(25,'gesym','0007_bodega_movimiento_bodega_producto_bodega','2026-07-10 22:13:38.700332'),(26,'gesym','0008_alter_producto_unique_together','2026-07-10 22:59:50.609243'),(27,'gesym','0009_solicitudsoporte','2026-07-11 03:05:33.337792'),(28,'gesym','0010 empleadobodega ','2026-07-11 17:27:33.211764'),(29,'gesym','0011_alter_empleadobodega_options_cliente_bodega','2026-08-03 19:42:05.298222'),(30,'gesym','0012_producto_tipo_ingreso','2026-08-03 23:21:16.704056'),(31,'gesym','0013_producto_numero_bandejas_and_more','2026-08-04 18:32:31.711962');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7len1njooij4jm0spugjx7amgo9lroob','eyJlbXBsZWFkb19pZCI6NywiYm9kZWdhX2lkIjo3fQ:1wmKXZ:gXOsVRa5r8Wc2WaU95917sO-XuC4xHvm9MdSZ4ojVwk','2026-08-05 00:10:25.242017'),('dksxx4c4hkz3pj8f4nkiy5rq0ni1tvnw','eyJlbXBsZWFkb19pZCI6MSwiYm9kZWdhX2lkIjozfQ:1wpxO8:AQdi6roPqDdePCs6BKyL_X1BZ_yTJbApn-DGs-BYcw0','2026-08-15 00:15:40.808886'),('frzpv78pxaw8nffp09q270w8qqikgjl2','eyJlbXBsZWFkb19pZCI6Mn0:1wiK5v:KvNDf9R7v86WPU6-1nsICpWQf2ZhyxkrS-Li0pQoZJk','2026-07-24 22:53:19.949464'),('gtxdr5yxg2jbfa88qrf2vqj1lrhq88zw','eyJlbXBsZWFkb19pZCI6NywiYm9kZWdhX2lkIjo4fQ:1wugaF:JIOg_l4v1DvCdI5bDBBxhqqa_cf8cKzFXDN_s2iG-zs','2026-08-28 01:19:43.466422'),('istbnv1bbayysfksu9jfnbcm08lak634','eyJlbXBsZWFkb19pZCI6Mn0:1whjJo:619PBc1rdOOQuJw86Ech1L5EgMH5fPGfExZ8nprf8_8','2026-07-23 07:37:12.346986'),('mcd01928vk8is0o3079fa8eroaluvu5j','eyJlbXBsZWFkb19pZCI6NywiYm9kZWdhX2lkIjozfQ:1wpxMw:OaSX2erC7rr7DoWbMGx-_uiujKw_J2y6JdnhOH0ZHmI','2026-08-15 00:14:26.159038'),('q024y2p6jiegz3ay59ei5c5heogcjzrm','eyJlbXBsZWFkb19pZCI6NywiYm9kZWdhX2lkIjoxfQ:1wif5p:jr7u3hV_r1imM2LWUCMc6AMLiJFw-LeRk9mIWlF0wWk','2026-07-25 21:18:37.764562'),('r0yw9ir74sziadyijuk4b86ddi1wljj3','eyJlbXBsZWFkb19pZCI6NywiYm9kZWdhX2lkIjo3fQ:1wqDHE:g21Kn_yhFN1F3iL_y0mTLPSqOMwcME0MK8IL0GFr9jQ','2026-08-15 17:13:36.583480'),('rji08zs40hhuwz1f8vz0epbrxw71eav1','eyJlbXBsZWFkb19pZCI6MX0:1whwWN:FF8gx23LdG0X8zOehRwwjItF1znAkwjAgWZQ8pUg45c','2026-07-23 21:43:03.633547'),('yrdtfkywprmid04r99qyu95k5v6olyn1','eyJlbXBsZWFkb19pZCI6NywiYm9kZWdhX2lkIjozfQ:1wqAy5:MeJ6GIk88IOosvJ5vn2I6VtOZAGcDtl7BS_jwvVMFFk','2026-08-15 14:45:41.043071'),('z19zin74m6yshaa2hzigu6zn848vzsht','eyJlbXBsZWFkb19pZCI6MX0:1whbOH:V2hsRLF_porsZCNtVKadIHYV_vCQ-1NcHp_LZhGaLfM','2026-07-22 23:09:17.372285');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_bodega`
--

DROP TABLE IF EXISTS `empleado_bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_bodega` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bodega_id` bigint NOT NULL,
  `empleado_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empleado_bodega_empleado_id_bodega_id_d65a5550_uniq` (`empleado_id`,`bodega_id`),
  KEY `empleado_bodega_bodega_id_055a5c52_fk_gesym_bodega_id` (`bodega_id`),
  CONSTRAINT `empleado_bodega_bodega_id_055a5c52_fk_gesym_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `gesym_bodega` (`id`),
  CONSTRAINT `empleado_bodega_empleado_id_b3219ef7_fk_empleados` FOREIGN KEY (`empleado_id`) REFERENCES `empleados_lamerica` (`Id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_bodega`
--

LOCK TABLES `empleado_bodega` WRITE;
/*!40000 ALTER TABLE `empleado_bodega` DISABLE KEYS */;
INSERT INTO `empleado_bodega` VALUES (19,9,1),(18,8,2);
/*!40000 ALTER TABLE `empleado_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_lamerica`
--

DROP TABLE IF EXISTS `empleados_lamerica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_lamerica` (
  `Id_empleado` int NOT NULL AUTO_INCREMENT,
  `Cargo_empleado` varchar(50) DEFAULT NULL,
  `Nombre_empleado` varchar(50) DEFAULT NULL,
  `Apellido_empleado` varchar(50) DEFAULT NULL,
  `Correo_de_empleado` varchar(50) DEFAULT NULL,
  `Direccion_empleado` varchar(50) DEFAULT NULL,
  `Id_bodega` int DEFAULT NULL,
  `Ubicacion_de_bodega` varchar(50) DEFAULT NULL,
  `Documento_De_identidad` int NOT NULL,
  `contrasena` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_lamerica`
--

LOCK TABLES `empleados_lamerica` WRITE;
/*!40000 ALTER TABLE `empleados_lamerica` DISABLE KEYS */;
INSERT INTO `empleados_lamerica` VALUES (1,'empleado','Adrián','Belisario','adrian@empresa.com','cucuta',1,'Bodega Principal',1090407508,'$2b$12$7m2aaxT/hH6UlvEQdbUcbuz9f5N4E1LM5mKLGAsxS9k2rSoDUjxa.'),(2,'empleado','camilo','pacheco','camilo@empresa.com','cucuta',2,'Bodega secundaria',60378190,'$2b$12$ksMK0A8l31Xo4bNCi9P6qeOGU4WAV28zLafeXN2VZwcFowxeRJTva'),(7,'Dueño','adrian belisario ','','abelisariopacheco@gmail.com','',NULL,NULL,1090407508,'$2b$12$vSPYUPWPeSmdPRw4lE92WeaNt8DDSerBYNk35gTtOYXMnH2OEWxh.');
/*!40000 ALTER TABLE `empleados_lamerica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios_lamerica`
--

DROP TABLE IF EXISTS `envios_lamerica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envios_lamerica` (
  `Id_envio` int NOT NULL,
  `Fecha_envio` date DEFAULT NULL,
  `Numero_de_guia` int DEFAULT NULL,
  `Ciudad_de_salida` varchar(100) DEFAULT NULL,
  `Ciudad_de_destino` varchar(100) DEFAULT NULL,
  `Id_venta` int DEFAULT NULL,
  `Id_pedido` int DEFAULT NULL,
  `Empresa_de_transporte` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_envio`),
  CONSTRAINT `envios_ventas` FOREIGN KEY (`Id_envio`) REFERENCES `ventas_de_lamerica` (`Id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios_lamerica`
--

LOCK TABLES `envios_lamerica` WRITE;
/*!40000 ALTER TABLE `envios_lamerica` DISABLE KEYS */;
/*!40000 ALTER TABLE `envios_lamerica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_bodega`
--

DROP TABLE IF EXISTS `gesym_bodega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_bodega` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(150) NOT NULL,
  `encargado` varchar(100) NOT NULL,
  `activa` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_bodega`
--

LOCK TABLES `gesym_bodega` WRITE;
/*!40000 ALTER TABLE `gesym_bodega` DISABLE KEYS */;
INSERT INTO `gesym_bodega` VALUES (8,'bodega 1 ','','',1,'2026-08-11 15:47:39.880402'),(9,'Segunda bodega','','',1,'2026-08-11 15:47:49.834020');
/*!40000 ALTER TABLE `gesym_bodega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_cliente`
--

DROP TABLE IF EXISTS `gesym_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(150) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `bodega_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gesym_cliente_bodega_id_89a0844a_fk_gesym_bodega_id` (`bodega_id`),
  CONSTRAINT `gesym_cliente_bodega_id_89a0844a_fk_gesym_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `gesym_bodega` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_cliente`
--

LOCK TABLES `gesym_cliente` WRITE;
/*!40000 ALTER TABLE `gesym_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_compra`
--

DROP TABLE IF EXISTS `gesym_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_compra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `proveedor` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  `impuestos` decimal(10,2) NOT NULL,
  `observaciones` longtext NOT NULL,
  `firma_comprador` varchar(150) NOT NULL,
  `firma_proveedor` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_compra`
--

LOCK TABLES `gesym_compra` WRITE;
/*!40000 ALTER TABLE `gesym_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_detallecompra`
--

DROP TABLE IF EXISTS `gesym_detallecompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_detallecompra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `producto_nombre` varchar(150) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `compra_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gesym_detallecompra_compra_id_86c0f5ad_fk_gesym_compra_id` (`compra_id`),
  CONSTRAINT `gesym_detallecompra_compra_id_86c0f5ad_fk_gesym_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `gesym_compra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_detallecompra`
--

LOCK TABLES `gesym_detallecompra` WRITE;
/*!40000 ALTER TABLE `gesym_detallecompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_detallecompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_detalleordencompra`
--

DROP TABLE IF EXISTS `gesym_detalleordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_detalleordencompra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(150) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `producto_id` bigint DEFAULT NULL,
  `orden_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gesym_detalleordenco_producto_id_64ac744f_fk_gesym_pro` (`producto_id`),
  KEY `gesym_detalleordenco_orden_id_add4505a_fk_gesym_ord` (`orden_id`),
  CONSTRAINT `gesym_detalleordenco_orden_id_add4505a_fk_gesym_ord` FOREIGN KEY (`orden_id`) REFERENCES `gesym_ordencompra` (`id`),
  CONSTRAINT `gesym_detalleordenco_producto_id_64ac744f_fk_gesym_pro` FOREIGN KEY (`producto_id`) REFERENCES `gesym_producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_detalleordencompra`
--

LOCK TABLES `gesym_detalleordencompra` WRITE;
/*!40000 ALTER TABLE `gesym_detalleordencompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_detalleordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_detalleventa`
--

DROP TABLE IF EXISTS `gesym_detalleventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_detalleventa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(150) NOT NULL,
  `codigo_producto` varchar(20) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `producto_id` bigint DEFAULT NULL,
  `venta_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gesym_detalleventa_producto_id_20640336_fk_gesym_producto_id` (`producto_id`),
  KEY `gesym_detalleventa_venta_id_3aafadbf_fk_gesym_venta_id` (`venta_id`),
  CONSTRAINT `gesym_detalleventa_producto_id_20640336_fk_gesym_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `gesym_producto` (`id`),
  CONSTRAINT `gesym_detalleventa_venta_id_3aafadbf_fk_gesym_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `gesym_venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_detalleventa`
--

LOCK TABLES `gesym_detalleventa` WRITE;
/*!40000 ALTER TABLE `gesym_detalleventa` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_detalleventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_movimiento`
--

DROP TABLE IF EXISTS `gesym_movimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_movimiento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(150) NOT NULL,
  `codigo_producto` varchar(20) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `usuario_nombre` varchar(100) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `producto_id` bigint DEFAULT NULL,
  `bodega_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gesym_movimiento_producto_id_3655d9d3_fk_gesym_producto_id` (`producto_id`),
  KEY `gesym_movimiento_bodega_id_1b56204a_fk_gesym_bodega_id` (`bodega_id`),
  CONSTRAINT `gesym_movimiento_bodega_id_1b56204a_fk_gesym_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `gesym_bodega` (`id`),
  CONSTRAINT `gesym_movimiento_producto_id_3655d9d3_fk_gesym_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `gesym_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_movimiento`
--

LOCK TABLES `gesym_movimiento` WRITE;
/*!40000 ALTER TABLE `gesym_movimiento` DISABLE KEYS */;
INSERT INTO `gesym_movimiento` VALUES (107,'Velon rojo/blanco (mediano)','001','Entrada','Ingreso de producto',12,'adrian belisario  ','2026-08-12 16:06:37.816996',90,8),(108,'Velón Naranja (mediano)','002','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-12 16:07:52.067119',91,8),(109,'Velón azul (mediano )','003','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 16:09:16.704207',92,8),(110,'Velón Naranja/rojo/dorado','004','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 16:11:21.686260',93,8),(111,'Velón Blanco/Verde/Dorado (mediano)','005','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 16:15:10.260497',94,8),(112,'Velón morado (mediano)','MED-006','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 16:17:35.525876',95,8),(113,'Velón Verde/Rojo/Blanco','MED-007','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-12 16:20:07.649240',96,8),(114,'Velón Rosaceo/Blanco (Mediano)','MED-008','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-12 16:22:10.891959',97,8),(115,'Velón Rosaceo (Mediano)','MED-009','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 16:23:08.479830',98,8),(116,'Velón Bronce (Mediano)','MED-010','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 16:23:55.902103',99,8),(117,'Velón Negro','MED-011','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-12 16:24:32.519794',100,8),(118,'Velón Dorado (mediano)','MED-012','Entrada','Ingreso de producto',14,'adrian belisario  ','2026-08-12 16:25:34.822235',101,8),(119,'Velón Amarillo/Azul/Rojo (mediano)','MED-013','Entrada','Ingreso de producto',1,'adrian belisario  ','2026-08-12 16:27:26.647264',102,8),(120,'Velón Azul/Blanco (mediano)','MED-014','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 16:28:30.731703',103,8),(121,'Velón Verde oscuro (mediano)','MED-015','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 16:29:31.751349',104,8),(122,'Velón Rojo (mediano)','MED-016','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-12 16:30:07.271823',105,8),(123,'Velón Amarillo (mediano)','MED-017','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 16:31:21.937458',106,8),(124,'Velón Amarillo/Blanco (mediano)','MED-018','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 16:33:49.274470',107,8),(125,'Velón Blanco (mediano)','MED-019','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 16:34:26.528130',108,8),(126,'Velón Morado/Blanco (mediano)','MED-020','Entrada','Ingreso de producto',1,'adrian belisario  ','2026-08-12 16:35:26.274869',109,8),(127,'Velon Amarillo/Verde Oscuro (mediano)','MED-021','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-12 16:36:34.108121',110,8),(128,'Velón Azul/Blanco (Intermedio mediano y grande)','INT-001','Entrada','Ingreso de producto',10,'adrian belisario  ','2026-08-12 18:10:23.763861',111,8),(129,'Velón Verde/Rojo/Azul (Intermedio mediano y grande)','INT-002','Entrada','Ingreso de producto',10,'adrian belisario  ','2026-08-12 18:12:37.188681',112,8),(130,'Velón Blanco/Rojo/Blanco/Rojo  (Intermedio mediano y grande)','INT','Entrada','Ingreso de producto',1,'adrian belisario  ','2026-08-12 18:14:25.101747',113,8),(131,'Velón Negro  (Intermedio mediano y grande)','INT-004','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 18:15:12.784578',114,8),(132,'Velon Bronce  (Intermedio mediano y grande)','INT-005','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 18:16:17.356233',115,8),(133,'Velón Rojo/Negro','INT-006','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 18:17:05.224283',116,8),(134,'Velón Rojo/Blanco (Intermedio mediano y grande)','INT-007','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-12 18:19:16.476441',117,8),(135,'Velón Rosaceo/Blanco (Intermedio mediano y grande)','INT-008','Entrada','Ingreso de producto',1,'adrian belisario  ','2026-08-12 18:20:23.231486',118,8),(136,'Velón Amarilo/Verde','INT-009','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 18:21:17.530271',119,8),(137,'Velón Verde (Intermedio mediano y grande)','INT-010','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-12 18:22:16.188948',120,8),(138,'Velón Naranja (Intermedio mediano y grande)','INT-011','Entrada','Ingreso de producto',10,'adrian belisario  ','2026-08-12 18:23:15.118615',121,8),(139,'Velón Blanco/Verde/Dorado','INT-012','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 18:24:21.849728',122,8),(140,'Velón Azul (Intermedio mediano y grande)','INT-013','Entrada','Ingreso de producto',10,'adrian belisario  ','2026-08-12 18:25:06.254676',124,8),(141,'Velón Morado  (Intermedio mediano y grande)','INT-014','Entrada','Ingreso de producto',12,'adrian belisario  ','2026-08-12 18:26:19.445306',125,8),(142,'Velón Rosáceo (Intermedio mediano y grande)','INT-015','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-12 18:27:34.544462',126,8),(143,'Velón Dorado (Intermedio mediano y grande)','INT-016','Entrada','Ingreso de producto',14,'adrian belisario  ','2026-08-12 18:29:15.714637',127,8),(144,'Velón Verde/Blanco (Intermedio mediano y grande)','INT-017','Entrada','Ingreso de producto',9,'adrian belisario  ','2026-08-12 18:30:55.824678',128,8),(145,'Velón Rojo (Intermedio mediano y grande)','INT-018','Entrada','Ingreso de producto',16,'adrian belisario  ','2026-08-12 18:31:39.071910',130,8),(146,'Velón Naranja/Rojo/Dorado (Intermedio mediano y grande)','INT-019','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 18:33:27.410219',131,8),(147,'Velón Morado/Blanco (Intermedio mediano y grande)','INT-020','Entrada','Ingreso de producto',1,'adrian belisario  ','2026-08-12 18:34:51.556430',132,8),(148,'Velón Plateado (Intermedio mediano y grande)','INT-021','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-12 18:36:14.271848',133,8),(149,'Velón Amarillo ','INT-022','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 18:37:01.185304',134,8),(150,'Velón Amarillo/Azul/Rojo','INT-023','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-12 18:37:46.858961',135,8),(151,'Velón Amarillo/Blanco (Intermedio mediano y grande)','INT-024','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-12 18:39:26.324988',136,8),(152,'Velón Blanco (Intermedio mediano y grande)','INT-025','Entrada','Ingreso de producto',9,'adrian belisario  ','2026-08-12 18:40:26.959500',137,8),(153,'Velón Dorado (Pequeño)','PEQ-001','Entrada','Ingreso de producto',17,'adrian belisario  ','2026-08-12 19:31:49.901290',138,8),(154,'Velón Azul (Pequeño)','PEQ-002','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 19:32:53.923385',139,8),(155,'Velón Verde/Blanco (Pequeño)','PEQ-003','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 19:34:06.166049',140,8),(156,'Velón Azul/Blanco (Pequeño)','PEQ-004','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 19:34:50.912583',141,8),(157,'Velón Amarillo/Azul/Rojo (Pequeño)','PEQ-005','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-12 19:36:23.992424',142,8),(158,'Velón Amarillo (Pequeño)','PEQ-006','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-12 19:37:17.164058',143,8),(159,'Velón Rojo/Amarillo (Pequeño)','PEQ-007','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 19:38:12.673407',149,8),(160,'Velón Rojo/Blanco (Pequeño) ','PEQ-008','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 19:39:54.081183',150,8),(161,'Velón Verde (Pequeño)','PEQ-009','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-12 19:40:37.048471',151,8),(162,'Velón Amarillo/Verde (Pequeño)','PEQ-010','Entrada','Ingreso de producto',9,'adrian belisario  ','2026-08-12 19:48:57.802973',152,8),(163,'Velón Rosáceo (Pequeño) ','PEQ-011','Entrada','Ingreso de producto',12,'adrian belisario  ','2026-08-12 19:50:25.249853',153,8),(164,'Velón Naranja (Pequeño)','PEQ-012','Entrada','Ingreso de producto',9,'adrian belisario  ','2026-08-12 19:51:10.938280',154,8),(165,'Velón Verde/Rojo/Blanco (Pequeño)','PEQ-013','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 19:52:38.193622',155,8),(166,'Velón Plateado','PEQ-014','Entrada','Ingreso de producto',13,'adrian belisario  ','2026-08-12 19:53:21.500383',156,8),(167,'Velón Dorado/Plateado (Pequeño)','PEQ-015','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-12 19:54:23.968078',157,8),(168,'Velón Blanco/Morado (Pequeño)','PEQ-016','Entrada','Ingreso de producto',9,'adrian belisario  ','2026-08-12 19:55:39.100700',158,8),(169,'Velón Blanco/Morado (Pequeño)','PEQ-017','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-12 19:56:48.314995',159,8),(170,'Velón Morado (Pequeño)','PEQ-018','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-12 19:57:30.782117',160,8),(171,'Velón Blanco/Verde/Dorado','PEQ-019','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 19:58:14.581555',161,8),(172,'Velón Amarillo/Blanco (Pequeño)','PEQ-020','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 19:59:04.920704',162,8),(173,'Velón Negro (Pequeño)','PEQ-021','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 20:00:31.462203',163,8),(174,'Velón Rojo (Pequeño)','PEQ-022','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 20:01:20.706315',164,8),(175,'Velón Rojo/Negro ','PEQ-023','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-12 20:01:51.424332',165,8),(176,'Velón Negro/Blanco (Pequeño)','PEQ-024','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 20:02:57.657384',166,8),(177,'Velón Rojo (Grande)','GRD-001','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 21:25:39.655970',167,8),(178,'Velón Amarillo (Grande)','GRD-002','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-12 21:27:26.398405',168,8),(179,'Velón Amarillo/Azul/Rojo','GRD-003','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-12 21:28:34.410623',169,8),(180,'Velón 7 Potencias (Grande)','GRD-004','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 21:29:37.432759',170,8),(181,'Velón Naranja/Rojo/Dorado (Grande)','GRD-005','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 21:30:25.493751',171,8),(182,'Velón Rosaceo','GRD-006','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-12 21:31:08.976677',172,8),(183,'Velón Rojo/Blanco (Grande)','GRD-007','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 21:32:03.788572',173,8),(184,'Velón Morado/Blanco (Grande)','GRD-008','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-12 21:33:26.328714',174,8),(185,'Velón Amarillo/Blanco (Grande)','GRD-009','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 21:34:32.694910',175,8),(186,'Velón Verde/Blanco (Grande)','GRD-010','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-12 21:35:38.854999',176,8),(187,'Velón Verde/Rojo/Blanco (Grande)','GRD-011','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-12 21:36:43.585397',177,8),(188,'Velón Verde/Rojo (Grande)','GRD-012','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-12 21:37:28.743306',178,8),(189,'Velón Amarillo/Verde (Grande)','GRD-013','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 21:38:37.446681',179,8),(190,'Velón Morado (Grande)','GRD-014','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 21:39:30.176247',180,8),(191,'Velón Blanco/Verde/Dorado (Grande)','GRD-015','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-12 21:40:44.546490',181,8),(192,'Velón Dorado (Grande)','GRD-016','Entrada','Ingreso de producto',10,'adrian belisario  ','2026-08-12 21:41:41.525203',182,8),(193,'Velón Naranja (Grande)','GRD-017','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-12 21:42:33.323931',183,8),(194,'Velón Azul/Blanco (Grande)','GRD-018','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 21:44:00.467016',184,8),(195,'Velón Plateado (Grande)','GRD-019','Entrada','Ingreso de producto',12,'adrian belisario  ','2026-08-12 21:46:36.734278',185,8),(196,'Velón Azul (Grande)','GRD-020','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 21:48:07.189883',186,8),(197,'Velón Verde (Grande)','GRD-021','Entrada','Ingreso de producto',13,'adrian belisario  ','2026-08-12 21:48:59.081084',187,8),(198,'Velón Blanco (Grande)','GRD-022','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-12 21:49:54.972385',188,8),(199,'Velón Negro (Grande)','GRD-023','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-12 21:52:10.647427',189,8),(200,'Velón Rojo/Negro (Grande)','GRD-024','Entrada','Ingreso de producto',1,'adrian belisario  ','2026-08-12 21:53:03.211964',190,8),(201,'Velón Rosaceo/Blanco (Grande)','GRD-025','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-12 21:53:41.865137',191,8),(202,'Varilla de Incienso (Cuadrada)','INCI-001','Entrada','Ingreso de producto',1731,'adrian belisario  ','2026-08-13 14:58:20.319836',192,8),(203,'Varilla de incienso (Hexagonal)','HEX-001','Entrada','Ingreso de producto',1051,'adrian belisario  ','2026-08-13 15:01:16.324485',193,8),(204,'Caja de 25 UND de incienso (Cuadrado)','INCI-002','Entrada','Ingreso de producto',25,'adrian belisario  ','2026-08-13 15:02:46.808211',NULL,8),(205,'Caja de 6 UND de incienso (Hexagonal)','HEX-002','Entrada','Ingreso de producto',25,'adrian belisario  ','2026-08-13 15:03:53.012353',NULL,8),(206,'Azulillo Astral ','AZU-001','Entrada','Ingreso de producto',144,'adrian belisario  ','2026-08-13 15:05:45.497341',196,8),(207,'Extracto de Garrapata','GAR-001','Entrada','Ingreso de producto',83,'adrian belisario  ','2026-08-13 15:06:40.331762',197,8),(208,'Aceite Limon (Amor)','ESC-001','Entrada','Ingreso de producto',14,'adrian belisario  ','2026-08-14 01:22:05.783797',198,8),(209,'Aceite Mama Bebe (Ternura)','ESC-002','Entrada','Ingreso de producto',15,'adrian belisario  ','2026-08-14 01:25:00.503117',199,8),(210,'Aceite Atracción ','ESC-003','Entrada','Ingreso de producto',14,'adrian belisario  ','2026-08-14 01:25:54.474417',200,8),(211,'Aceite Fantasia Car (Perfume)','ESC-004','Entrada','Ingreso de producto',10,'adrian belisario  ','2026-08-14 01:28:25.862980',201,8),(212,'Aceite Coco ','ESC-005','Entrada','Ingreso de producto',20,'adrian belisario  ','2026-08-14 01:30:40.105440',202,8),(213,'Aceite Black Berry ','ESC-006','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-14 01:31:39.525721',203,8),(214,'Aceite Geranio (Paz)','ESC-007','Entrada','Ingreso de producto',14,'adrian belisario  ','2026-08-14 01:33:49.774998',204,8),(215,'Aceite Floral (Conquista)','ESC-008','Entrada','Ingreso de producto',9,'adrian belisario  ','2026-08-14 01:34:34.804348',205,8),(216,'Aceite Ambar (Amor y Paz)','ESC-009','Entrada','Ingreso de producto',10,'adrian belisario  ','2026-08-14 01:36:49.903222',206,8),(217,'Aceite Flor de Verano','ESC-010','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-14 01:38:12.389212',207,8),(218,'Aceite Abundancia ','ESC-011','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-14 01:38:53.858790',208,8),(219,'Aceite Quereme ','ESC-012','Entrada','Ingreso de producto',24,'adrian belisario  ','2026-08-14 01:40:14.120419',209,8),(220,'Aceite Buena Suerte ','ESC-013','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-14 01:40:47.661653',210,8),(221,'Aceite Amor Amor','ESC-014','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-14 01:42:14.343798',211,8),(222,'Aceite Calienta Cama ','ESC-015','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-14 01:43:37.545691',212,8),(223,'Aceite Guanábana (Curativo)','ESC-016','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-14 01:44:52.878074',213,8),(224,'Aceite Clavo','ESC-017','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-14 01:46:00.922539',214,8),(225,'Aceite Boss','ESC-018','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-14 01:46:50.884368',215,8),(226,'Aceite 3 Potencias ','ESC-019','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 01:47:30.171061',216,8),(227,'Aceite Musk ','ESC-020','Entrada','Ingreso de producto',12,'adrian belisario  ','2026-08-14 01:49:08.926176',217,8),(228,'Aceite Verbena (Convivencia)','ESC-022','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 01:50:00.660956',218,8),(229,'Aceite Rosas (Inteligencia)','ESC-023','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 01:51:04.843237',219,8),(230,'Aceite Girasol (Energia Positiva)','ESC-023','Entrada','Ingreso de producto',11,'adrian belisario  ','2026-08-14 01:53:38.652296',220,8),(231,'Aceite Des trancadera ','ESC-024','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-14 01:54:35.083554',221,8),(232,'Aceite Taliu ','ESC-025','Entrada','Ingreso de producto',17,'adrian belisario  ','2026-08-14 01:55:36.368792',222,8),(233,'Aceite Manzana (Felicidad)','ESC-026','Entrada','Ingreso de producto',13,'adrian belisario  ','2026-08-14 01:57:08.707177',223,8),(234,'Aceite Banana (Musa de Amor)','ESC-027','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-14 01:58:19.777081',224,8),(235,'Fresa (Suerte)','ESC-028','Entrada','Ingreso de producto',8,'adrian belisario  ','2026-08-14 01:58:57.554981',225,8),(236,'Aceite Durazno (Atracción)','ESC-029','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 02:00:39.415138',226,8),(237,'Aceite Kiwi ','ESC-030','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 02:01:14.288515',227,8),(238,'Aceite Maracuyá ','ESC-031','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-14 02:01:54.672527',228,8),(239,'Aceite Cordero Manso ','ESC-032','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-14 02:02:38.674160',229,8),(240,'Aceite de Eucalipto (Contra)','0033','Entrada','Ingreso de producto',4,'adrian belisario  ','2026-08-14 02:03:26.149156',230,8),(241,'Aceite Dulces Hierbas','ESC-034','Entrada','Ingreso de producto',20,'adrian belisario  ','2026-08-14 02:04:27.458078',231,8),(242,'Aceite de Anis (Salud)','ESC-035','Entrada','Ingreso de producto',9,'adrian belisario  ','2026-08-14 02:05:55.460423',232,8),(243,'Aceite Lavanda (Pureza)','ESC-036','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-14 02:06:41.317054',233,8),(244,'Aceite Despojo ','ESC-037','Entrada','Ingreso de producto',7,'adrian belisario  ','2026-08-14 02:07:45.304771',234,8),(245,'Aceite Jala Jala ','ESC-038','Entrada','Ingreso de producto',6,'adrian belisario  ','2026-08-14 02:08:36.306684',235,8),(246,'Aceite Manzanilla (Tranquilidad)','ESC-039','Entrada','Ingreso de producto',5,'adrian belisario  ','2026-08-14 02:11:55.527014',236,8),(247,'Aceite Vetiver (Antiestres)','ESC-041','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 02:12:55.399839',237,8),(248,'Aceite Canela Menta','ESC-041','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 02:14:07.145109',238,8),(249,'Aceite Nardo (Persistir)','ESC-042','Entrada','Ingreso de producto',3,'adrian belisario  ','2026-08-14 02:15:00.632152',239,8),(250,'Aceite Muerdago','ESC-043','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-14 02:15:29.463541',240,8),(251,'Aceite Té Verde (Relajacion)','ESC-044','Entrada','Ingreso de producto',2,'adrian belisario  ','2026-08-14 02:16:14.954625',241,8);
/*!40000 ALTER TABLE `gesym_movimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_ordencompra`
--

DROP TABLE IF EXISTS `gesym_ordencompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_ordencompra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `fecha` date NOT NULL,
  `estado` varchar(20) NOT NULL,
  `impuestos` decimal(10,2) NOT NULL,
  `observaciones` longtext NOT NULL,
  `usuario_nombre` varchar(100) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `proveedor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gesym_ordencompra_proveedor_id_f8b212da_fk_gesym_proveedor_id` (`proveedor_id`),
  CONSTRAINT `gesym_ordencompra_proveedor_id_f8b212da_fk_gesym_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `gesym_proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_ordencompra`
--

LOCK TABLES `gesym_ordencompra` WRITE;
/*!40000 ALTER TABLE `gesym_ordencompra` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_ordencompra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_producto`
--

DROP TABLE IF EXISTS `gesym_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_producto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descripcion` longtext NOT NULL,
  `stock_minimo` int NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `bodega_id` bigint DEFAULT NULL,
  `tipo_ingreso` varchar(10) NOT NULL,
  `numero_bandejas` int DEFAULT NULL,
  `unidades_por_bandeja` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gesym_producto_bodega_id_codigo_b39cdc94_uniq` (`bodega_id`,`codigo`),
  CONSTRAINT `gesym_producto_bodega_id_da5a5497_fk_gesym_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `gesym_bodega` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_producto`
--

LOCK TABLES `gesym_producto` WRITE;
/*!40000 ALTER TABLE `gesym_producto` DISABLE KEYS */;
INSERT INTO `gesym_producto` VALUES (90,'MED-001','Velón rojo/blanco (mediano)','','Vela',12,14000.00,'',10,'2026-08-12 16:06:37.804231',1,8,'unidad',NULL,NULL),(91,'MED-002','Velón Naranja (mediano)','','Vela',11,14000.00,'',10,'2026-08-12 16:07:52.056158',1,8,'unidad',NULL,NULL),(92,'MED-003','Velón azul (mediano)','','Vela',4,14000.00,'',10,'2026-08-12 16:09:16.692978',1,8,'unidad',NULL,NULL),(93,'MED-004','Velón Naranja/rojo/dorado (mediano)','','Vela ',4,14000.00,'',10,'2026-08-12 16:11:21.676923',1,8,'unidad',NULL,NULL),(94,'MED-005','Velón Blanco/Verde/Dorado (mediano)','','Vela',5,14000.00,'',10,'2026-08-12 16:15:10.249902',1,8,'unidad',NULL,NULL),(95,'MED-006','Velón morado (mediano)','','Vela',4,14000.00,'',10,'2026-08-12 16:17:35.518600',1,8,'unidad',NULL,NULL),(96,'MED-007','Velón Verde/Rojo/Blanco (mediano)','','Vela',2,14000.00,'',10,'2026-08-12 16:20:07.639715',1,8,'unidad',NULL,NULL),(97,'MED-008','Velón Rosaceo/Blanco (Mediano)','','Vela',2,14000.00,'',10,'2026-08-12 16:22:10.882670',1,8,'unidad',NULL,NULL),(98,'MED-009','Velón Rosaceo (Mediano)','','Vela',8,14000.00,'',10,'2026-08-12 16:23:08.469194',1,8,'unidad',NULL,NULL),(99,'MED-010','Velón Bronce (Mediano)','','Vela ',8,14000.00,'',10,'2026-08-12 16:23:55.894048',1,8,'unidad',NULL,NULL),(100,'MED-011','Velón Negro (mediano)','','Vela',2,14000.00,'',10,'2026-08-12 16:24:32.508883',1,8,'unidad',NULL,NULL),(101,'MED-012','Velón Dorado (mediano)','','Vela',14,14000.00,'',10,'2026-08-12 16:25:34.812258',1,8,'unidad',NULL,NULL),(102,'MED-013','Velón Amarillo/Azul/Rojo (mediano)','','Vela',1,14000.00,'',10,'2026-08-12 16:27:26.639800',1,8,'unidad',NULL,NULL),(103,'MED-014','Velón Azul/Blanco (mediano)','','Vela',5,14000.00,'',10,'2026-08-12 16:28:30.724051',1,8,'unidad',NULL,NULL),(104,'MED-015','Velón Verde oscuro (mediano)','','Vela',5,14000.00,'',10,'2026-08-12 16:29:31.743825',1,8,'unidad',NULL,NULL),(105,'MED-016','Velón Rojo (mediano)','','Vela',3,14000.00,'',10,'2026-08-12 16:30:07.263266',1,8,'unidad',NULL,NULL),(106,'MED-017','Velón Amarillo (mediano)','','Vela',7,14000.00,'',10,'2026-08-12 16:31:21.926213',1,8,'unidad',NULL,NULL),(107,'MED-018','Velón Amarillo/Blanco (mediano)','','Vela ',8,14000.00,'',10,'2026-08-12 16:33:49.264861',1,8,'unidad',NULL,NULL),(108,'MED-019','Velón Blanco (mediano)','','Vela ',8,14000.00,'',10,'2026-08-12 16:34:26.520087',1,8,'unidad',NULL,NULL),(109,'MED-020','Velón Morado/Blanco (mediano)','','Vela',1,14000.00,'',10,'2026-08-12 16:35:26.265617',1,8,'unidad',NULL,NULL),(110,'MED-021','Velon Amarillo/Verde Oscuro (mediano)','','Vela ',3,14000.00,'',10,'2026-08-12 16:36:34.098193',1,8,'unidad',NULL,NULL),(111,'INT-001','Velón Azul/Blanco (Intermedio mediano y grande)','','Vela',10,10000.00,'',10,'2026-08-12 18:10:23.752420',1,8,'unidad',NULL,NULL),(112,'INT-002','Velón Verde/Rojo/Azul (Intermedio mediano y grande)','','Vela',10,10000.00,'',10,'2026-08-12 18:12:37.178246',1,8,'unidad',NULL,NULL),(113,'INT-003','Velón Blanco/Rojo/Blanco/Rojo  (Intermedio mediano y grande)','','Vela',0,10000.00,'',10,'2026-08-12 18:14:25.086821',1,8,'unidad',NULL,NULL),(114,'INT-004','Velón Negro  (Intermedio mediano y grande)','','Vela',4,10000.00,'',10,'2026-08-12 18:15:12.770728',1,8,'unidad',NULL,NULL),(115,'INT-005','Velon Bronce  (Intermedio mediano y grande)','','Vela',7,10000.00,'',10,'2026-08-12 18:16:17.347371',1,8,'unidad',NULL,NULL),(116,'INT-006','Velón Rojo/Negro  (Intermedio mediano y grande)','','Vela',5,10000.00,'',10,'2026-08-12 18:17:05.213890',1,8,'unidad',NULL,NULL),(117,'INT-007','Velón Rojo/Blanco (Intermedio mediano y grande)','','Vela',3,10000.00,'',10,'2026-08-12 18:19:16.466571',1,8,'unidad',NULL,NULL),(118,'INT-008','Velón Rosaceo/Blanco (Intermedio mediano y grande)','','Vela',1,10000.00,'',10,'2026-08-12 18:20:23.223013',1,8,'unidad',NULL,NULL),(119,'INT-009','Velón Amarillo/Verde (Intermedio mediano y grande)','','Vela',5,10000.00,'',10,'2026-08-12 18:21:17.520441',1,8,'unidad',NULL,NULL),(120,'INT-010','Velón Verde (Intermedio mediano y grande)','','Vela',2,10000.00,'',10,'2026-08-12 18:22:16.179694',1,8,'unidad',NULL,NULL),(121,'INT-011','Velón Naranja (Intermedio mediano y grande)','','Vela',9,10000.00,'',10,'2026-08-12 18:23:15.110547',1,8,'unidad',NULL,NULL),(122,'INT-012','Velón Blanco/Verde/Dorado','','Vela',8,10000.00,'',10,'2026-08-12 18:24:21.840032',1,8,'unidad',NULL,NULL),(124,'INT-013','Velón Azul (Intermedio mediano y grande)','','Vela',10,10000.00,'',10,'2026-08-12 18:25:06.245794',1,8,'unidad',NULL,NULL),(125,'INT-014','Velón Morado  (Intermedio mediano y grande)','','Vela ',12,10000.00,'',10,'2026-08-12 18:26:19.436975',1,8,'unidad',NULL,NULL),(126,'INT-015','Velón Rosáceo (Intermedio mediano y grande)','','Vela ',3,10000.00,'',10,'2026-08-12 18:27:34.534860',1,8,'unidad',NULL,NULL),(127,'INT-016','Velón Dorado (Intermedio mediano y grande)','','Vela',14,10000.00,'',10,'2026-08-12 18:29:15.705788',1,8,'unidad',NULL,NULL),(128,'INT-017','Velón Verde/Blanco (Intermedio mediano y grande)','','Vela',9,10000.00,'',10,'2026-08-12 18:30:55.816570',1,8,'unidad',NULL,NULL),(130,'INT-018','Velón Rojo (Intermedio mediano y grande)','','Vela',16,10000.00,'',10,'2026-08-12 18:31:39.065560',1,8,'unidad',NULL,NULL),(131,'INT-019','Velón Naranja/Rojo/Dorado (Intermedio mediano y grande)','','Vela',7,10000.00,'',10,'2026-08-12 18:33:27.401507',1,8,'unidad',NULL,NULL),(132,'INT-020','Velón Morado/Blanco (Intermedio mediano y grande)','','Vela',1,10000.00,'',10,'2026-08-12 18:34:51.544928',1,8,'unidad',NULL,NULL),(133,'INT-021','Velón Plateado (Intermedio mediano y grande)','','Vela',11,10000.00,'',10,'2026-08-12 18:36:14.264463',1,8,'unidad',NULL,NULL),(134,'INT-022','Velón Amarillo (Intermedio mediano y grande)','','Vela',7,10000.00,'',10,'2026-08-12 18:37:01.175490',1,8,'unidad',NULL,NULL),(135,'INT-023','Velón Amarillo/Azul/Rojo (Intermedio mediano y grande)','','Vela',11,10000.00,'',10,'2026-08-12 18:37:46.849044',1,8,'unidad',NULL,NULL),(136,'INT-024','Velón Amarillo/Blanco (Intermedio mediano y grande)','','Vela',2,10000.00,'',10,'2026-08-12 18:39:26.316238',1,8,'unidad',NULL,NULL),(137,'INT-025','Velón Blanco (Intermedio mediano y grande)','','Vela',9,10000.00,'',10,'2026-08-12 18:40:26.947834',1,8,'unidad',NULL,NULL),(138,'PEQ-001','Velón Dorado (Pequeño)','','Vela',17,5000.00,'',10,'2026-08-12 19:31:49.888714',1,8,'unidad',NULL,NULL),(139,'PEQ-002','Velón Azul (Pequeño)','','Vela',4,5000.00,'',10,'2026-08-12 19:32:53.910576',1,8,'unidad',NULL,NULL),(140,'PEQ-003','Velón Verde/Blanco (Pequeño)','','Vela',4,5000.00,'',10,'2026-08-12 19:34:06.155282',1,8,'unidad',NULL,NULL),(141,'PEQ-004','Velón Azul/Blanco (Pequeño)','','Vela',8,5000.00,'',10,'2026-08-12 19:34:50.900744',1,8,'unidad',NULL,NULL),(142,'PEQ-005','Velón Amarillo/Azul/Rojo (Pequeño)','','Vela',12,5000.00,'',10,'2026-08-12 19:36:23.972656',1,8,'unidad',NULL,NULL),(143,'PEQ-006','Velón Amarillo (Pequeño)','','Vela',11,5000.00,'',10,'2026-08-12 19:37:17.125159',1,8,'unidad',NULL,NULL),(149,'PEQ-007','Velón Rojo/Amarillo (Pequeño)','','Vela',7,5000.00,'',10,'2026-08-12 19:38:12.662388',1,8,'unidad',NULL,NULL),(150,'PEQ-008','Velón Rojo/Blanco (Pequeño) ','','Vela',5,5000.00,'',10,'2026-08-12 19:39:54.073245',1,8,'unidad',NULL,NULL),(151,'PEQ-009','Velón Verde (Pequeño)','','Vela',6,5000.00,'',10,'2026-08-12 19:40:37.038565',1,8,'unidad',NULL,NULL),(152,'PEQ-010','Velón Amarillo/Verde (Pequeño)','','Vela ',9,5000.00,'',10,'2026-08-12 19:48:57.795506',1,8,'unidad',NULL,NULL),(153,'PEQ-011','Velón Rosáceo (Pequeño) ','','Vela',12,5000.00,'',10,'2026-08-12 19:50:25.241082',1,8,'unidad',NULL,NULL),(154,'PEQ-012','Velón Naranja (Pequeño)','','Vela',9,5000.00,'',10,'2026-08-12 19:51:10.929060',1,8,'unidad',NULL,NULL),(155,'PEQ-013','Velón Verde/Rojo/Blanco (Pequeño)','','Vela',4,5000.00,'',10,'2026-08-12 19:52:38.185107',1,8,'unidad',NULL,NULL),(156,'PEQ-014','Velón Plateado (Pequeño)','','Vela',13,5000.00,'',10,'2026-08-12 19:53:21.490368',1,8,'unidad',NULL,NULL),(157,'PEQ-015','Velón Dorado/Plateado (Pequeño)','','Vela',2,5000.00,'',10,'2026-08-12 19:54:23.958748',1,8,'unidad',NULL,NULL),(158,'PEQ-016','Velón Blanco (Pequeño)','','Vela',9,5000.00,'',10,'2026-08-12 19:55:39.091160',1,8,'unidad',NULL,NULL),(159,'PEQ-017','Velón Morado/Blanco (Pequeño)','','Vela',5,5000.00,'',10,'2026-08-12 19:56:48.307755',1,8,'unidad',NULL,NULL),(160,'PEQ-018','Velón Morado (Pequeño)','','Vela',6,5000.00,'',10,'2026-08-12 19:57:30.771230',1,8,'unidad',NULL,NULL),(161,'PEQ-019','Velón Blanco/Verde/Dorado (Pequeño)','','Vela',4,5000.00,'',10,'2026-08-12 19:58:14.572207',1,8,'unidad',NULL,NULL),(162,'PEQ-020','Velón Amarillo/Blanco (Pequeño)','','Vela',8,5000.00,'',10,'2026-08-12 19:59:04.911654',1,8,'unidad',NULL,NULL),(163,'PEQ-021','Velón Negro (Pequeño)','','Vela',7,5000.00,'',10,'2026-08-12 20:00:31.451742',1,8,'unidad',NULL,NULL),(164,'PEQ-022','Velón Rojo (Pequeño)','','Vela',7,5000.00,'',10,'2026-08-12 20:01:20.697166',1,8,'unidad',NULL,NULL),(165,'PEQ-023','Velón Rojo/Negro (Pequeño)','','Vela',6,5000.00,'',10,'2026-08-12 20:01:51.415064',1,8,'unidad',NULL,NULL),(166,'PEQ-024','Velón Negro/Blanco (Pequeño)','','Vela',5,5000.00,'',10,'2026-08-12 20:02:57.647862',1,8,'unidad',NULL,NULL),(167,'GRD-001','Velón Rojo (Grande)','','Vela',8,20000.00,'',10,'2026-08-12 21:25:39.650430',1,8,'unidad',NULL,NULL),(168,'GRD-002','Velón Amarillo (Grande)','','Vela',11,20000.00,'',10,'2026-08-12 21:27:26.386564',1,8,'unidad',NULL,NULL),(169,'GRD-003','Velón Amarillo/Azul/Rojo (Grande)','','Vela',6,20000.00,'',10,'2026-08-12 21:28:34.401977',1,8,'unidad',NULL,NULL),(170,'GRD-004','Velón 7 Potencias (Grande)','','Vela',5,20000.00,'',10,'2026-08-12 21:29:37.423781',1,8,'unidad',NULL,NULL),(171,'GRD-005','Velón Naranja/Rojo/Dorado (Grande)','','Vela',7,20000.00,'',10,'2026-08-12 21:30:25.486844',1,8,'unidad',NULL,NULL),(172,'GRD-006','Velón Rosaceo (Grande)','','Vela',6,20000.00,'',10,'2026-08-12 21:31:08.968076',1,8,'unidad',NULL,NULL),(173,'GRD-007','Velón Rojo/Blanco (Grande)','','Vela',5,20000.00,'',10,'2026-08-12 21:32:03.780423',1,8,'unidad',NULL,NULL),(174,'GRD-008','Velón Morado/Blanco (Grande)','','Vela',7,20000.00,'',10,'2026-08-12 21:33:26.318006',1,8,'unidad',NULL,NULL),(175,'GRD-009','Velón Amarillo/Blanco (Grande)','','Vela',5,20000.00,'',10,'2026-08-12 21:34:32.686317',1,8,'unidad',NULL,NULL),(176,'GRD-010','Velón Verde/Blanco (Grande)','','Vela ',3,20000.00,'',10,'2026-08-12 21:35:38.846841',1,8,'unidad',NULL,NULL),(177,'GRD-011','Velón Verde/Rojo/Blanco (Grande)','','Vela',4,20000.00,'',10,'2026-08-12 21:36:43.576194',1,8,'unidad',NULL,NULL),(178,'GRD-012','Velón Verde/Rojo (Grande)','','Vela',6,20000.00,'',10,'2026-08-12 21:37:28.734335',1,8,'unidad',NULL,NULL),(179,'GRD-013','Velón Amarillo/Verde (Grande)','','Vela',5,20000.00,'',10,'2026-08-12 21:38:37.436239',1,8,'unidad',NULL,NULL),(180,'GRD-014','Velón Morado (Grande)','','Vela',8,20000.00,'',10,'2026-08-12 21:39:30.166533',1,8,'unidad',NULL,NULL),(181,'GRD-015','Velón Blanco/Verde/Dorado (Grande)','','Vela',3,20000.00,'',10,'2026-08-12 21:40:44.536835',1,8,'unidad',NULL,NULL),(182,'GRD-016','Velón Dorado (Grande)','','Vela',10,20000.00,'',10,'2026-08-12 21:41:41.514881',1,8,'unidad',NULL,NULL),(183,'GRD-017','Velón Naranja (Grande)','','Vela',3,20000.00,'',10,'2026-08-12 21:42:33.313732',1,8,'unidad',NULL,NULL),(184,'GRD-018','Velón Azul/Blanco (Grande)','','Vela',5,20000.00,'',10,'2026-08-12 21:44:00.460537',1,8,'unidad',NULL,NULL),(185,'GRD-019','Velón Plateado (Grande)','','Vela',12,20000.00,'',10,'2026-08-12 21:46:36.724388',1,8,'unidad',NULL,NULL),(186,'GRD-020','Velón Azul (Grande)','','Vela',5,20000.00,'',10,'2026-08-12 21:48:07.180275',1,8,'unidad',NULL,NULL),(187,'GRD-021','Velón Verde (Grande)','','Vela',13,20000.00,'',10,'2026-08-12 21:48:59.071327',1,8,'unidad',NULL,NULL),(188,'GRD-022','Velón Blanco (Grande)','','Vela ',8,20000.00,'',10,'2026-08-12 21:49:54.963505',1,8,'unidad',NULL,NULL),(189,'GRD-023','Velón Negro (Grande)','','Vela',5,20000.00,'',10,'2026-08-12 21:52:10.638032',1,8,'unidad',NULL,NULL),(190,'GRD-024','Velón Rojo/Negro (Grande)','','Vela',1,20000.00,'',10,'2026-08-12 21:53:03.205536',1,8,'unidad',NULL,NULL),(191,'GRD-025','Velón Rosaceo/Blanco (Grande)','','Vela',2,20000.00,'',10,'2026-08-12 21:53:41.855952',1,8,'unidad',NULL,NULL),(192,'INCI-001','Varilla de Incienso (Cuadrada)','','Aromarico',1455,1000.00,'',10,'2026-08-13 14:58:20.297806',1,8,'unidad',NULL,NULL),(193,'HEX-001','Varilla de incienso (Hexagonal)','','Aromatico',1017,2500.00,'',10,'2026-08-13 15:01:16.318515',1,8,'unidad',NULL,NULL),(196,'AZU-001','Azulillo Astral ','','',144,2000.00,'',10,'2026-08-13 15:05:45.482191',1,8,'unidad',NULL,NULL),(197,'GAR-001','Extracto de Garrapata','','',83,10000.00,'',10,'2026-08-13 15:06:40.320500',1,8,'unidad',NULL,NULL),(198,'ESC-001','Aceite Limon (Amor)','','Esencia',14,6000.00,'',10,'2026-08-14 01:22:05.757853',1,8,'unidad',NULL,NULL),(199,'ESC-002','Aceite Mama Bebe (Ternura)','','Esencia',15,6000.00,'',10,'2026-08-14 01:25:00.496311',1,8,'unidad',NULL,NULL),(200,'ESC-003','Aceite Atracción ','','Esencia',14,6000.00,'',10,'2026-08-14 01:25:54.468158',1,8,'unidad',NULL,NULL),(201,'ESC-004','Aceite Fantasia Car (Perfume)','','Esencia',10,6000.00,'',10,'2026-08-14 01:28:25.851925',1,8,'unidad',NULL,NULL),(202,'ESC-005','Aceite Coco ','','Esencia',20,6000.00,'',10,'2026-08-14 01:30:40.099485',1,8,'unidad',NULL,NULL),(203,'ESC-006','Aceite Black Berry ','','Esencia',11,6000.00,'',10,'2026-08-14 01:31:39.517122',1,8,'unidad',NULL,NULL),(204,'ESC-007','Aceite Geranio (Paz)','','Esencia',14,6000.00,'',10,'2026-08-14 01:33:49.764913',1,8,'unidad',NULL,NULL),(205,'ESC-008','Aceite Floral (Conquista)','','Esencia',9,6000.00,'',10,'2026-08-14 01:34:34.794334',1,8,'unidad',NULL,NULL),(206,'ESC-009','Aceite Ambar (Amor y Paz)','','Esencia',10,6000.00,'',10,'2026-08-14 01:36:49.894669',1,8,'unidad',NULL,NULL),(207,'ESC-010','Aceite Flor de Verano','','Esencia',11,6000.00,'',10,'2026-08-14 01:38:12.382333',1,8,'unidad',NULL,NULL),(208,'ESC-011','Aceite Abundancia ','','Esencia',7,6000.00,'',10,'2026-08-14 01:38:53.849244',1,8,'unidad',NULL,NULL),(209,'ESC-012','Aceite Quereme ','','Esencia',24,6000.00,'',10,'2026-08-14 01:40:14.111898',1,8,'unidad',NULL,NULL),(210,'ESC-013','Aceite Buena Suerte ','','Esencia',7,6000.00,'',10,'2026-08-14 01:40:47.645662',1,8,'unidad',NULL,NULL),(211,'ESC-014','Aceite Amor Amor','','Esencia',6,6000.00,'',10,'2026-08-14 01:42:14.332995',1,8,'unidad',NULL,NULL),(212,'ESC-015','Aceite Calienta Cama ','','Esencia',5,6000.00,'',10,'2026-08-14 01:43:37.539405',1,8,'unidad',NULL,NULL),(213,'ESC-016','Aceite Guanábana (Curativo)','','Esencia',4,6000.00,'',10,'2026-08-14 01:44:52.863946',1,8,'unidad',NULL,NULL),(214,'ESC-017','Aceite Clavo','','Esencia',5,6000.00,'',10,'2026-08-14 01:46:00.905580',1,8,'unidad',NULL,NULL),(215,'ESC-018','Aceite Boss','','Esencia',5,6000.00,'',10,'2026-08-14 01:46:50.876284',1,8,'unidad',NULL,NULL),(216,'ESC-019','Aceite 3 Potencias ','','Esencia',3,6000.00,'',10,'2026-08-14 01:47:30.161433',1,8,'unidad',NULL,NULL),(217,'ESC-020','Aceite Musk ','','Esencia',12,6000.00,'',10,'2026-08-14 01:49:08.918919',1,8,'unidad',NULL,NULL),(218,'ESC-021','Aceite Verbena (Convivencia)','','Esencia',3,6000.00,'',10,'2026-08-14 01:50:00.652653',1,8,'unidad',NULL,NULL),(219,'ESC-022','Aceite Rosas (Inteligencia)','','Esencia',3,6000.00,'',10,'2026-08-14 01:51:04.828894',1,8,'unidad',NULL,NULL),(220,'ESC-023','Aceite Girasol (Energia Positiva)','','Esencia',11,6000.00,'',10,'2026-08-14 01:53:38.644630',1,8,'unidad',NULL,NULL),(221,'ESC-024','Aceite Des trancadera ','','Esencia',2,6000.00,'',10,'2026-08-14 01:54:35.073158',1,8,'unidad',NULL,NULL),(222,'ESC-025','Aceite Taliu ','','Esencia',17,6000.00,'',10,'2026-08-14 01:55:36.354296',1,8,'unidad',NULL,NULL),(223,'ESC-026','Aceite Manzana (Felicidad)','','Esencia',13,6000.00,'',10,'2026-08-14 01:57:08.698812',1,8,'unidad',NULL,NULL),(224,'ESC-027','Aceite Banana (Musa de Amor)','','Esencia',8,6000.00,'',10,'2026-08-14 01:58:19.772265',1,8,'unidad',NULL,NULL),(225,'ESC-028','Fresa (Suerte)','','Esencia',8,6000.00,'',10,'2026-08-14 01:58:57.546188',1,8,'unidad',NULL,NULL),(226,'ESC-029','Aceite Durazno (Atracción)','','Esencia',3,6000.00,'',10,'2026-08-14 02:00:39.405705',1,8,'unidad',NULL,NULL),(227,'ESC-030','Aceite Kiwi ','','Esencia',3,6000.00,'',10,'2026-08-14 02:01:14.278506',1,8,'unidad',NULL,NULL),(228,'ESC-031','Aceite Maracuyá ','','Esencia',4,6000.00,'',10,'2026-08-14 02:01:54.665540',1,8,'unidad',NULL,NULL),(229,'ESC-032','Aceite Cordero Manso ','','Esencia',7,6000.00,'',10,'2026-08-14 02:02:38.666418',1,8,'unidad',NULL,NULL),(230,'ESC-033','Aceite de Eucalipto (Contra)','','Esencia',4,6000.00,'',10,'2026-08-14 02:03:26.141998',1,8,'unidad',NULL,NULL),(231,'ESC-034','Aceite Dulces Hierbas','','Esencia',20,6000.00,'',10,'2026-08-14 02:04:27.453042',1,8,'unidad',NULL,NULL),(232,'ESC-035','Aceite de Anis (Salud)','','Esencia',9,6000.00,'',10,'2026-08-14 02:05:55.451708',1,8,'unidad',NULL,NULL),(233,'ESC-036','Aceite Lavanda (Pureza)','','Esencia',6,6000.00,'',10,'2026-08-14 02:06:41.310850',1,8,'unidad',NULL,NULL),(234,'ESC-037','Aceite Despojo ','','Esencia',7,6000.00,'',10,'2026-08-14 02:07:45.294908',1,8,'unidad',NULL,NULL),(235,'ESC-038','Aceite Jala Jala ','','Esencia',6,6000.00,'',10,'2026-08-14 02:08:36.297934',1,8,'unidad',NULL,NULL),(236,'ESC-039','Aceite Manzanilla (Tranquilidad)','','Esencia',5,6000.00,'',10,'2026-08-14 02:11:55.518200',1,8,'unidad',NULL,NULL),(237,'ESC-040','Aceite Vetiver (Antiestres)','','Esencia',3,6000.00,'',10,'2026-08-14 02:12:55.392890',1,8,'unidad',NULL,NULL),(238,'ESC-041','Aceite Canela Menta','','Esencia',3,6000.00,'',10,'2026-08-14 02:14:07.136533',1,8,'unidad',NULL,NULL),(239,'ESC-042','Aceite Nardo (Persistir)','','Esencia',3,6000.00,'',10,'2026-08-14 02:15:00.624523',1,8,'unidad',NULL,NULL),(240,'ESC-043','Aceite Muerdago','','Esencia',2,6000.00,'',10,'2026-08-14 02:15:29.453543',1,8,'unidad',NULL,NULL),(241,'ESC-044','Aceite Té Verde (Relajacion)','','Esencia',2,6000.00,'',10,'2026-08-14 02:16:14.945393',1,8,'unidad',NULL,NULL);
/*!40000 ALTER TABLE `gesym_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_proveedor`
--

DROP TABLE IF EXISTS `gesym_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_proveedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_proveedor`
--

LOCK TABLES `gesym_proveedor` WRITE;
/*!40000 ALTER TABLE `gesym_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesym_venta`
--

DROP TABLE IF EXISTS `gesym_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gesym_venta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_venta` date NOT NULL,
  `metodo_pago` varchar(20) NOT NULL,
  `notas` longtext NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `cliente_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gesym_venta_cliente_id_9c8fe240_fk_gesym_cliente_id` (`cliente_id`),
  CONSTRAINT `gesym_venta_cliente_id_9c8fe240_fk_gesym_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `gesym_cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesym_venta`
--

LOCK TABLES `gesym_venta` WRITE;
/*!40000 ALTER TABLE `gesym_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `gesym_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_de_lamerica`
--

DROP TABLE IF EXISTS `inventario_de_lamerica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_de_lamerica` (
  `Id_inventario` int NOT NULL,
  `Id_pedidos` int DEFAULT NULL,
  `Id_productos` int DEFAULT NULL,
  `Numero_de_productos` int DEFAULT NULL,
  `Fecha_de_ingreso_de_productos` date DEFAULT NULL,
  `Fecha_de_vencimiento_de_productos` date DEFAULT NULL,
  PRIMARY KEY (`Id_inventario`),
  KEY `bodega_inventario` (`Id_pedidos`),
  CONSTRAINT `bodega_inventario` FOREIGN KEY (`Id_pedidos`) REFERENCES `bodega_lamerica` (`Id_bodega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_de_lamerica`
--

LOCK TABLES `inventario_de_lamerica` WRITE;
/*!40000 ALTER TABLE `inventario_de_lamerica` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_de_lamerica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos_en_proceso`
--

DROP TABLE IF EXISTS `pedidos_en_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_en_proceso` (
  `Id_pedido` int NOT NULL,
  `Id_usuario` int DEFAULT NULL,
  `Fecha_de_pedido` date DEFAULT NULL,
  `Estado_de_pedido` varchar(50) DEFAULT NULL,
  `Detalles_de_pedido` varchar(200) DEFAULT NULL,
  `Costo_pedido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Id_pedido`),
  KEY `clientes_pedidos` (`Id_usuario`),
  CONSTRAINT `clientes_pedidos` FOREIGN KEY (`Id_usuario`) REFERENCES `clientes_de_lamerica` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_en_proceso`
--

LOCK TABLES `pedidos_en_proceso` WRITE;
/*!40000 ALTER TABLE `pedidos_en_proceso` DISABLE KEYS */;
INSERT INTO `pedidos_en_proceso` VALUES (1,NULL,'2026-07-02','Pendiente','Pedido inicial de prueba',0.00);
/*!40000 ALTER TABLE `pedidos_en_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_lamerica`
--

DROP TABLE IF EXISTS `proveedores_lamerica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_lamerica` (
  `Id_proveedor` int NOT NULL,
  `Nombre_proveedor` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Ubicacion_proveedor` varchar(100) DEFAULT NULL,
  `Productos` int DEFAULT NULL,
  `Id_productos` int DEFAULT NULL,
  `Precio_productos` decimal(10,2) DEFAULT NULL,
  `Id_pedido` int DEFAULT NULL,
  PRIMARY KEY (`Id_proveedor`),
  KEY `proveedores_inventario` (`Id_productos`),
  KEY `proveedores_bodega` (`Id_pedido`),
  CONSTRAINT `proveedores_bodega` FOREIGN KEY (`Id_pedido`) REFERENCES `bodega_lamerica` (`Id_pedido`),
  CONSTRAINT `proveedores_inventario` FOREIGN KEY (`Id_productos`) REFERENCES `inventario_de_lamerica` (`Id_inventario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_lamerica`
--

LOCK TABLES `proveedores_lamerica` WRITE;
/*!40000 ALTER TABLE `proveedores_lamerica` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores_lamerica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_acceso`
--

DROP TABLE IF EXISTS `solicitudes_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_acceso` (
  `id_solicitud` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) NOT NULL,
  `documento_identidad` varchar(20) NOT NULL,
  `numero_empleado` varchar(20) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `mensaje` text,
  `fecha_solicitud` datetime DEFAULT CURRENT_TIMESTAMP,
  `atendida` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_solicitud`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_acceso`
--

LOCK TABLES `solicitudes_acceso` WRITE;
/*!40000 ALTER TABLE `solicitudes_acceso` DISABLE KEYS */;
INSERT INTO `solicitudes_acceso` VALUES (1,'adrian belisario','1090407508','123456789','adriancamilobp@ufps.edu.co','administrador','quiero que se cree mi usuario',NULL,2),(2,'adrian belisario','1090407508','123456789','adriancamilobp@ufps.edu.co','administrador','quiero que se cree mi usuario',NULL,2),(3,'diana margarita pacheco','60378193','00000002552','dikami1204@gmail.com','vendedor','1204',NULL,2),(4,'diana pacheco','6037819','55165165165','dikami1204@gmail.com','vendedor','1204',NULL,2),(5,'diana pacheco','6037819','55165165165','dikami1204@gmail.com','vendedor','1204',NULL,2),(6,'diana pacheco','6037819','55165165165','dikami1204@gmail.com','vendedor','1204',NULL,2),(7,'diana pacheco','60378193','565155151','dikami1204@gmail.com','ventas','1204',NULL,2),(8,'diana pacheco','6037819','55165165165','dikami1204@gmail.com','vendedor','1204',NULL,2),(9,'diana pacheco','60378193','5161651165','dikami1204@gmail.com','ventas','1204',NULL,2),(10,'diana pacheco','60378193','5161651165','dikami1204@gmail.com','ventas','1204',NULL,2),(11,'diana pacheco','60378193','5161651165','dikami1204@gmail.com','ventas','1204',NULL,2),(12,'diana pacheco','60378193','15161651','dikami1204@gmail.com','ventas','1204',NULL,1),(13,'juank','461651','211616','4ds4fDFS@gmakdmmdl','safkmdsf','1425',NULL,2),(14,'juankamk','8','87','adriancamilobp@ufps.edu.co','administrador','2007',NULL,2),(15,'juankamk','8','87','adriancamilobp@ufps.edu.co','administrador','2007',NULL,2),(16,'adrian belisario ','1090407508','01','abelisariopacheco@gmail.com','Dueño','2007',NULL,1),(17,'camilo ','465156','4651616','dikami1204@gmail.com','vendedor','2007',NULL,1),(18,'adrian belisario ','41615','156651','adrian@empresa.com','problema','acceso al sistema',NULL,2),(19,'paulo ','123456','1234','paulo@ejemplo.com','empleado','1234','2026-07-28 01:53:52',1),(20,'juan jose ','123456','123456','adrianbelisariosd@gmail.com','empleado','123456','2026-08-04 23:30:58',1);
/*!40000 ALTER TABLE `solicitudes_acceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_soporte`
--

DROP TABLE IF EXISTS `solicitudes_soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_soporte` (
  `id_solicitud` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `mensaje` text,
  `fecha_solicitud` datetime DEFAULT CURRENT_TIMESTAMP,
  `atendida` int DEFAULT NULL,
  PRIMARY KEY (`id_solicitud`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_soporte`
--

LOCK TABLES `solicitudes_soporte` WRITE;
/*!40000 ALTER TABLE `solicitudes_soporte` DISABLE KEYS */;
INSERT INTO `solicitudes_soporte` VALUES (1,'adrian belisario ','abelisariopacheco@gmail.com','inquietud','no me deja ingresar al sistema','2026-07-10 22:53:35',2),(2,'wwef','edwfdwe23432e@gmaail.com','problema','Documento: 786787\nN° Empleado: 87577\n\nefwfgreahgra','2026-07-10 22:53:35',2),(3,'dsdsv','ajinkas@dsfsd','inquietud','Documento: 755343\nN° Empleado: 534343\n\nasdasdas','2026-07-10 22:53:35',2),(4,'eargdfg','rega@24wef','queja','Documento: 3453543\nN° Empleado: 453453\n\nsgadfg','2026-07-10 22:53:35',2),(5,'adrian belisario ','abelisariopacheco@gmail.com','problema','el sistema no responde',NULL,1),(6,'adrian belisario ','abelisariopacheco@gmail.com','problema','sadasz',NULL,2),(7,'adrian belisario ','abelisariopacheco@gmail.com','problema','problema con el inventariop',NULL,1);
/*!40000 ALTER TABLE `solicitudes_soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_de_lamerica`
--

DROP TABLE IF EXISTS `ventas_de_lamerica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_de_lamerica` (
  `Id_venta` int NOT NULL,
  `Id_usuario` int DEFAULT NULL,
  `Id_pedido` int DEFAULT NULL,
  `Id_Bodega` int DEFAULT NULL,
  `Id_inventario` int DEFAULT NULL,
  `Costo_pedido` decimal(10,2) DEFAULT NULL,
  `Metodo_pago` varchar(100) DEFAULT NULL,
  `Id_pago` int DEFAULT NULL,
  PRIMARY KEY (`Id_venta`),
  KEY `pedidos_ventas` (`Id_pedido`),
  CONSTRAINT `pedidos_ventas` FOREIGN KEY (`Id_pedido`) REFERENCES `pedidos_en_proceso` (`Id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_de_lamerica`
--

LOCK TABLES `ventas_de_lamerica` WRITE;
/*!40000 ALTER TABLE `ventas_de_lamerica` DISABLE KEYS */;
/*!40000 ALTER TABLE `ventas_de_lamerica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-13 21:31:02
