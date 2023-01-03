-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: myweb
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add news',7,'add_news'),(26,'Can change news',7,'change_news'),(27,'Can delete news',7,'delete_news'),(28,'Can view news',7,'view_news'),(29,'Can add goods',8,'add_goods'),(30,'Can change goods',8,'change_goods'),(31,'Can delete goods',8,'delete_goods'),(32,'Can view goods',8,'view_goods'),(33,'Can add message',9,'add_message'),(34,'Can change message',9,'change_message'),(35,'Can delete message',9,'delete_message'),(36,'Can view message',9,'view_message'),(37,'Can add detail model',10,'add_detailmodel'),(38,'Can change detail model',10,'change_detailmodel'),(39,'Can delete detail model',10,'delete_detailmodel'),(40,'Can view detail model',10,'view_detailmodel'),(41,'Can add orders model',11,'add_ordersmodel'),(42,'Can change orders model',11,'change_ordersmodel'),(43,'Can delete orders model',11,'delete_ordersmodel'),(44,'Can view orders model',11,'view_ordersmodel'),(45,'Can add member',12,'add_member'),(46,'Can change member',12,'change_member'),(47,'Can delete member',12,'delete_member'),(48,'Can view member',12,'view_member');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$pegR3LcMFi9IyzAPDZ8Gjw$l/z3RxzPN5JmI/tThjTWNfpHzpmmM2B/n6Y9f1ZR+Ao=','2022-12-24 08:05:13.305295',1,'ruby','','','rr861218@gmail.com',1,1,'2022-12-24 08:04:26.159265');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detailmodel`
--

DROP TABLE IF EXISTS `cart_detailmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_detailmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dtotal` int(11) NOT NULL,
  `dorder_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_detailmodel_dorder_id_4a34f87f_fk_cart_ordersmodel_id` (`dorder_id`),
  CONSTRAINT `cart_detailmodel_dorder_id_4a34f87f_fk_cart_ordersmodel_id` FOREIGN KEY (`dorder_id`) REFERENCES `cart_ordersmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detailmodel`
--

LOCK TABLES `cart_detailmodel` WRITE;
/*!40000 ALTER TABLE `cart_detailmodel` DISABLE KEYS */;
INSERT INTO `cart_detailmodel` VALUES (9,'【寵物愛家】大方型青花紋貓咪瓦楞多功能貓抓板',600,5,3000,20),(10,'ALL IN ONE 法國香氛乾洗澡消臭抑菌噴霧【薰衣草花園】550mL 2+1',1300,1,1300,21),(11,'【寵物愛家】寵物前後背雙肩外出攜帶寵物用包',880,1,880,21),(12,'【寵物愛家】夏季狗狗貓咪解暑防水滿天星冰涼墊-L',900,1,900,22),(13,'ALL IN ONE 法國香氛乾洗澡消臭抑菌噴霧【薰衣草花園】550mL 2+1',1300,1,1300,24),(14,'ALL IN ONE 法國香氛乾洗澡消臭抑菌噴霧【薰衣草花園】550mL 2+1',1300,2,2600,25);
/*!40000 ALTER TABLE `cart_detailmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_ordersmodel`
--

DROP TABLE IF EXISTS `cart_ordersmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_ordersmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subtotal` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `grandtotal` int(11) NOT NULL,
  `customname` varchar(100) NOT NULL,
  `customemail` varchar(100) NOT NULL,
  `customphone` varchar(50) NOT NULL,
  `paytype` varchar(20) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `customaddress` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_ordersmodel`
--

LOCK TABLES `cart_ordersmodel` WRITE;
/*!40000 ALTER TABLE `cart_ordersmodel` DISABLE KEYS */;
INSERT INTO `cart_ordersmodel` VALUES (20,3000,100,3100,'王大明','123@test.com','0987654321','ATM轉帳','2023-01-02 10:30:38.656651','快樂莊園'),(21,2180,100,2280,'王大明','123@test.com','0987654321','信用卡','2023-01-02 11:21:25.348587','快樂莊園'),(22,900,100,1000,'王大明','123@test.com','0987654321','信用卡','2023-01-02 11:23:40.312486','快樂莊園'),(23,0,100,100,'王大明','123@test.com','0987654321','信用卡','2023-01-02 11:27:34.543290','快樂莊園'),(24,1300,100,1400,'王大明','123@test.com','0987654321','信用卡','2023-01-02 11:28:47.312710','快樂莊園'),(25,2600,100,2700,'王大明','123@test.com','0987654321','信用卡','2023-01-02 11:29:42.190725','快樂莊園');
/*!40000 ALTER TABLE `cart_ordersmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-01-02 10:22:43.633192','19','王大明',3,'',11,1),(2,'2023-01-02 10:22:43.635435','18','王大明',3,'',11,1),(3,'2023-01-02 10:22:43.636052','17','王大明',3,'',11,1),(4,'2023-01-02 10:22:43.638053','16','王大明',3,'',11,1),(5,'2023-01-02 10:22:43.640054','15','王大明',3,'',11,1),(6,'2023-01-02 10:22:43.642060','14','王大明',3,'',11,1),(7,'2023-01-02 10:22:43.646063','13','王大明',3,'',11,1),(8,'2023-01-02 10:22:43.647065','12','王大明',3,'',11,1),(9,'2023-01-02 10:22:43.648969','11','王大明',3,'',11,1),(10,'2023-01-02 10:22:43.650217','10','王大明',3,'',11,1),(11,'2023-01-02 10:22:43.651068','9','王大明',3,'',11,1),(12,'2023-01-02 10:22:43.652668','8','王大明',3,'',11,1),(13,'2023-01-02 10:22:43.653884','7','王大明',3,'',11,1),(14,'2023-01-02 10:22:43.655152','6','王大明',3,'',11,1),(15,'2023-01-02 10:22:43.656072','5','王大明',3,'',11,1),(16,'2023-01-02 10:22:43.658074','4','王大明',3,'',11,1),(17,'2023-01-02 10:22:43.659271','3','王大明',3,'',11,1),(18,'2023-01-02 10:22:43.660557','2','王大明',3,'',11,1),(19,'2023-01-02 10:22:43.661807','1','王大明',3,'',11,1),(20,'2023-01-02 10:22:52.929842','9','Message object (9)',3,'',9,1),(21,'2023-01-02 10:22:52.930842','8','Message object (8)',3,'',9,1),(22,'2023-01-02 10:22:52.932842','7','Message object (7)',3,'',9,1),(23,'2023-01-02 10:22:52.933842','6','Message object (6)',3,'',9,1),(24,'2023-01-02 10:22:52.935842','5','Message object (5)',3,'',9,1),(25,'2023-01-02 10:22:52.936842','4','Message object (4)',3,'',9,1),(26,'2023-01-02 10:22:52.937843','3','Message object (3)',3,'',9,1),(27,'2023-01-02 10:22:52.939843','2','Message object (2)',3,'',9,1),(28,'2023-01-02 10:22:52.940843','1','Message object (1)',3,'',9,1),(29,'2023-01-02 10:24:40.382942','1','Member object (1)',3,'',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'cart','detailmodel'),(11,'cart','ordersmodel'),(9,'contact','message'),(5,'contenttypes','contenttype'),(12,'member','member'),(7,'news','news'),(8,'product','goods'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-12-24 07:59:19.727473'),(2,'auth','0001_initial','2022-12-24 07:59:20.241591'),(3,'admin','0001_initial','2022-12-24 07:59:20.370521'),(4,'admin','0002_logentry_remove_auto_add','2022-12-24 07:59:20.380523'),(5,'admin','0003_logentry_add_action_flag_choices','2022-12-24 07:59:20.388525'),(6,'contenttypes','0002_remove_content_type_name','2022-12-24 07:59:20.467010'),(7,'auth','0002_alter_permission_name_max_length','2022-12-24 07:59:20.516644'),(8,'auth','0003_alter_user_email_max_length','2022-12-24 07:59:20.573160'),(9,'auth','0004_alter_user_username_opts','2022-12-24 07:59:20.583162'),(10,'auth','0005_alter_user_last_login_null','2022-12-24 07:59:20.623383'),(11,'auth','0006_require_contenttypes_0002','2022-12-24 07:59:20.626763'),(12,'auth','0007_alter_validators_add_error_messages','2022-12-24 07:59:20.632894'),(13,'auth','0008_alter_user_username_max_length','2022-12-24 07:59:20.688837'),(14,'auth','0009_alter_user_last_name_max_length','2022-12-24 07:59:20.737676'),(15,'auth','0010_alter_group_name_max_length','2022-12-24 07:59:20.785173'),(16,'auth','0011_update_proxy_permissions','2022-12-24 07:59:20.797175'),(17,'auth','0012_alter_user_first_name_max_length','2022-12-24 07:59:20.846222'),(18,'sessions','0001_initial','2022-12-24 07:59:20.874236'),(19,'news','0001_initial','2022-12-24 10:06:50.126771'),(20,'product','0001_initial','2022-12-31 07:58:15.162339'),(21,'contact','0001_initial','2022-12-31 12:30:42.503321'),(22,'cart','0001_initial','2023-01-02 06:39:47.289218'),(23,'member','0001_initial','2023-01-02 06:39:47.343826');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('lfhnnjpa7gqu40909nr0ots2hzki0hdh','.eJxVjssKwjAURP8l6xKSmz5MV-q-XyBSbpJbG-0DklQQ8d9toQvdzpwZzpu1uKS-XSKF1jtWM8my38ygfdC0Fe6O023mdp5S8IZvCN_byJvZ0XDe2b-DHmO_rvNCoAXXCSilIl0JAw616NAYCQYdaQIs8vJQFmCVUKByXaG1CFpKbTcriyENPiZWX64ZG18N-mETBnVMFNNqNq6Uj6fBP4nVKSz0-QIvkEkF:1pCJ0g:R5uQXuByYtf1F8VabWSSq4tzGTSvuSMgoDkkvXRTcRo','2023-01-16 11:29:42.195726');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `goods_url` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'寵愛物語-4.5kg《腸胃調理健康主食專用-貓咪專用主食》doter 貓飼料',605,'//cs-a.ecimg.tw/items/QFAW6FA900AL19H/000001_1635397550.jpg','//24h.pchome.com.tw/prod/QFAW6F-A900AL19H',0,'2022-12-31'),(2,'SINGEN 信元發育寶 天然低敏無穀高品質貓咪凍乾飼料｜添加蝦仁蟹味棒雞鴨牛肉極醇元食餉味舞食-1.5KG',968,'//cs-b.ecimg.tw/items/DEBV60A900B3XTO/000002_1671434636.jpg','//24h.pchome.com.tw/prod/DEBV60-A900B3XTO',0,'2022-12-31'),(3,'葛林菲 GREEN FISH 無穀麩低敏配方 貓咪功能性完全飼料貓飼料 7.5KG',3060,'//cs-c.ecimg.tw/items/DEBV60A900AB6YO/000002_1649821751.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AB6YO',0,'2022-12-31'),(4,'日式透明高腳貓咪狗狗碗斜口雙碗 護頸椎喝水飼料碗 狗狗貓咪通用',489,'//cs-e.ecimg.tw/items/DEAK9KA900F4DJ6/000002_1653981158.jpg','//24h.pchome.com.tw/prod/DEAK9K-A900F4DJ6',0,'2022-12-31'),(5,'【2包組】寵愛物語-1.5kg《腸胃調理健康主食專用-貓咪專用主食》doter 貓飼料',654,'//cs-f.ecimg.tw/items/QFAW6FA900AL16P/000001_1635397299.jpg','//24h.pchome.com.tw/prod/QFAW6F-A900AL16P',0,'2022-12-31'),(6,'壁掛護頸寵物碗 高度自由調節 乾濕兩用貓狗碗 貓咪碗 狗狗碗 飼料碗',299,'//cs-a.ecimg.tw/items/DEAK9KA900F16DH/000002_1652415017.jpg','//24h.pchome.com.tw/prod/DEAK9K-A900F16DH',0,'2022-12-31'),(7,'TUNDRA 渴達-貓咪自然飲食機能配方（鮭魚-藍河配方）6.8kg (貓糧、貓飼料)',2199,'//cs-b.ecimg.tw/items/DEBV60A900F4MAB/000002_1654068560.jpg','//24h.pchome.com.tw/prod/DEBV60-A900F4MAB',0,'2022-12-31'),(8,'日式ins風圓形寵物碗 汪星人喵星人狗狗貓咪陶瓷木碗架 簡約時尚飼料碗飲水碗',649,'//cs-c.ecimg.tw/items/DEAK9KA900FDP0R/000002_1660112533.jpg','//24h.pchome.com.tw/prod/DEAK9K-A900FDP0R',0,'2022-12-31'),(9,'【維特嚴選】成貓適用-室內貓配方機能天然糧4LB',780,'//cs-d.ecimg.tw/items/DEBV60A900BL2NK/000001_1626749471.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BL2NK',0,'2022-12-31'),(10,'go! 雞肉蔬果 16磅 貓咪皮毛保健 營養天然糧',2967,'//cs-e.ecimg.tw/items/DEBV57A900C3DXF/000001_1639561524.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DXF',0,'2022-12-31'),(11,'專利款設計 一體式 逗貓棒項圈 項圈逗貓棒',168,'//cs-f.ecimg.tw/items/DEAK8KA900BA4MX/000001_1626062718.jpg','//24h.pchome.com.tw/prod/DEAK8K-A900BA4MX',0,'2022-12-31'),(12,'go! 全方位貓咪天然糧 16磅 皮毛保健/高肉量/低致敏系列',3382,'//cs-a.ecimg.tw/items/DEBV57A900C3DM9/000001_1639559272.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DM9',0,'2022-12-31'),(13,'now 成貓鮮肉配方16磅 貓咪無穀天然糧',4365,'//cs-b.ecimg.tw/items/DEBV5BA900D0L8N/000001_1641971413.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0L8N',0,'2022-12-31'),(14,'自動智能餵食器 APP半透明寵物投食機 定時定量喂量自助器 貓量機',2016,'//cs-c.ecimg.tw/items/DEAKQCA900FE2B2/000002_1662617122.jpg','//24h.pchome.com.tw/prod/DEAKQC-A900FE2B2',0,'2022-12-31'),(15,'【奔放】全齡貓適用-去骨鮭魚甘薯配方天然糧3LBS',580,'//cs-d.ecimg.tw/items/DEBV60A900BL2Z0/000001_1626753060.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BL2Z0',0,'2022-12-31'),(16,'go! 全方位貓咪天然糧 300克 3件組 口味任選',747,'//cs-e.ecimg.tw/items/DEBV57A900C3DLC/000001_1639558970.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DLC',0,'2022-12-31'),(17,'日清Carat克拉毛玉綜合貓糧2.7kg',649,'//cs-f.ecimg.tw/items/DEBV60A900AO066/000001_1621592223.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AO066',0,'2022-12-31'),(18,'寵物斜口高腳飼料碗【BA001】',310,'//cs-a.ecimg.tw/items/DEAK9KA900FFQ9Y/000002_1661506689.jpg','//24h.pchome.com.tw/prod/DEAK9K-A900FFQ9Y',0,'2022-12-31'),(19,'go! 全方位貓咪天然糧 3磅 皮毛保健/高肉量/低致敏系列',1120,'//cs-b.ecimg.tw/items/DEBV57A900F3471/000002_1653529685.jpg','//24h.pchome.com.tw/prod/DEBV57-A900F3471',0,'2022-12-31'),(20,'go! 四種肉 16磅 貓咪高肉量系列 無穀天然糧',3382,'//cs-c.ecimg.tw/items/DEBV57A900C3DOS/000002_1667277078.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DOS',0,'2022-12-31'),(21,'WELLNESS寵物健康-Core無榖室內貓低敏低卡健康11LB',2384,'//cs-d.ecimg.tw/items/DEBVBCA900874CV/000002_1660132613.jpg','//24h.pchome.com.tw/prod/DEBVBC-A900874CV',0,'2022-12-31'),(22,'go! 雞肉蔬果 3磅 貓咪皮毛保健 營養天然糧',966,'//cs-e.ecimg.tw/items/DEBV57A900C3DWZ/000001_1639561366.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DWZ',0,'2022-12-31'),(23,'go! 四種肉 3磅 貓咪高肉量系列 無穀天然糧',1120,'//cs-f.ecimg.tw/items/DEBV57A900C3DNG/000001_1641455722.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DNG',0,'2022-12-31'),(24,'now 老貓/減肥貓鮮肉配方3磅 貓咪無穀天然糧',1470,'//cs-a.ecimg.tw/items/DEBV5BA900D0LI8/000001_1641971513.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0LI8',0,'2022-12-31'),(25,'go! 全方位貓咪天然糧 8磅 皮毛保健/高肉量/低致敏系列',1971,'//cs-b.ecimg.tw/items/DEBV57A900F33PE/000002_1663121211.jpg','//24h.pchome.com.tw/prod/DEBV57-A900F33PE',0,'2022-12-31'),(26,'【奔放】全齡貓適用-去骨雞肉莓果配方無穀天然糧3LBS',810,'//cs-c.ecimg.tw/items/DEBV60A900BL2VQ/000001_1626752274.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BL2VQ',0,'2022-12-31'),(27,'日清-5Dish懷石極品5味幸福貓糧220g',289,'//cs-d.ecimg.tw/items/DEBV60A900AFM28/000001_1621589103.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AFM28',0,'2022-12-31'),(28,'日清-5Dish懷石極品5味樂趣貓糧220g',289,'//cs-e.ecimg.tw/items/DEBV60A900AFM26/000001_1623136848.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AFM26',0,'2022-12-31'),(29,'Kit Cat 挑嘴貓獨享(經典32)1.2kg',390,'//cs-f.ecimg.tw/items/DXBP0VA900DW8C4/000001_1642757879.jpg','//24h.pchome.com.tw/prod/DXBP0V-A900DW8C4',0,'2022-12-31'),(30,'NUTRAM 紐頓 無穀全能系列 T24 潔牙 鮭魚 貓糧-5.4kg X 1包',2790,'//cs-a.ecimg.tw/items/DEBV5TA900AZ8NO/000001_1604650765.jpg','//24h.pchome.com.tw/prod/DEBV5T-A900AZ8NO',0,'2022-12-31'),(31,'now 成貓鮮魚配方8磅 貓咪無穀天然糧',2540,'//cs-b.ecimg.tw/items/DEBV5BA900D0NSH/000001_1641972285.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0NSH',0,'2022-12-31'),(32,'go! 淡水鱒魚 8磅 貓咪高肉量系列 無穀天然糧',1971,'//cs-c.ecimg.tw/items/DEBV57A900C3DRV/000001_1639560487.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DRV',0,'2022-12-31'),(33,'K9 Feline 貓咪凍乾生食餐 320g 口味任選',1515,'//cs-d.ecimg.tw/items/DEBVETA900C1AUH/000002_1669016024.jpg','//24h.pchome.com.tw/prod/DEBVET-A900C1AUH',0,'2022-12-31'),(34,'now 老貓/減肥貓鮮肉配方8磅 貓咪無穀天然糧',2540,'//cs-e.ecimg.tw/items/DEBV5BA900D0MX6/000001_1641972002.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0MX6',0,'2022-12-31'),(35,'【寵一點】6L容量寵物自動餵食器    狗狗貓咪自動投食器',3875,'//cs-f.ecimg.tw/items/DEAKQCA900F8OM3/000002_1656579938.jpg','//24h.pchome.com.tw/prod/DEAKQC-A900F8OM3',0,'2022-12-31'),(36,'【奔放】全齡犬適用-去骨雞肉糙米配方天然糧3.5LBS',650,'//cs-a.ecimg.tw/items/DEBV7GA900BL2UJ/000001_1626751719.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BL2UJ',0,'2022-12-31'),(37,'【PURROOM】小雞陶瓷食盆 平口、斜口 兩款可選',590,'//cs-b.ecimg.tw/items/DEAK9KA900BX6P3/000001_1635323632.jpg','//24h.pchome.com.tw/prod/DEAK9K-A900BX6P3',0,'2022-12-31'),(38,'日清-5Dish懷石極品5味盛宴貓糧220g',289,'//cs-c.ecimg.tw/items/DEBV60A900AFM2I/000001_1621589238.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AFM2I',0,'2022-12-31'),(39,'【奔放】全齡犬適用-去骨鴨肉蔬菜鹿肉配方無穀天然糧3LBS',780,'//cs-d.ecimg.tw/items/DEBV7GA900BL2UD/000001_1626751593.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BL2UD',0,'2022-12-31'),(40,'【奔放】全齡貓適用-去骨鮭魚鷹嘴豆配方無穀天然糧3LBS',810,'//cs-e.ecimg.tw/items/DEBV60A900BL2XA/000001_1626752622.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BL2XA',0,'2022-12-31'),(41,'K9 Feline 貓咪凍乾生食餐 100g 口味任選',725,'//cs-f.ecimg.tw/items/DEBVETA900C0VK2/000001_1637723635.jpg','//24h.pchome.com.tw/prod/DEBVET-A900C0VK2',0,'2022-12-31'),(42,'go! 四種肉 8磅 貓咪高肉量系列 無穀天然糧',1971,'//cs-a.ecimg.tw/items/DEBV57A900C3DO6/000002_1652410958.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DO6',0,'2022-12-31'),(43,'【奔放】全齡貓適用-去骨雞肉糙米配方天然糧3LBS',580,'//cs-b.ecimg.tw/items/DEBV60A900BL2YU/000001_1626752870.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BL2YU',0,'2022-12-31'),(44,'Kit Cat 挑嘴貓獨享(鮭魚乾配方)1.2kg',390,'//cs-c.ecimg.tw/items/DXBP0VA900DW8H9/000001_1642758664.jpg','//24h.pchome.com.tw/prod/DXBP0V-A900DW8H9',0,'2022-12-31'),(45,'日清懷石綜合貓糧-燒津鮪魚800g',560,'//cs-d.ecimg.tw/items/DEBV60A900AO071/000001_1632296767.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AO071',0,'2022-12-31'),(46,'now 幼貓/懷孕貓鮮肉配方3磅 貓咪無穀天然糧',1470,'//cs-e.ecimg.tw/items/DEBV5BA900D0JY5/000001_1641970978.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0JY5',0,'2022-12-31'),(47,'K9 Feline 貓咪凍乾生食餐 100g 3件組 口味任選',1450,'//cs-f.ecimg.tw/items/DEBVETA900C0VIH/000001_1638518844.jpg','//24h.pchome.com.tw/prod/DEBVET-A900C0VIH',0,'2022-12-31'),(48,'go! 野生鮭魚 8磅 貓咪皮毛保健 無穀天然糧',1971,'//cs-a.ecimg.tw/items/DEBV57A900C3DW1/000001_1639561152.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DW1',0,'2022-12-31'),(49,'go! 能量羊 3磅 貓咪高肉量系列 無穀天然糧',1120,'//cs-b.ecimg.tw/items/DEBV57A900C3DP0/000001_1641521331.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DP0',0,'2022-12-31'),(50,'now 鮮肉/鮮魚配方300克 三件組 貓咪無穀天然糧 口味任選',900,'//cs-c.ecimg.tw/items/DEBV5BA900D0IX3/000001_1641970658.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0IX3',0,'2022-12-31'),(51,'【波菲特】貓用無穀主食罐-鹿肉雞肉配方165G*3罐組',330,'//cs-d.ecimg.tw/items/DEBVKYA900F1KYJ/000002_1652686975.jpg','//24h.pchome.com.tw/prod/DEBVKY-A900F1KYJ',0,'2022-12-31'),(52,'【維特嚴選】成貓適用-腸胃＆皮膚保健配方機能天然糧4LB',780,'//cs-e.ecimg.tw/items/DEBV60A900BL2NV/000001_1626749636.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BL2NV',0,'2022-12-31'),(53,'JIAGO 斜口自動續水寵物飼料碗',339,'//cs-f.ecimg.tw/items/DEAK9KA900FRK1E/000002_1668740906.jpg','//24h.pchome.com.tw/prod/DEAK9K-A900FRK1E',0,'2022-12-31'),(54,'【維特嚴選】成貓適用-腸胃保健＆體重控制配方機能天然糧4LB',780,'//cs-a.ecimg.tw/items/DEBV60A900BL2OO/000001_1626749831.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BL2OO',0,'2022-12-31'),(55,'go! 淡水鱒魚 3磅 貓咪高肉量系列 無穀天然糧',1120,'//cs-b.ecimg.tw/items/DEBV57A900C3DQM/000001_1639560367.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DQM',0,'2022-12-31'),(56,'加拿大開放農場 全齡貓 活力亮毛食譜【季節白魚】4LB',1523,'//cs-c.ecimg.tw/items/DEBV60A900BB2NN/000001_1620119040.jpg','//24h.pchome.com.tw/prod/DEBV60-A900BB2NN',0,'2022-12-31'),(57,'【GHR健康主義貓用主食罐】貓用主食罐-雞肉蔓越莓配方175G X3罐組',300,'//cs-d.ecimg.tw/items/DEBVKYA900FDFJF/000002_1659944282.jpg','//24h.pchome.com.tw/prod/DEBVKY-A900FDFJF',0,'2022-12-31'),(58,'【奔放】高齡犬適用-去骨雞肉甘薯莓果配方無穀天然糧3LBS',780,'//cs-e.ecimg.tw/items/DEBV7GA900BL2V9/000001_1626752000.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BL2V9',0,'2022-12-31'),(59,'go! 海洋鮭鱈 3磅 貓咪高肉量系列 無穀天然糧',1120,'//cs-f.ecimg.tw/items/DEBV57A900C3DQ4/000001_1639560050.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DQ4',0,'2022-12-31'),(60,'go! 低致敏鴨肉 8磅 貓咪無穀天然糧',1971,'//cs-a.ecimg.tw/items/DEBV57A900C3DTW/000001_1639560793.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DTW',0,'2022-12-31'),(61,'【維特嚴選】成犬適用-關節保健配方機能天然糧8.5LB',1080,'//cs-b.ecimg.tw/items/DEBV7GA900BL2RF/000001_1626750335.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BL2RF',0,'2022-12-31'),(62,'【波菲特】貓用無穀主食罐-安心鶉配方165G*3罐組',330,'//cs-c.ecimg.tw/items/DEBVKYA900F1KWD/000002_1652686326.jpg','//24h.pchome.com.tw/prod/DEBVKY-A900F1KWD',0,'2022-12-31'),(63,'【奔放】幼犬適用-去骨雞肉配方無穀天然糧3LBS',780,'//cs-d.ecimg.tw/items/DEBV7GA900BL2VD/000001_1626752117.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BL2VD',0,'2022-12-31'),(64,'【波菲特】貓用無穀主食罐-牛肉鵪鶉配方165G*3罐組',330,'//cs-f.ecimg.tw/items/DEBVKYA900F1L8S/000002_1652690312.jpg','//24h.pchome.com.tw/prod/DEBVKY-A900F1L8S',0,'2022-12-31'),(65,'go! 野生鮭魚 3磅 貓咪皮毛保健 無穀天然糧',1120,'//cs-a.ecimg.tw/items/DEBV57A900C3DUN/000001_1639561032.jpg','//24h.pchome.com.tw/prod/DEBV57-A900C3DUN',0,'2022-12-31'),(66,'日清懷石綜合貓糧-瀨戶內海之味800g',560,'//cs-b.ecimg.tw/items/DEBV60A900AO09J/000001_1632296948.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AO09J',0,'2022-12-31'),(67,'開放農場 OPEN FARM 加拿大無穀天然貓糧 田野嫩雞與火雞 4磅',1699,'//cs-c.ecimg.tw/items/DEBVIVA900FGLWP/000002_1662363871.jpg','//24h.pchome.com.tw/prod/DEBVIV-A900FGLWP',0,'2022-12-31'),(68,'go! 全方位貓咪天然糧 300克 口味任選',450,'//cs-d.ecimg.tw/items/DXBG3TB900C3CG3/000001_1639549231.jpg','//24h.pchome.com.tw/prod/DXBG3T-B900C3CG3',0,'2022-12-31'),(69,'【波菲特】貓用無榖主食罐-雞肉魚肉配方165G*3罐',330,'//cs-e.ecimg.tw/items/DEBVKYA900F1KTP/000002_1652685532.jpg','//24h.pchome.com.tw/prod/DEBVKY-A900F1KTP',0,'2022-12-31'),(70,'日清克拉綜合貓料3公斤',770,'//cs-f.ecimg.tw/items/DEBV60A900AJTDL/000001_1621592078.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AJTDL',0,'2022-12-31'),(71,'【GHR健康主義貓用主食罐】貓用主食罐-鹿肉雞肉配方 175G X3罐組',300,'//cs-a.ecimg.tw/items/DEBVKYA900FDGCB/000002_1659949069.jpg','//24h.pchome.com.tw/prod/DEBVKY-A900FDGCB',0,'2022-12-31'),(72,'K9 Feline 貓咪凍乾生食餐 320g 3件組 口味各一',3950,'//cs-b.ecimg.tw/items/DEBVETA900C0VFZ/000001_1637722778.jpg','//24h.pchome.com.tw/prod/DEBVET-A900C0VFZ',0,'2022-12-31'),(73,'now 成貓鮮肉配方8磅 貓咪無穀天然糧',2540,'//cs-c.ecimg.tw/items/DEBV5BA900D0L00/000001_1641971338.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0L00',0,'2022-12-31'),(74,'【波菲特】貓用無榖主食罐-雞肉蔓越莓配方165G*3罐組',330,'//cs-d.ecimg.tw/items/DEBVKYA900F1KVR/000002_1652685915.jpg','//24h.pchome.com.tw/prod/DEBVKY-A900F1KVR',0,'2022-12-31'),(75,'now 幼貓/懷孕貓鮮肉配方8磅 貓咪無穀天然糧',2540,'//cs-e.ecimg.tw/items/DEBV5BA900D0KCZ/000001_1641971113.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0KCZ',0,'2022-12-31'),(76,'now 成貓鮮魚配方16磅 貓咪無穀天然糧',4365,'//cs-f.ecimg.tw/items/DEBV5BA900D0O25/000001_1641972436.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900D0O25',0,'2022-12-31'),(77,'波菲特貓用主食罐(無加膠)【魚肉．蔓越莓配方】',77,'//cs-a.ecimg.tw/items/DEBV7VA9008QMNK/000001_1630653678.jpg','//24h.pchome.com.tw/prod/DEBV7V-A9008QMNK',0,'2022-12-31'),(78,'now 貓咪鮮肉/鮮魚配方8磅 貓咪無穀天然糧',2540,'//cs-b.ecimg.tw/items/DEBV5BA900E4SHT/000002_1645693816.jpg','//24h.pchome.com.tw/prod/DEBV5B-A900E4SHT',0,'2022-12-31'),(79,'Orijen極緻 幼犬 / 成犬 / 室內犬/ 高齡犬 鮮雞配方-2KG X 1包(犬飼料/狗糧)',1399,'//cs-a.ecimg.tw/items/DXBG6PA900F4CNR/000002_1653973717.jpg','//24h.pchome.com.tw/prod/DXBG6P-A900F4CNR',0,'2022-12-31'),(80,'Orijen極緻 幼犬 / 成犬 / 室內犬/ 高齡犬 鮮雞配方-6KG X 1包(犬飼料/狗糧)',2690,'//cs-b.ecimg.tw/items/DXBG6PA900F4E5V/000002_1653984687.jpg','//24h.pchome.com.tw/prod/DXBG6P-A900F4E5V',0,'2022-12-31'),(81,'ZIWI巔峰 經典狗飼料 1kg 風乾生食 口味任選',2350,'//cs-c.ecimg.tw/items/DEBV6MA900BY6DL/000001_1639379970.jpg','//24h.pchome.com.tw/prod/DEBV6M-A900BY6DL',0,'2022-12-31'),(82,'【Balance 博朗氏】挑嘴犬1.8kg*10包雞肉牛肉起司狗糧 狗飼料',1800,'//cs-d.ecimg.tw/items/DEBV7GA900B5EFR/000001_1613616833.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B5EFR',0,'2022-12-31'),(83,'ZIWI巔峰 超能狗飼料 900g 風乾生食 口味任選',2165,'//cs-e.ecimg.tw/items/DEBV6MA900BY0BU/000001_1635913970.jpg','//24h.pchome.com.tw/prod/DEBV6M-A900BY0BU',0,'2022-12-31'),(84,'【Balance 博朗氏】成齡犬1.8kg*10包羊肉鮭魚卵磷脂狗糧 狗飼料',1800,'//cs-f.ecimg.tw/items/DEBV7GA900B5EBQ/000001_1613614579.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B5EBQ',0,'2022-12-31'),(85,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬深海魚肉 / 狗飼料-大顆粒-25lb',2990,'//cs-a.ecimg.tw/items/QFAW49A9008QHIY/000001_1516760908.jpg','//24h.pchome.com.tw/prod/QFAW49-A9008QHIY',0,'2022-12-31'),(86,'陪心寵糧 NU4PET 無穀低碳犬糧 全犬種關節保健 6KG  羊肉鮮蔬口味 皮毛調理 狗飼料',2510,'//cs-b.ecimg.tw/items/DEBVGOA900BWBHT/000001_1634717282.jpg','//24h.pchome.com.tw/prod/DEBVGO-A900BWBHT',0,'2022-12-31'),(87,'美國 ORGANIX 歐奇斯95%有機幼犬飼料 10LB(狗糧)',2284,'//cs-c.ecimg.tw/items/DEBV7CA900B4QCL/000002_1653625006.jpg','//24h.pchome.com.tw/prod/DEBV7C-A900B4QCL',0,'2022-12-31'),(88,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬深海魚肉 / 狗飼料-大顆粒-12.5lb',1999,'//cs-d.ecimg.tw/items/QFAW49A90080ZF6/000001_1491816048.jpg','//24h.pchome.com.tw/prod/QFAW49-A90080ZF6',0,'2022-12-31'),(89,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》高齡/減重犬 / 狗飼料-小顆粒-12.5lb',1999,'//cs-e.ecimg.tw/items/QFAW49A90081359/000001_1491893462.jpg','//24h.pchome.com.tw/prod/QFAW49-A90081359',0,'2022-12-31'),(90,'葛林菲 GREEN FISH 無穀麩低敏配方 成犬功能性完全飼料 小顆粒狗飼料 7.5KG',2112,'//cs-f.ecimg.tw/items/DEBV7GA900AB6X4/000002_1651211173.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900AB6X4',0,'2022-12-31'),(91,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬羊肉 / 狗飼料-大顆粒-25lb',2990,'//cs-a.ecimg.tw/items/QFAW49A9008QHJC/000001_1516760793.jpg','//24h.pchome.com.tw/prod/QFAW49-A9008QHJC',0,'2022-12-31'),(92,'【Balance 博朗氏】幼母犬1.8kg*10包牛肉海魚馬鈴薯狗糧 狗飼料',1800,'//cs-b.ecimg.tw/items/DEBV7GA900B5EA4/000001_1613612842.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B5EA4',0,'2022-12-31'),(93,'[送贈品] 優格 TOMA-PRO 親親食譜 成犬 敏感腸胃低脂配方 14LB (6.3KG) 無穀 低脂 狗飼料',2500,'//cs-c.ecimg.tw/items/DEBV73A900B1KUJ/000001_1607910535.jpg','//24h.pchome.com.tw/prod/DEBV73-A900B1KUJ',0,'2022-12-31'),(94,'[送贈品] north paw 野牧鮮食 無穀狗飼料 2.72KG 成犬/幼犬/羊肉地瓜 精細研磨 真空 狗糧',1651,'//cs-d.ecimg.tw/items/QFAW3QA900AO1C6/000001_1589878206.jpg','//24h.pchome.com.tw/prod/QFAW3Q-A900AO1C6',0,'2022-12-31'),(95,'加拿大楓沛-25/30lb《狗配方乾糧-多種配方可選罐》狗飼料 Canadian Naturals',2002,'//cs-e.ecimg.tw/items/QFAW3QA900AEG0E/000002_1655880976.jpg','//24h.pchome.com.tw/prod/QFAW3Q-A900AEG0E',0,'2022-12-31'),(96,'送贈品》優格TOMA-PRO 天然零榖 15LB 全齡犬 無穀 狗飼料 羊肉 鮭魚 5種魚 雞肉 天然糧',2500,'//cs-f.ecimg.tw/items/QFAW3KA900AAC07/000001_1569919651.jpg','//24h.pchome.com.tw/prod/QFAW3K-A900AAC07',0,'2022-12-31'),(97,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬雞肉 / 狗飼料-大顆粒-12.5lb',1999,'//cs-a.ecimg.tw/items/QFAW49A90080U64/000001_1491644979.jpg','//24h.pchome.com.tw/prod/QFAW49-A90080U64',0,'2022-12-31'),(98,'送贈品》優格TOMA-PRO 全齡犬 7kg 經典寵物食譜 狗飼料 羊肉 雞肉 米 天然糧 藜麥',2278,'//cs-b.ecimg.tw/items/QFAW3KA900AAC34/000001_1569920649.jpg','//24h.pchome.com.tw/prod/QFAW3K-A900AAC34',0,'2022-12-31'),(99,'送贈品 耐吉斯《超級無穀系列》7.5kg 幼犬/成犬/老犬 羊肉/火雞肉 無麩質 低敏 狗飼料',2496,'//cs-c.ecimg.tw/items/QFAW3MA900A85OB/000001_1566985892.jpg','//24h.pchome.com.tw/prod/QFAW3M-A900A85OB',0,'2022-12-31'),(100,'送贈品 嘿囉 HALO 犬乾糧 4LB 全鮮肉 幼犬 小型犬 成犬 無穀 狗飼料 雞肉 高消化力',1421,'//cs-d.ecimg.tw/items/QFAWB1A900AARQ1/000001_1570441323.jpg','//24h.pchome.com.tw/prod/QFAWB1-A900AARQ1',0,'2022-12-31'),(101,'UDOG全齡犬元氣美膚照護配方-草原盛宴(牛肉+羊肉) 15Kg 80%動物性蛋白與油脂 (白包裝)',1422,'//cs-e.ecimg.tw/items/DEBV7GA900BXQP4/000002_1662100172.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BXQP4',0,'2022-12-31'),(102,'【2入組】BLACKWOOD 柏萊富-功能性全齡 滋補養生配方(鯰魚+珍珠麥) 5磅/2.2KG',1588,'//cs-f.ecimg.tw/items/DEBV63A900ESCZS/000002_1648724787.jpg','//24h.pchome.com.tw/prod/DEBV63-A900ESCZS',0,'2022-12-31'),(103,'TOMA-PRO 優格-成犬 雞肉+米  13.6kg',1899,'//cs-a.ecimg.tw/items/DEBV73A900AXRAT/000002_1668765011.jpg','//24h.pchome.com.tw/prod/DEBV73-A900AXRAT',0,'2022-12-31'),(104,'耐吉斯-超級無穀  成犬 羊肉 (大顆粒) 15kg',2099,'//cs-b.ecimg.tw/items/DEBV72A900AXQ9U/000002_1670208047.jpg','//24h.pchome.com.tw/prod/DEBV72-A900AXQ9U',0,'2022-12-31'),(105,'TOMA-PRO 優格-成犬 羊肉+米(小顆粒) 13.6kg',1899,'//cs-c.ecimg.tw/items/DEBV73A900AXRCN/000002_1672020527.jpg','//24h.pchome.com.tw/prod/DEBV73-A900AXRCN',0,'2022-12-31'),(106,'【Nutram紐頓】S9 均衡健康系列-羊肉+南瓜成犬11.4KG',2599,'//cs-d.ecimg.tw/items/DEBV7DA900B9537/000001_1618468086.jpg','//24h.pchome.com.tw/prod/DEBV7D-A900B9537',0,'2022-12-31'),(107,'ANF 愛恩富 活力天然澳洲羊犬飼料-7.2kg*1包',1800,'//cs-e.ecimg.tw/items/DEBV78A900B5467/000001_1612586114.jpg','//24h.pchome.com.tw/prod/DEBV78-A900B5467',0,'2022-12-31'),(108,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬羊肉 / 狗飼料-小顆粒-12.5lb',1999,'//cs-f.ecimg.tw/items/QFAW49A900812N8/000001_1491887571.jpg','//24h.pchome.com.tw/prod/QFAW49-A900812N8',0,'2022-12-31'),(109,'多納 狗飼料 健康犬均衡營養配方15kg牛肉口味',499,'//cs-a.ecimg.tw/items/DEBV7GA900B8RD7/000002_1663746575.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B8RD7',0,'2022-12-31'),(110,'樂倍 狗飼料 黑酵母無榖保健糧熟齡犬5kg機能護理抗敏配方',1270,'//cs-b.ecimg.tw/items/DEBV7GA900B3513/000001_1610090562.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B3513',0,'2022-12-31'),(111,'犬料理 狗飼料 綜合營養15KG 雞肉口味',530,'//cs-c.ecimg.tw/items/DEBV7GA900B32G7/000001_1618984293.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B32G7',0,'2022-12-31'),(112,'SINGEN 信元發育寶 加強機能顆粒PLUS天然低敏無穀高品質鴨鮪魚肉成狗飼料大地菁華蔚藍海洋G+ 1.5KG',748,'//cs-d.ecimg.tw/items/DXBG3IA900BE3FE/000001_1638783034.jpg','//24h.pchome.com.tw/prod/DXBG3I-A900BE3FE',0,'2022-12-31'),(113,'BENEFIT 斑尼菲-L.I.D. 犬糧系列 6kg (狗糧、狗飼料)',816,'//cs-e.ecimg.tw/items/DXBG57A900F4CQU/000002_1653974455.jpg','//24h.pchome.com.tw/prod/DXBG57-A900F4CQU',0,'2022-12-31'),(114,'樂倍 狗飼料 黑酵母無穀保健糧成齡犬5kg體質調理抗敏配方',1270,'//cs-f.ecimg.tw/items/DEBV7GA900B3503/000001_1610090322.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B3503',0,'2022-12-31'),(115,'樂倍 狗飼料 黑酵母無穀保健糧挑嘴犬1.5kg高適口性抗敏配方',450,'//cs-a.ecimg.tw/items/DEBV7GA900B34VD/000001_1610088892.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B34VD',0,'2022-12-31'),(116,'【Balance 博朗氏】成齡犬1.8kg*6包羊肉鮭魚卵磷脂狗糧 狗飼料',1115,'//cs-b.ecimg.tw/items/DEBV7GA900B5EBI/000001_1613613998.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B5EBI',0,'2022-12-31'),(117,'樂倍 狗飼料 黑酵母無榖保健糧熟齡犬1.5kg機能護理抗敏配方',450,'//cs-c.ecimg.tw/items/DEBV7GA900B34SA/000001_1610087417.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B34SA',0,'2022-12-31'),(118,'大地恩典 狗飼料 全齡犬四種肉類40lb牛肉羊肉雞肉魚肉',684,'//cs-d.ecimg.tw/items/DEBV7GA900B34HY/000001_1610084518.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B34HY',0,'2022-12-31'),(119,'【Balance 博朗氏】挑嘴犬1.8kg*6包雞肉牛肉起司狗糧 狗飼料',1115,'//cs-e.ecimg.tw/items/DEBV7GA900B5EFE/000001_1613616419.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B5EFE',0,'2022-12-31'),(120,'多納 狗飼料 低敏犬低敏亮麗配方2kg*6包羊肉深海魚',850,'//cs-f.ecimg.tw/items/DEBV7GA900B3445/000002_1656901208.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B3445',0,'2022-12-31'),(121,'TATA 火雞肉紅藜全犬糧 16LB 狗飼料 紅藜麥 零麩質 高含肉量',3803,'//cs-a.ecimg.tw/items/DEBV7GA900B7MUB/000001_1616641203.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B7MUB',0,'2022-12-31'),(122,'美味食客-鮮嫩牛肉狗飼料(15kg)',877,'//cs-b.ecimg.tw/items/DEBV7GA900BIUIK/000002_1649036597.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BIUIK',0,'2022-12-31'),(123,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》高齡/減重犬 / 狗飼料-小顆粒-5lbs',1080,'//cs-c.ecimg.tw/items/QFAW49A9008136K/000001_1491893537.jpg','//24h.pchome.com.tw/prod/QFAW49-A9008136K',0,'2022-12-31'),(124,'『送贈品』KAROKO 渴樂果貴賓成犬/貴賓狗增艷亮毛配方飼料 1.2kg 狗餐',683,'//cs-d.ecimg.tw/items/QFAW3QA9009ZFNX/000001_1556775973.jpg','//24h.pchome.com.tw/prod/QFAW3Q-A9009ZFNX',0,'2022-12-31'),(125,'[送贈品] north paw 野牧鮮食 無穀狗飼料 1KG 成犬/幼犬 精細研磨 狗糧',911,'//cs-e.ecimg.tw/items/DEBV7GA900AZE0K/000001_1604915479.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900AZE0K',0,'2022-12-31'),(126,'送贈品 嘿囉 HALO 犬乾糧 2LB 全鮮肉 無穀 狗飼料 雞肉 高消化力',778,'//cs-f.ecimg.tw/items/DEBV8GA900AXIWQ/000001_1602840534.jpg','//24h.pchome.com.tw/prod/DEBV8G-A900AXIWQ',0,'2022-12-31'),(127,'TATA 鮭魚紅藜全犬糧 4LB 狗飼料 紅藜麥 零麩質 高含肉量',1210,'//cs-a.ecimg.tw/items/DEBV7GA900BUN2U/000001_1633585823.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BUN2U',0,'2022-12-31'),(128,'多納 狗飼料 體控犬優蛋白低卡配方15kg牛肉鱈魚',599,'//cs-b.ecimg.tw/items/DEBV7GA900B33PZ/000001_1610071129.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B33PZ',0,'2022-12-31'),(129,'葛林菲 GREEN FISH 關節養護配方 成犬養生飼料狗飼料 1.5KG',730,'//cs-c.ecimg.tw/items/DEBV7GA900AB6ZS/000002_1651211061.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900AB6ZS',0,'2022-12-31'),(130,'寵愛物語-6kg《腸胃調理健康主食-專為小型犬設計》doter狗飼料',773,'//cs-d.ecimg.tw/items/DEBV7AA900BXAHM/000001_1635394594.jpg','//24h.pchome.com.tw/prod/DEBV7A-A900BXAHM',0,'2022-12-31'),(131,'旺得福-牛肉蔬菜狗飼料(18公斤)',970,'//cs-e.ecimg.tw/items/DEBVEXA9007RXXR/000002_1649034453.jpg','//24h.pchome.com.tw/prod/DEBVEX-A9007RXXR',0,'2022-12-31'),(132,'寵愛物語-12kg《腸胃調理健康主食-專為小型犬設計》doter 狗飼料',932,'//cs-f.ecimg.tw/items/QFAW4NA900AL1FS/000001_1635394976.jpg','//24h.pchome.com.tw/prod/QFAW4N-A900AL1FS',0,'2022-12-31'),(133,'送贈品》優格TOMA-PRO 天然零榖 2.5LB 全齡犬 無穀 狗飼料 羊肉 鮭魚 5種魚 雞肉 天然糧',682,'//cs-a.ecimg.tw/items/QFAW3KA900AABZS/000001_1569919480.jpg','//24h.pchome.com.tw/prod/QFAW3K-A900AABZS',0,'2022-12-31'),(134,'美味食客-香煎雞肉狗飼料(15kg)',877,'//cs-b.ecimg.tw/items/DEBV7GA900BIUID/000002_1649036676.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BIUID',0,'2022-12-31'),(135,'陪心寵糧 NU4PET 無穀低碳犬糧 全犬種關節保健 1KG  羊肉鮮蔬口味 皮毛調理 狗飼料',754,'//cs-c.ecimg.tw/items/DEBVGOA900BWBE9/000001_1634717196.jpg','//24h.pchome.com.tw/prod/DEBVGO-A900BWBE9',0,'2022-12-31'),(136,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬羊肉 / 狗飼料-小顆粒-5lbs',1080,'//cs-d.ecimg.tw/items/QFAW49A900812NQ/000001_1491887627.jpg','//24h.pchome.com.tw/prod/QFAW49-A900812NQ',0,'2022-12-31'),(137,'送贈品 耐吉斯《超級無穀系列》3kg 幼犬/成犬/老犬 羊肉/火雞肉 無麩質 低敏 狗飼料',1345,'//cs-e.ecimg.tw/items/QFAW3MA900A85PC/000001_1566986281.jpg','//24h.pchome.com.tw/prod/QFAW3M-A900A85PC',0,'2022-12-31'),(138,'SINGEN 信元發育寶 加強機能顆粒PLUS天然低敏無穀高品質鴨鹿肉成犬狗飼料-大地菁華時光森林G+ 1.5KG',748,'//cs-f.ecimg.tw/items/DEBV7GA900AZ7C3/000001_1638847948.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900AZ7C3',0,'2022-12-31'),(139,'葛林菲 GREEN FISH 無穀麩低敏配方 成犬功能性完全飼料 小顆粒狗飼料 1.5KG',720,'//cs-a.ecimg.tw/items/DEBV60A900AB6UL/000002_1651815498.jpg','//24h.pchome.com.tw/prod/DEBV60-A900AB6UL',0,'2022-12-31'),(140,'多納 狗飼料 室內犬健康除臭配方2kg*6包雞肉鮭魚',850,'//cs-b.ecimg.tw/items/DEBV7GA900B33YB/000001_1610074193.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B33YB',0,'2022-12-31'),(141,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬深海魚肉 / 狗飼料-小顆粒-1kg',670,'//cs-c.ecimg.tw/items/QFAW49A90080U7B/000001_1491645410.jpg','//24h.pchome.com.tw/prod/QFAW49-A90080U7B',0,'2022-12-31'),(142,'送贈品 耐吉斯《超級無穀系列》1.5kg 無穀幼犬/成犬/老犬 羊肉/火雞肉 無麩質 低敏 狗飼料',855,'//cs-d.ecimg.tw/items/QFAW3MA900A85GL/000001_1566985007.jpg','//24h.pchome.com.tw/prod/QFAW3M-A900A85GL',0,'2022-12-31'),(143,'陪心寵糧 NU4PET 無穀低碳犬糧 全犬種關節保健 2KG 雞肉鮮蔬口味 皮毛調理 狗飼料',1100,'//cs-e.ecimg.tw/items/DEBV7GA900B56DA/000001_1612769371.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B56DA',0,'2022-12-31'),(144,'ZIWI巔峰 鹿肉 1kg 經典風乾生食狗飼料',3725,'//cs-f.ecimg.tw/items/DEBV6MA900BY6MQ/000001_1639380035.jpg','//24h.pchome.com.tw/prod/DEBV6M-A900BY6MQ',0,'2022-12-31'),(145,'陪心寵糧 NU4PET 無穀低碳犬糧 全犬種關節保健 2KG  羊肉鮮蔬口味 皮毛調理 狗飼料',1140,'//cs-a.ecimg.tw/items/DEBVGOA900BWBH6/000001_1634717242.jpg','//24h.pchome.com.tw/prod/DEBVGO-A900BWBH6',0,'2022-12-31'),(146,'多納 狗飼料 熟齡犬優纖高鈣配方2kg*6包牛肉雞肉',850,'//cs-b.ecimg.tw/items/DEBV7GA900B344W/000001_1610077026.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B344W',0,'2022-12-31'),(147,'澳洲IVORYCOAT澳克騎士-幼犬/全犬食譜 無穀犬糧 2KG 狗飼料',832,'//cs-c.ecimg.tw/items/DXBG6ZA900F11YZ/000002_1652353608.jpg','//24h.pchome.com.tw/prod/DXBG6Z-A900F11YZ',0,'2022-12-31'),(148,'美國 ORGANIX 歐奇斯95%有機幼犬飼料 4LB(狗糧)',1058,'//cs-d.ecimg.tw/items/DEBV7CA900B4QBN/000002_1653625138.jpg','//24h.pchome.com.tw/prod/DEBV7C-A900B4QBN',0,'2022-12-31'),(149,'多納 狗飼料 活動犬活力聰明配方2kg*6包牛肉鮭魚',850,'//cs-e.ecimg.tw/items/DEBV7GA900B3415/000001_1610086284.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B3415',0,'2022-12-31'),(150,'[送贈品] north paw 野牧鮮食 無穀狗飼料 1KG 羊肉地瓜/小型犬/龍蝦 精細研磨 狗糧',1002,'//cs-f.ecimg.tw/items/DEBV7GA900AZDYW/000001_1604915592.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900AZDYW',0,'2022-12-31'),(151,'TATA 羊肉紅藜全犬糧 16LB 狗飼料 紅藜麥 零麩質 高含肉量',3803,'//cs-a.ecimg.tw/items/DEBV7GA900BUN1Z/000001_1633585999.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900BUN1Z',0,'2022-12-31'),(152,'【Balance 博朗氏】幼母犬1.8kg*6包牛肉海魚馬鈴薯狗糧 狗飼料',1115,'//cs-b.ecimg.tw/items/DEBV7GA900B5CX2/000001_1613541678.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B5CX2',0,'2022-12-31'),(153,'[送贈品] 優格 TOMA-PRO 親親食譜 成犬 敏感腸胃低脂配方 5LB (2.27KG) 無穀 低脂 狗飼料',1200,'//cs-c.ecimg.tw/items/DEBV73A900B1KUF/000001_1607910447.jpg','//24h.pchome.com.tw/prod/DEBV73-A900B1KUF',0,'2022-12-31'),(154,'丹DAN 狗飼料 成齡犬口腔+皮毛配方20lb羊肉鱈魚蘋果',630,'//cs-d.ecimg.tw/items/DEBV7GA900B35CM/000001_1610093391.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900B35CM',0,'2022-12-31'),(155,'【Oven-Backed非吃不可．烘焙客】《WDJ推薦》成犬羊肉 / 狗飼料-小顆粒-1kg',670,'//cs-e.ecimg.tw/items/QFAW49A900812N9/000001_1491887638.jpg','//24h.pchome.com.tw/prod/QFAW49-A900812N9',0,'2022-12-31'),(156,'SINGEN 信元發育寶 加強機能顆粒PLUS天然低敏無穀高品質鴨羊肉成犬狗飼料-大地菁華仙蹤草原G+ 1.5KG',748,'//cs-f.ecimg.tw/items/DEBV7GA900AZ7EP/000001_1638847874.jpg','//24h.pchome.com.tw/prod/DEBV7G-A900AZ7EP',0,'2022-12-31'),(157,'【喵星人新年禮物】貓咪不倒翁滑球漏食器玩具-小桃紅',699,'//cs-a.ecimg.tw/items/DEAK8KA900DWRFA/000001_1642996037.jpg','//24h.pchome.com.tw/prod/DEAK8K-A900DWRFA',0,'2022-12-31'),(158,'貓抓球-蝸牛款/劍麻球/貓抓板/貓咪玩具/寵物用品/磨爪球/貓抓板/逗貓棒',699,'//cs-b.ecimg.tw/items/DEAK8JA900BY21V/000001_1642657512.jpg','//24h.pchome.com.tw/prod/DEAK8J-A900BY21V',0,'2022-12-31'),(159,'【良品】 新款不倒翁發光發聲滾動球帶羽毛貓咪玩具',588,'//cs-c.ecimg.tw/items/DEAK8KA900B1DE0/000001_1607505807.jpg','//24h.pchome.com.tw/prod/DEAK8K-A900B1DE0',0,'2022-12-31'),(160,'S型彎曲 寵物隧道 貓隧道成貓幼貓跑道玩耍寵物貓咪玩具(咖啡)',659,'//cs-d.ecimg.tw/items/DEAK5OA9009NNOQ/000001_1544778709.jpg','//24h.pchome.com.tw/prod/DEAK5O-A9009NNOQ',0,'2022-12-31'),(161,'【寵物愛家】貓咪抓迷藏響紙玩耍好物寵物玩具',699,'//cs-e.ecimg.tw/items/DEAK5OA900ENK9D/000002_1646363152.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900ENK9D',0,'2022-12-31'),(162,'高貴沙發造型貓爪板 貓咪玩具 磨爪 貓床 睡床 貴妃椅',579,'//cs-a.ecimg.tw/items/DIAERXA900EP603/000002_1647418150.jpg','//24h.pchome.com.tw/prod/DIAERX-A900EP603',0,'2022-12-31'),(163,'【pidan】貓咪寵物玩具球 氣球款 (三色可選)',539,'//cs-b.ecimg.tw/items/DEAK5NA900AFJXZ/000001_1577179412.jpg','//24h.pchome.com.tw/prod/DEAK5N-A900AFJXZ',0,'2022-12-31'),(164,'LiYi《貓咪專用》短絨毛貓咪專用帳篷玩具睡墊',599,'//cs-c.ecimg.tw/items/CAAU0TA58617014/000001_1478191965.jpg','//24h.pchome.com.tw/prod/CAAU0T-A58617014',0,'2022-12-31'),(165,'[3入組] ACEPET 愛思沛 6951 愛咪遊戲棒 叮噹球 釣竿逗貓棒 貓咪玩具 逗貓棒 遊戲棒',501,'//cs-d.ecimg.tw/items/DEAK5OA900BAY5B/000001_1619592999.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BAY5B',0,'2022-12-31'),(166,'【寵物愛家】貓咪新款劍麻經典實木轉盤逗貓玩具',899,'//cs-e.ecimg.tw/items/DEAK8NA900BSYO2/000001_1632377597.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900BSYO2',0,'2022-12-31'),(167,'【寵物愛家】三色毛球逗貓玩具+洗衣板貓抓板(貓咪玩具)',550,'//cs-f.ecimg.tw/items/DEAK8NA900AVW4I/000001_1600757680.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900AVW4I',0,'2022-12-31'),(168,'【寵物愛家】貓咪按摩磨蹭引力叫叫球逗貓解悶小物玩具組',790,'//cs-a.ecimg.tw/items/DEAK8NA900ENKDU/000002_1646364447.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900ENKDU',0,'2022-12-31'),(169,'【寵物愛家】貓咪玩具超嗨軌道互動寵物玩具',599,'//cs-b.ecimg.tw/items/DEAK8NA900BQO4X/000001_1630912717.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900BQO4X',0,'2022-12-31'),(170,'【寵物愛家】新爆款飛機造型旋轉眩暈漏食貓咪玩具2入組',500,'//cs-d.ecimg.tw/items/DEAK8NA900F26EK/000002_1652942513.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900F26EK',0,'2022-12-31'),(171,'貓咪益智實木打地鼠玩具',901,'//cs-e.ecimg.tw/items/DEAK5OA900B37RU/000001_1610334216.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900B37RU',0,'2022-12-31'),(172,'【喵星人新年禮物】貓咪不倒翁滑球漏食器玩具-可愛綠',699,'//cs-f.ecimg.tw/items/DEAK8KA900DWRFF/000001_1642996143.jpg','//24h.pchome.com.tw/prod/DEAK8K-A900DWRFF',0,'2022-12-31'),(173,'有喵病 貓咪智能互動玩具 2色可選(逗貓玩具 / 互動玩具)',540,'//cs-a.ecimg.tw/items/DEAK5OA900BYMKN/000001_1636363942.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BYMKN',0,'2022-12-31'),(174,'浴缸式貓抓板/瓦楞紙貓玩具/貓咪玩具/寵物用品/磨爪板/貓窩/貓抓床/貓抓盆',588,'//cs-b.ecimg.tw/items/DEAK8JA900BY6LS/000001_1642657487.jpg','//24h.pchome.com.tw/prod/DEAK8J-A900BY6LS',0,'2022-12-31'),(175,'【寵物愛家】劍麻日式風格寵物玩樂睡覺玩具毯子墊(貓咪玩具)',720,'//cs-d.ecimg.tw/items/DEAK5OA900AL50M/000001_1585721839.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900AL50M',0,'2022-12-31'),(176,'赫根《CATIT貓咪育樂世界-美甲社》Hagen 貓玩具',1200,'//cs-e.ecimg.tw/items/QFAW6SA9008YQR5/000001_1524474850.jpg','//24h.pchome.com.tw/prod/QFAW6S-A9008YQR5',0,'2022-12-31'),(177,'貓抓板貓咪沙發不掉屑貴妃椅床榻貓窩防貓抓沙發立式磨爪器貓玩具',1099,'//cs-a.ecimg.tw/items/DEAKYEA900FQ8T9/000002_1667631290.jpg','//24h.pchome.com.tw/prod/DEAKYE-A900FQ8T9',0,'2022-12-31'),(178,'afp 追夢系列 圖騰睡窩貓抓板 圓餅型 貓抓窩 睡窩 貓咪抓板 貓玩具 貓跳台 兩用貓抓板',588,'//cs-b.ecimg.tw/items/DEAKYEA900FMO1D/000002_1665059084.jpg','//24h.pchome.com.tw/prod/DEAKYE-A900FMO1D',0,'2022-12-31'),(179,'afp 追夢系列 英古拉風格隧道 寵物玩具 貓咪玩具 貓玩具 逗貓玩具 貓薄荷玩具 貓隧道',564,'//cs-c.ecimg.tw/items/DEAK8NA900FMO2E/000002_1665059267.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900FMO2E',0,'2022-12-31'),(180,'【毛孩王】貓咪吸盤旋轉軌道球/寵物玩具(兩色可選)',499,'//cs-d.ecimg.tw/items/DEAK5OA900FMUO4/000002_1665473595.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900FMUO4',0,'2022-12-31'),(181,'afp 追夢系列 原野帳篷貓抓板 精緻刺繡設計 抓板造型 貓窩 貓咪玩具 貓抓板 帳篷 追逐 猛撲',643,'//cs-e.ecimg.tw/items/DEAKYEA900FMO2C/000002_1665058898.jpg','//24h.pchome.com.tw/prod/DEAKYE-A900FMO2C',0,'2022-12-31'),(182,'S型彎曲 寵物隧道 貓隧道成貓幼貓跑道玩耍寵物貓咪玩具(紫色)',649,'//cs-f.ecimg.tw/items/DEAK5OA9009NNOT/000001_1544778763.jpg','//24h.pchome.com.tw/prod/DEAK5O-A9009NNOT',0,'2022-12-31'),(183,'【寵物愛家】新款小型花朵造型立體劍麻貓抓貓架玩具(貓咪玩具)',590,'//cs-a.ecimg.tw/items/DEAK8NA900FTJMV/000002_1670309825.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900FTJMV',0,'2022-12-31'),(184,'直款式貓抓板 貓咪磨爪板 貓玩具(花色隨機)',599,'//cs-c.ecimg.tw/items/DEAK8JA900F3ZHG/000002_1653798137.jpg','//24h.pchome.com.tw/prod/DEAK8J-A900F3ZHG',0,'2022-12-31'),(185,'【POOZPET】寵物益智 遊戲紓壓 可拆式 貓咪嗅聞玩具墊-旅行日記(PT097)',1280,'//cs-d.ecimg.tw/items/DEAK8OA900EVUBY/000002_1649925982.jpg','//24h.pchome.com.tw/prod/DEAK8O-A900EVUBY',0,'2022-12-31'),(186,'小魚嚴選 貓咪逗貓棒轉盤玩具組合*4組',796,'//cs-e.ecimg.tw/items/DEAK8NA900FCO6O/000002_1659424725.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900FCO6O',0,'2022-12-31'),(187,'【寵物愛家】自動升降球貓咪自嗨逗貓玩具',790,'//cs-f.ecimg.tw/items/DEAK8NA900F9MAP/000002_1657164678.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900F9MAP',0,'2022-12-31'),(188,'波浪款貓抓板 貓咪磨爪板 貓玩具(花色隨機)',599,'//cs-a.ecimg.tw/items/DEAK8JA900F3ZHU/000002_1653798734.jpg','//24h.pchome.com.tw/prod/DEAK8J-A900F3ZHU',0,'2022-12-31'),(189,'福丸拼色立式貓咪抓板耐用不掉屑瓦楞紙大型貓抓墊鈴鐺玩具貓抓板',1199,'//cs-b.ecimg.tw/items/DEAKYBA900FCXKQ/000002_1659598714.jpg','//24h.pchome.com.tw/prod/DEAKYB-A900FCXKQ',0,'2022-12-31'),(190,'【SHOWHAN】小花多功能貓跳台 貓咪遊戲跳台 貓跳台 貓爬架 貓抓柱 貓咪軌道球 貓玩具 磨爪',499,'//cs-c.ecimg.tw/items/DEAK8NA900FUNBE/000002_1671184750.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900FUNBE',0,'2022-12-31'),(191,'逗貓棒 智能自動升降逗貓棒 智能 貓咪玩具 寵物 老鼠玩具 毛線球',499,'//cs-d.ecimg.tw/items/DEAK5OA900EZV9S/000002_1651734674.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900EZV9S',0,'2022-12-31'),(192,'電動逗貓玩具紅外線激光燈(趣味逗貓棒 貓咪玩具 電動逗貓)',985,'//cs-a.ecimg.tw/items/DEAK5OA900FFD3Z/000002_1661318303.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900FFD3Z',0,'2022-12-31'),(193,'貓本屋 狗窩/貓窩 可拆洗四季通用 四角型亞麻寵物帳篷-貓咪藍',699,'//cs-b.ecimg.tw/items/DEAKWMA900BIEB5/000001_1630488007.jpg','//24h.pchome.com.tw/prod/DEAKWM-A900BIEB5',0,'2022-12-31'),(194,'【寵物愛家】實木轉盤劍麻貓抓貓歡樂玩具',1126,'//cs-c.ecimg.tw/items/DEAK8NA900ENLO2/000002_1646379068.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900ENLO2',0,'2022-12-31'),(195,'有喵病 劍麻貓抓球(大)-L型 / V型',550,'//cs-d.ecimg.tw/items/DEAK5OA900BWIGC/000001_1634836193.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BWIGC',0,'2022-12-31'),(196,'【寵物愛家】鯨魚造型實木貓抓磨爪劍麻球玩具',799,'//cs-e.ecimg.tw/items/DEAK8NA900ENLOB/000002_1646379260.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900ENLOB',0,'2022-12-31'),(197,'【3入組】FOFOS 兩只福狸 炫彩不倒翁漏食球 DCF18112（銀色）',945,'//cs-f.ecimg.tw/items/DEAKTVA900BETT9/000001_1622260891.jpg','//24h.pchome.com.tw/prod/DEAKTV-A900BETT9',0,'2022-12-31'),(198,'貓躺椅_公主椅',809,'//cs-a.ecimg.tw/items/DEAKRJA9007RKCU/000001_1633597782.jpg','//24h.pchome.com.tw/prod/DEAKRJ-A9007RKCU',0,'2022-12-31'),(199,'FD.Cattery ω 喵仙兒黃麻劍麻盆抓窩',940,'//cs-b.ecimg.tw/items/DEAK8JA900BNKYZ/000001_1628652503.jpg','//24h.pchome.com.tw/prod/DEAK8J-A900BNKYZ',0,'2022-12-31'),(200,'【4cats】貓草（貓薄荷）摔角長枕',720,'//cs-c.ecimg.tw/items/DEAKRKA90094WLG/000001_1529379664.jpg','//24h.pchome.com.tw/prod/DEAKRK-A90094WLG',0,'2022-12-31'),(201,'【寵物愛家】貓玩具三角型耐抓耐磨不掉屑立體貓抓板玩具(貓抓板)',990,'//cs-d.ecimg.tw/items/DEAKYEA900F5OA8/000002_1654667980.jpg','//24h.pchome.com.tw/prod/DEAKYE-A900F5OA8',0,'2022-12-31'),(202,'GiGwi 歡樂喵喵笛-印地安貓頭鷹',540,'//cs-e.ecimg.tw/items/QFAW0JA900A3EX6/000001_1561009761.jpg','//24h.pchome.com.tw/prod/QFAW0J-A900A3EX6',0,'2022-12-31'),(203,'GiGwi 歡樂喵喵笛-印地安小熊',540,'//cs-f.ecimg.tw/items/QFAW0JA900A3EWZ/000001_1561009513.jpg','//24h.pchome.com.tw/prod/QFAW0J-A900A3EWZ',0,'2022-12-31'),(204,'Pet Life 無鐵絲洞洞貓隧道/可拼接折疊百變組合貓通道 雙色二片',518,'//cs-a.ecimg.tw/items/DEAK5OA900BM3PZ/000001_1627530384.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BM3PZ',0,'2022-12-31'),(205,'寵愛喵喵 - 繽紛多彩朵朵貓咪運動場',549,'//cs-b.ecimg.tw/items/DEAK8IA900EVIES/000002_1669713377.jpg','//24h.pchome.com.tw/prod/DEAK8I-A900EVIES',0,'2022-12-31'),(206,'【ZEZE】起司造型 好收納 無鐵絲貓隧道-3色 (PT006)',549,'//cs-c.ecimg.tw/items/DEAK5OA900AZZRU/000001_1621409802.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900AZZRU',0,'2022-12-31'),(207,'【WAWAWA】療癒系綠藻球造型貓咪紓壓互動貓抓台',799,'//cs-d.ecimg.tw/items/DEAK8JA900BA3Q3/000001_1619074847.jpg','//24h.pchome.com.tw/prod/DEAK8J-A900BA3Q3',0,'2022-12-31'),(208,'【Vetreska 未卡】動感光波逗貓玩具 西瓜 F',550,'//cs-e.ecimg.tw/items/DEAK5OA900C1AJ7/000001_1637917391.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900C1AJ7',0,'2022-12-31'),(209,'【寵物愛家】新爆款貓狗軌道球自嗨解悶寵物餵食玩具',650,'//cs-f.ecimg.tw/items/DEAK8OA900F4DAF/000002_1653979468.jpg','//24h.pchome.com.tw/prod/DEAK8O-A900F4DAF',0,'2022-12-31'),(210,'【可折疊雙層貓砂墊 45*60】集砂 可水洗 EVA無毒 高彈力材質 落砂墊 貓沙墊 貓踏墊 止滑墊',499,'//cs-b.ecimg.tw/items/DEAKO5A900F1600/000002_1652412677.jpg','//24h.pchome.com.tw/prod/DEAKO5-A900F1600',0,'2022-12-31'),(211,'【Dido Pets】雙層舒適布料 可折疊響紙貓隧道-三色(PT106)',699,'//cs-c.ecimg.tw/items/DEAK5OA900F18OM/000002_1652434266.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900F18OM',0,'2022-12-31'),(212,'【寵物愛家】大方型青花紋貓咪瓦楞多功能貓抓板',600,'//cs-d.ecimg.tw/items/DEAK8JA900B6A71/000001_1614928361.jpg','//24h.pchome.com.tw/prod/DEAK8J-A900B6A71',0,'2022-12-31'),(213,'【3入組】FOFOS 兩只福狸 炫彩不倒翁漏食球 DCF18104（白色）',945,'//cs-e.ecimg.tw/items/DEAK5OA900BESJS/000001_1622215061.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BESJS',0,'2022-12-31'),(214,'【2入組】FOFOS 兩只福狸 貓星球電動玩具 DCF18320（夢幻紫）',850,'//cs-f.ecimg.tw/items/DEAK5OA900BF0DN/000001_1622387395.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BF0DN',0,'2022-12-31'),(215,'【2入組】FOFOS 兩只福狸 星球電動玩具 DCF18321（星球綠）',850,'//cs-a.ecimg.tw/items/DEAK5OA900BF0DD/000001_1622387071.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BF0DD',0,'2022-12-31'),(216,'【寵物貴族】好好玩搖擺平衡車玩具/逗貓棒/寵物玩具(超值2入)',808,'//cs-b.ecimg.tw/items/DEAK5OA900AVDKW/000001_1600078828.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900AVDKW',0,'2022-12-31'),(217,'喵星樂活Catit《Circuits 平地競速場》',880,'//cs-c.ecimg.tw/items/QFAW6SA9007EY4T/000001_1478542592.jpg','//24h.pchome.com.tw/prod/QFAW6S-A9007EY4T',0,'2022-12-31'),(218,'日本Comet《木天蓼玩具》招財貓踢枕',610,'//cs-d.ecimg.tw/items/QFAW6SA9007ALJO/000001_1478534032.jpg','//24h.pchome.com.tw/prod/QFAW6S-A9007ALJO',0,'2022-12-31'),(219,'【2支組】美國VEE《火舞羽毛逗貓棒》VE00002',827,'//cs-e.ecimg.tw/items/QFAW6SA9008KNDP/000002_1666610568.jpg','//24h.pchome.com.tw/prod/QFAW6S-A9008KNDP',0,'2022-12-31'),(220,'【4cats】貓草(纈草)動物紋長條抱枕',530,'//cs-f.ecimg.tw/items/QFAWA3B9007TVAI/000001_1484734695.jpg','//24h.pchome.com.tw/prod/QFAWA3-B9007TVAI',0,'2022-12-31'),(221,'【4cats】貓草(貓薄荷)動物紋長條抱枕',530,'//cs-a.ecimg.tw/items/DEAKIAA9007O6PM/000001_1479803960.jpg','//24h.pchome.com.tw/prod/DEAKIA-A9007O6PM',0,'2022-12-31'),(222,'【兩支】美國VEE《天然沙沙羽毛逗貓棒》逗貓玩具',934,'//cs-b.ecimg.tw/items/QFAW6SA9006T64J/000002_1666611518.jpg','//24h.pchome.com.tw/prod/QFAW6S-A9006T64J',0,'2022-12-31'),(223,'Petoneer Play Ball 智能陪伴球',880,'//cs-c.ecimg.tw/items/DEAK5OA900A7U4B/000001_1566542820.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900A7U4B',0,'2022-12-31'),(224,'有喵病 原木打地鼠貓玩具- 五孔玩偶款 / 五孔老鼠款',940,'//cs-d.ecimg.tw/items/DEAK5OA900B0YBS/000001_1606971425.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900B0YBS',0,'2022-12-31'),(225,'日本Comet《木天蓼玩具》扭扭貓踢枕',530,'//cs-e.ecimg.tw/items/QFAW6SA9007ALKM/000001_1478534032.jpg','//24h.pchome.com.tw/prod/QFAW6S-A9007ALKM',0,'2022-12-31'),(226,'亞馬遜電動貓玩具寵物用品│派利鼠逗貓器│自動逗貓遊樂轉盤',549,'//cs-f.ecimg.tw/items/DEAK5OA900BX5EL/000001_1635314234.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900BX5EL',0,'2022-12-31'),(227,'湊團購【喵星人最愛！貓糖舔舔樂4入】貓薄荷球 貓草球 木天蓼球 貓草 貓零食 貓糖 自嗨球',739,'//cs-a.ecimg.tw/items/DEAKIAA900BOJFG/000002_1657245428.jpg','//24h.pchome.com.tw/prod/DEAKIA-A900BOJFG',0,'2022-12-31'),(228,'【寵物愛家】寵物秋冬商品溫暖萌系虎紋響紙寵物睡被睡袋',499,'//cs-b.ecimg.tw/items/DEAK8NA900BU8EP/000001_1633333991.jpg','//24h.pchome.com.tw/prod/DEAK8N-A900BU8EP',0,'2022-12-31'),(229,'狗狗啃咬發聲玩具-花生 (13*6*5.5cm)',229,'//cs-a.ecimg.tw/items/DEAK8MA900FML36/000002_1665025183.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FML36',0,'2022-12-31'),(230,'狗狗啃咬漏食玩具(骨頭造型) (18cm) 多種顏色可選',199,'//cs-b.ecimg.tw/items/DEAK8MA900FMLPK/000002_1665033534.png','//24h.pchome.com.tw/prod/DEAK8M-A900FMLPK',0,'2022-12-31'),(231,'亞馬遜熱銷毛絨耐咬磨牙發聲狗狗玩具│潔牙吸臭動物造型寵物玩具',189,'//cs-c.ecimg.tw/items/DEAK8MA900C8K68/000001_1641191286.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900C8K68',0,'2022-12-31'),(232,'Lovely puppy 寵物結繩玩具-紅白拖鞋1個',199,'//cs-d.ecimg.tw/items/DEAKMVA9007FU4B/000001_1478544081.jpg','//24h.pchome.com.tw/prod/DEAKMV-A9007FU4B',0,'2022-12-31'),(233,'Doggyman 柔韌咬咬玩具球 SS',190,'//cs-e.ecimg.tw/items/DEAK93A9008WGHI/000001_1604557191.jpg','//24h.pchome.com.tw/prod/DEAK93-A9008WGHI',0,'2022-12-31'),(234,'Lovely puppy 寵物絨毛玩具-雙骨頭雞腿1個',199,'//cs-f.ecimg.tw/items/DEAKMVA9007OM0I/000001_1480166891.jpg','//24h.pchome.com.tw/prod/DEAKMV-A9007OM0I',0,'2022-12-31'),(235,'【PurLab】犬用玩具 芝芝奶酪 (可發聲)',190,'//cs-a.ecimg.tw/items/DEAK8LA900BAZ1N/000001_1619599827.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900BAZ1N',0,'2022-12-31'),(236,'Lovely puppy 寵物絨毛玩具-長方形西瓜1個',199,'//cs-b.ecimg.tw/items/DEAKMVA9007FU4D/000001_1520868489.jpg','//24h.pchome.com.tw/prod/DEAKMV-A9007FU4D',0,'2022-12-31'),(237,'Lovely puppy 寵物絨毛玩具-三角形西瓜1個',199,'//cs-c.ecimg.tw/items/DEAKMVA9007FU4C/000001_1520868537.jpg','//24h.pchome.com.tw/prod/DEAKMV-A9007FU4C',0,'2022-12-31'),(238,'寵物發聲玩具 (多種樣式可選)',199,'//cs-d.ecimg.tw/items/DEAK8MA900FML5N/000002_1665026263.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FML5N',0,'2022-12-31'),(239,'JIAGO 寵物潔牙玩具-小號(小型犬)',199,'//cs-e.ecimg.tw/items/DEAK8MA900B0VQY/000001_1606895394.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900B0VQY',0,'2022-12-31'),(240,'Lovely puppy 寵物絨毛玩具-小鴨奶瓶(藍色)1個',199,'//cs-f.ecimg.tw/items/DEAKMVA9007FTYU/000001_1520867610.jpg','//24h.pchome.com.tw/prod/DEAKMV-A9007FTYU',0,'2022-12-31'),(241,'JIAGO 寵物潔牙玩具-中號(中型犬)',199,'//cs-a.ecimg.tw/items/DEAK8MA900FVL08/000002_1672046664.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FVL08',0,'2022-12-31'),(242,'Lovely puppy 寵物絨毛玩具-條紋拖鞋(粉紅)1個',199,'//cs-b.ecimg.tw/items/DEAK5NA9005QHR4/000001_1478378971.jpg','//24h.pchome.com.tw/prod/DEAK5N-A9005QHR4',0,'2022-12-31'),(243,'Lovely puppy 寵物絨毛玩具-甜甜圈(粉色)1個',199,'//cs-c.ecimg.tw/items/DEAKMVA9007FU6J/000001_1478544082.jpg','//24h.pchome.com.tw/prod/DEAKMV-A9007FU6J',0,'2022-12-31'),(244,'Lovely puppy 寵物絨毛玩具-條紋拖鞋(黃藍)1個',199,'//cs-d.ecimg.tw/items/DEAK5NA9005QHRT/000001_1478378966.jpg','//24h.pchome.com.tw/prod/DEAK5N-A9005QHRT',0,'2022-12-31'),(245,'P.L.A.Y.星光好萊塢-獵犬啤酒',224,'//cs-e.ecimg.tw/items/DEAKPYA900BBT1P/000001_1620284009.jpg','//24h.pchome.com.tw/prod/DEAKPY-A900BBT1P',0,'2022-12-31'),(246,'P.L.A.Y.熱帶天堂-搖擺西瓜',200,'//cs-f.ecimg.tw/items/DEAKPYA900BBTHT/000001_1620287565.jpg','//24h.pchome.com.tw/prod/DEAKPY-A900BBTHT',0,'2022-12-31'),(247,'【pidan】寵用玩具 狗用 鑰匙款 小號',189,'//cs-a.ecimg.tw/items/DEAK8MA900AW1OG/000001_1600856911.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900AW1OG',0,'2022-12-31'),(248,'Lovely puppy 寵物絨毛玩具-條紋拖鞋(黃色)1個',199,'//cs-b.ecimg.tw/items/DEAK5NA9005QHSX/000001_1478378972.jpg','//24h.pchome.com.tw/prod/DEAK5N-A9005QHSX',0,'2022-12-31'),(249,'【Petsville派思維】歡樂包邊仙人掌系列狗狗耐咬發聲玩具(4款任選)',240,'//cs-c.ecimg.tw/items/DEAK8LA900EA7VA/000002_1645691485.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900EA7VA',0,'2022-12-31'),(250,'【Petsville派思維】叫叫大眼魚系列狗狗耐咬發聲玩具(4款任選)',240,'//cs-d.ecimg.tw/items/DEAK8LA900EA8EF/000002_1645692013.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900EA8EF',0,'2022-12-31'),(251,'亞馬遜熱銷寵物用品狗狗棉繩玩具│磨牙潔齒汪星人咬繩',169,'//cs-e.ecimg.tw/items/DEAK8MA900AUW21/000001_1599451881.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900AUW21',0,'2022-12-31'),(252,'亞馬遜寵物毛絨解悶耐咬磨牙│發聲狗狗玩具│潔牙吸臭猴牛熊造型玩具',249,'//cs-f.ecimg.tw/items/DEAK8MA900C8KWI/000001_1641194385.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900C8KWI',0,'2022-12-31'),(253,'歐美亞馬遜狗狗磨牙大雁發聲玩具│磨牙耐咬玩具│互動防無聊防憂鬱寵物玩具',249,'//cs-a.ecimg.tw/items/DEAK8MA900C8L8L/000001_1641195601.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900C8L8L',0,'2022-12-31'),(254,'毛絨發音橙子玩耍球【AH-338B絨毛玩具 金毛狗狗仿真玩具】',187,'//cs-b.ecimg.tw/items/QFAW6UA900ATBX6/000001_1597217476.jpg','//24h.pchome.com.tw/prod/QFAW6U-A900ATBX6',0,'2022-12-31'),(255,'亞馬遜熱銷寵物狗狗玩具│汪星人磨牙發洩訓練燈芯絨玩具',249,'//cs-c.ecimg.tw/items/DEAK8MA900BNBH3/000001_1628489736.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900BNBH3',0,'2022-12-31'),(256,'日系馬卡龍狗狗寵物棉布拉扯玩具 寵物潔齒TPR磨牙狗狗玩具 耐咬減壓無聊解憂鬱玩具',179,'//cs-d.ecimg.tw/items/DEAK8MA900F4D6F/000002_1653978461.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900F4D6F',0,'2022-12-31'),(257,'寵愛毛孩不能等❤寵物狗狗貓咪馬卡龍磨牙咬咬繩結玩具|顏色隨機',238,'//cs-e.ecimg.tw/items/DEAZ6GA900BLV7W/000001_1627368229.jpg','//24h.pchome.com.tw/prod/DEAZ6G-A900BLV7W',0,'2022-12-31'),(258,'狗狗玩具耐咬潔齒磨牙乳膠玩具 寵物互動發聲訓練球',249,'//cs-f.ecimg.tw/items/DEAK8LA900F0SI8/000002_1652240362.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900F0SI8',0,'2022-12-31'),(259,'Doggyman 犬用每日潔牙棉繩玩具環形S',230,'//cs-a.ecimg.tw/items/DEAK93A9007H4YB/000001_1630388469.jpg','//24h.pchome.com.tw/prod/DEAK93-A9007H4YB',0,'2022-12-31'),(260,'寵物吸盤拉繩玩具│狗狗啃咬漏食球',349,'//cs-b.ecimg.tw/items/DEAKQCA900AKKE6/000001_1585038424.jpg','//24h.pchome.com.tw/prod/DEAKQC-A900AKKE6',0,'2022-12-31'),(261,'亞馬遜爆款狗狗玩具│漏食怪叫球',379,'//cs-c.ecimg.tw/items/DEAKTVA900B6HDU/000001_1615272620.jpg','//24h.pchome.com.tw/prod/DEAKTV-A900B6HDU',0,'2022-12-31'),(262,'超強吸盤狗狗磨牙玩具 耐咬球 拉扯 互動玩具 餵食器 漏食',399,'//cs-d.ecimg.tw/items/QFAW6UA900AH0XG/000001_1579230212.jpg','//24h.pchome.com.tw/prod/QFAW6U-A900AH0XG',0,'2022-12-31'),(263,'【寵物愛家】狗狗新玩具潔牙磨牙TPU雙色牙醫棒寵物玩具-L',650,'//cs-e.ecimg.tw/items/DEAK8MA900BSZJO/000001_1632383117.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900BSZJO',0,'2022-12-31'),(264,'狗狗牙刷玩具 狗狗潔牙神器 狗狗牙刷彈性磨牙棒 除口臭玩具 耐咬潔牙棒',399,'//cs-f.ecimg.tw/items/DEAK8MA900F0MIG/000002_1652171340.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900F0MIG',0,'2022-12-31'),(265,'【寵物愛家】狗狗啃咬馬卡龍色系棉繩結寵物玩具3件組',399,'//cs-a.ecimg.tw/items/DEAK8MA900ENKHX/000002_1646365285.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900ENKHX',0,'2022-12-31'),(266,'漏食狗狗潔牙玩具【湖水藍】(潔齒通道/預防疾病/TPR材質)',350,'//cs-b.ecimg.tw/items/DEAK8MA900B336I/000001_1611737522.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900B336I',0,'2022-12-31'),(267,'玉米絨木偶寵物耐咬發聲玩具 狗狗毛絨玩具互動防無聊解憂鬱玩具',149,'//cs-c.ecimg.tw/items/DEAK8LA900F0SD1/000002_1652239531.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900F0SD1',0,'2022-12-31'),(268,'ZippyPaws 歡樂時光瓶-沙沙啤酒 狗狗玩具',445,'//cs-d.ecimg.tw/items/DEAK5NA900F6XTM/000002_1655459065.jpg','//24h.pchome.com.tw/prod/DEAK5N-A900F6XTM',0,'2022-12-31'),(269,'【Petsville派思維】狗狗發聲陪伴玩具(4款任選)',330,'//cs-e.ecimg.tw/items/DEAK8LA900EA7ZO/000002_1645691776.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900EA7ZO',0,'2022-12-31'),(270,'【寵物愛家】狗狗玩具有聲啃咬磨牙玩偶寵物玩具',450,'//cs-f.ecimg.tw/items/DEAKDWA900FCO35/000002_1659423552.jpg','//24h.pchome.com.tw/prod/DEAKDW-A900FCO35',0,'2022-12-31'),(271,'寵物藏食益智玩具【AH-66D】寵物遊戲盤 益智食盤 覓食遊戲 藏食玩具 嗅食玩具 狗狗漏食球',337,'//cs-a.ecimg.tw/items/DEAKTVA900D7U18/000001_1642059991.jpg','//24h.pchome.com.tw/prod/DEAKTV-A900D7U18',0,'2022-12-31'),(272,'【寵物愛家】大雞腿造型狗狗啃咬潔牙棒漏食磨牙玩具',480,'//cs-b.ecimg.tw/items/DEAK8MA900F4D9U/000002_1653979172.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900F4D9U',0,'2022-12-31'),(273,'日本【MARUKAN】狗狗互動潔牙發聲玩具 4種造型 (2入組)',398,'//cs-c.ecimg.tw/items/DEAK8LA900B3130/000001_1609989888.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900B3130',0,'2022-12-31'),(274,'【Petsville派思維】動物系列狗狗耐咬發聲玩具(4款任選)',499,'//cs-d.ecimg.tw/items/DEAK8LA900EA8Q0/000002_1645692289.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900EA8Q0',0,'2022-12-31'),(275,'狗狗牙刷玩具 狗狗潔牙神器 寵物潔牙 寵物狗牙刷 磨牙棒 除口臭玩具 耐咬型潔牙棒',252,'//cs-e.ecimg.tw/items/DEAKPAA900B8SUU/000001_1630397706.jpg','//24h.pchome.com.tw/prod/DEAKPA-A900B8SUU',0,'2022-12-31'),(276,'寵物毛絨水果發聲玩具 狗狗耐咬互動防無聊解憂鬱玩具 貓咪毛絨玩具',99,'//cs-f.ecimg.tw/items/DEAK8LA900F0S5E/000002_1652237230.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900F0S5E',0,'2022-12-31'),(277,'【pidan】寵用玩具 狗用 鑰匙款 大號',239,'//cs-a.ecimg.tw/items/DEAK8MA900AWA5L/000001_1601105209.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900AWA5L',0,'2022-12-31'),(278,'狗狗小狗仿真毛小孩拉布拉多哈士奇紅貴賓鑰匙圈鎖圈掛飾吊飾8公分玩具禮物47-00061【小品館】',190,'//cs-c.ecimg.tw/items/DYAF13A900B6UJJ/000001_1615714148.jpg','//24h.pchome.com.tw/prod/DYAF13-A900B6UJJ',0,'2022-12-31'),(279,'累狗神器 Let it Go 狗狗寵物自動拋球發球機 扔球投球丟球機 網球 互動益智遊戲玩具',3599,'//cs-d.ecimg.tw/items/DEAK8OA900FQZ3U/000002_1668149502.jpg','//24h.pchome.com.tw/prod/DEAK8O-A900FQZ3U',0,'2022-12-31'),(280,'【Petsville派思維】蔬菜水果系列狗狗發聲互動玩具-小(4款任選)',390,'//cs-e.ecimg.tw/items/DEAK8MA900EAB7M/000002_1645693726.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900EAB7M',0,'2022-12-31'),(281,'玩具狗 電動狗狗公仔 (會走會叫會點頭) 毛絨娃娃 哈士奇 電動玩具 電動狗 玩具',459,'//cs-f.ecimg.tw/items/DEAK5NA900EZVZM/000002_1651740613.jpg','//24h.pchome.com.tw/prod/DEAK5N-A900EZVZM',0,'2022-12-31'),(282,'爆款亞馬遜寵物發聲狗狗玩具│毛絨解悶耐咬磨牙│潔牙吸臭造型玩具│大恐龍',299,'//cs-a.ecimg.tw/items/DEAK8MA900C8KXM/000001_1641194592.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900C8KXM',0,'2022-12-31'),(283,'【寵物愛家】狗狗玩具寵物不倒翁平衡款漏食寵物玩具',399,'//cs-b.ecimg.tw/items/DEAK8OA900BQO8U/000001_1630913730.jpg','//24h.pchome.com.tw/prod/DEAK8O-A900BQO8U',0,'2022-12-31'),(284,'寵物益智彈食玩具 狗狗玩具 寵物趣味彈食器 喂食緩食 慢食彈食器 益智遊戲 飼料碗',1099,'//cs-c.ecimg.tw/items/DEAKQCA900FSTP4/000002_1669883625.jpg','//24h.pchome.com.tw/prod/DEAKQC-A900FSTP4',0,'2022-12-31'),(285,'May Shop 【111101156】2入組 拖把絨寵物玩具狗狗玩具寵物毛絨玩具',350,'//cs-d.ecimg.tw/items/DEAK8LA900FQRJD/000002_1668006410.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900FQRJD',0,'2022-12-31'),(286,'寵物窩 寵物床 寵物透氣網面彈簧床 寵物玩具 貓咪 狗狗',1299,'//cs-e.ecimg.tw/items/DEAK8WA900F1RJI/000002_1652770121.jpg','//24h.pchome.com.tw/prod/DEAK8W-A900F1RJI',0,'2022-12-31'),(287,'ZippyPaws 益智躲貓貓-香噴噴的炸雞桶 狗狗玩具',565,'//cs-a.ecimg.tw/items/DEAK5NA900F6XTS/000002_1655458863.jpg','//24h.pchome.com.tw/prod/DEAK5N-A900F6XTS',0,'2022-12-31'),(288,'ZippyPaws 歡樂時光瓶-沙沙辣椒醬 狗狗玩具',445,'//cs-b.ecimg.tw/items/DEAK5NA900F6XUF/000002_1655459276.jpg','//24h.pchome.com.tw/prod/DEAK5N-A900F6XUF',0,'2022-12-31'),(289,'ZippyPaws 益智躲貓貓-忙碌小蜜蜂 狗狗玩具',565,'//cs-c.ecimg.tw/items/DEAK5NA900F6XS9/000002_1655458509.jpg','//24h.pchome.com.tw/prod/DEAK5N-A900F6XS9',0,'2022-12-31'),(290,'狗狗耐咬玫瑰磨牙棒 寵物潔牙玩具',520,'//cs-d.ecimg.tw/items/DEAK8MA900B7YE6/000001_1617100744.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900B7YE6',0,'2022-12-31'),(291,'【寵物愛家】狗狗磨牙解悶耐咬棉繩球玩具3入組(寵物玩具)',490,'//cs-e.ecimg.tw/items/DEAK8MA900FCO2K/000002_1659423279.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FCO2K',0,'2022-12-31'),(292,'狗狗寵物解悶抗憂鬱TPR發聲玩具│寵物啃咬花生玩具│潔牙解悶自HIGH玩具',149,'//cs-f.ecimg.tw/items/DEAK8OA900FMFQA/000002_1664874650.jpg','//24h.pchome.com.tw/prod/DEAK8O-A900FMFQA',0,'2022-12-31'),(293,'【寵物愛家】狗狗玩具大型犬拉環磨牙互動訓練寵物玩具',499,'//cs-b.ecimg.tw/items/DEAK8MA900F0DEG/000002_1652073347.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900F0DEG',0,'2022-12-31'),(294,'狗狗啃咬玩具-玉米磨牙棒 (11.1*5.6cm)',419,'//cs-c.ecimg.tw/items/DEAK8MA900FMQ7G/000002_1665127370.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FMQ7G',0,'2022-12-31'),(295,'【寵物愛家】狗狗新玩具潔牙磨牙TPU雙色牙醫棒寵物玩具-M',550,'//cs-d.ecimg.tw/items/DEAK8MA900BSZIC/000001_1632382998.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900BSZIC',0,'2022-12-31'),(296,'【Petsville派思維】蔬菜水果系列狗狗發聲互動玩具-大(4款任選)',499,'//cs-e.ecimg.tw/items/DEAK8MA900EAAVT/000002_1645693674.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900EAAVT',0,'2022-12-31'),(297,'【寵物愛家】狗狗玩具狗狗潔牙耐咬耐磨互動玩具(寵物玩具)',360,'//cs-f.ecimg.tw/items/DEAK8MA900FCNWJ/000002_1659422153.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FCNWJ',0,'2022-12-31'),(298,'狗狗啃咬玩具-狗牙刷 大 綠色 (18*13.5cm)',569,'//cs-a.ecimg.tw/items/DEAK8MA900FMM0Z/000002_1665037307.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FMM0Z',0,'2022-12-31'),(299,'【Petsville派思維】特斯林狗狗耐咬互動玩具(6款任選)',499,'//cs-b.ecimg.tw/items/DEAK8MA900EA9I8/000002_1645692924.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900EA9I8',0,'2022-12-31'),(300,'漏食狗狗潔牙玩具【檸檬黃】(潔齒通道/預防疾病/TPR材質)',299,'//cs-d.ecimg.tw/items/DEAK8MA900B337Q/000001_1611737511.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900B337Q',0,'2022-12-31'),(301,'May Shop 【111101157】寵物療癒系小豬小鴨小熊飛盤狗狗拋擲玩具',350,'//cs-e.ecimg.tw/items/DEAK8LA900FQRJA/000002_1668006240.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900FQRJA',0,'2022-12-31'),(302,'【寵物愛家】骨頭公仔發聲狗狗陪伴絨毛玩具',560,'//cs-f.ecimg.tw/items/DEAK8LA900ENKGC/000002_1646364974.jpg','//24h.pchome.com.tw/prod/DEAK8L-A900ENKGC',0,'2022-12-31'),(303,'ZippyPaws 益智躲貓貓-美味拉麵 狗狗玩具',665,'//cs-a.ecimg.tw/items/DEAK5NA900F6XON/000002_1655457921.jpg','//24h.pchome.com.tw/prod/DEAK5N-A900F6XON',0,'2022-12-31'),(304,'狗狗橄欖球玩具 21*13*12.5cm (含打氣筒)',569,'//cs-b.ecimg.tw/items/DEAK8MA900FMLYX/000002_1665037160.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900FMLYX',0,'2022-12-31'),(305,'寵物飲水機 自動循環流動過濾貓咪狗狗喝水神器寵物用品',699,'//cs-a.ecimg.tw/items/DEAK9IA900BJI9H/000002_1647242904.jpg','//24h.pchome.com.tw/prod/DEAK9I-A900BJI9H',0,'2022-12-31'),(306,'【寵物愛家】寵物用品透氣手提肩背寵物太空包',880,'//cs-b.ecimg.tw/items/DEAK6QA900BSYG9/000001_1632376093.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900BSYG9',0,'2022-12-31'),(307,'【寵物愛家】貓犬用品秋冬三角蒙古包封閉式寵物窩',880,'//cs-c.ecimg.tw/items/DEAKB4A900BSZ29/000001_1632380276.jpg','//24h.pchome.com.tw/prod/DEAKB4-A900BSZ29',0,'2022-12-31'),(308,'【寵物愛家】貓犬用品秋冬溫馨保暖帶枕寵物窩',880,'//cs-d.ecimg.tw/items/DEAKB4A900BSZ1F/000001_1632380115.jpg','//24h.pchome.com.tw/prod/DEAKB4-A900BSZ1F',0,'2022-12-31'),(309,'【寵物愛家】寵物用品劍麻太陽花貓抓玩具',790,'//cs-e.ecimg.tw/items/DEAK8IA900BSYIR/000001_1632376750.jpg','//24h.pchome.com.tw/prod/DEAK8I-A900BSYIR',0,'2022-12-31'),(310,'P.L.A.Y.露營野趣-探索者腰包(2色)寵物用品',1000,'//cs-a.ecimg.tw/items/DEAKPYA900E02DH/000001_1645169361.jpg','//24h.pchome.com.tw/prod/DEAKPY-A900E02DH',0,'2022-12-31'),(311,'抽屜式雙門貓砂盆-幕斯咖/全封閉/便所/大空間貓砂盆/貓廁所/寵物用品',990,'//cs-b.ecimg.tw/items/DEAKNWA900BNG3U/000002_1648452759.jpg','//24h.pchome.com.tw/prod/DEAKNW-A900BNG3U',0,'2022-12-31'),(312,'【寵物愛家】藍色冰涼夏季可拆卸防滑寵物涼墊-大(寵物涼夏用品)',880,'//cs-c.ecimg.tw/items/QFAW18A9009ZAEK/000001_1556594783.jpg','//24h.pchome.com.tw/prod/QFAW18-A9009ZAEK',0,'2022-12-31'),(313,'木製懸掛式貓吊床(免打孔 貓窩 貓咪吊床 貓吊床 貓掛床 貓跳臺 寵物用品 寵物吊床 窗邊)',999,'//cs-d.ecimg.tw/items/DXAM6LA900FLJGS/000002_1664270882.jpg','//24h.pchome.com.tw/prod/DXAM6L-A900FLJGS',0,'2022-12-31'),(314,'百變多功能寵物圍欄-帶門款/柵欄/門欄/圍籬/寵物窩/寵物籠/寵物用品',990,'//cs-e.ecimg.tw/items/DEAKB6A900BRYSU/000001_1631674797.jpg','//24h.pchome.com.tw/prod/DEAKB6-A900BRYSU',0,'2022-12-31'),(315,'【CATIDEA 貓樂適】全罩式貓砂盆 L 貓砂盆 貓用品 貓廁所 寵物用品',1380,'//cs-f.ecimg.tw/items/DEAKNWA900BQ9LV/000001_1630554964.jpg','//24h.pchome.com.tw/prod/DEAKNW-A900BQ9LV',0,'2022-12-31'),(316,'透氣寵物外出包-藍/單肩背包/外出袋/貓包包/狗包包/提袋/寵物用品外出',999,'//cs-a.ecimg.tw/items/DEAK6QA900EVHTO/000002_1652925698.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900EVHTO',0,'2022-12-31'),(317,'抽屜式雙門貓砂盆-藍灰/全封閉/便所/大空間貓砂盆/貓廁所/寵物用品',990,'//cs-c.ecimg.tw/items/DEAKNWA900BQ45C/000002_1648452692.jpg','//24h.pchome.com.tw/prod/DEAKNW-A900BQ45C',0,'2022-12-31'),(318,'寵物智能餵食器【AH-416】六格 自動餵食器 智能 定時定量 餵食 寵物用品 貓狗 飼料機 甜甜圈',890,'//cs-e.ecimg.tw/items/DEAKQCA900BOB22/000001_1629188072.jpg','//24h.pchome.com.tw/prod/DEAKQC-A900BOB22',0,'2022-12-31'),(319,'May Shop 【111101126】手提單肩包水洗牛仔包 狗包寵物旅行袋戶外用品',780,'//cs-f.ecimg.tw/items/DEAK6QA900FQRJG/000002_1668006857.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900FQRJG',0,'2022-12-31'),(320,'【寵物愛家】新穎商品貓咪狗狗家用吹風機烘乾箱-M(寵物用品)',1050,'//cs-a.ecimg.tw/items/DEAKPCA900FTJHV/000002_1670308956.jpg','//24h.pchome.com.tw/prod/DEAKPC-A900FTJHV',0,'2022-12-31'),(321,'【2入組】DAWOKO木酢達人-寵物用品全效洗衣精 500ml (DA-14)',753,'//cs-b.ecimg.tw/items/DEAKP0A900FHDF1/000002_1663051106.jpg','//24h.pchome.com.tw/prod/DEAKP0-A900FHDF1',0,'2022-12-31'),(322,'【魔法逗貓盒】逗貓玩具 電動逗貓神器 全自動逗貓魔盒 逗貓打地鼠 貓咪用品 寵物玩具 逗貓棒',1297,'//cs-c.ecimg.tw/items/DEAK5OA900FRHAX/000002_1668668893.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900FRHAX',0,'2022-12-31'),(323,'12h現貨 逗貓玩具 魔法逗貓盒 逗貓神器 逗貓魔盒 逗貓打地鼠 貓咪用品 寵物玩具 逗貓棒',1297,'//cs-d.ecimg.tw/items/DEAK5OA900FRICO/000002_1668678138.jpg','//24h.pchome.com.tw/prod/DEAK5O-A900FRICO',0,'2022-12-31'),(324,'【寵物愛家】狗潔齒磨牙用品寵物潔齒功能玩具3入組',790,'//cs-f.ecimg.tw/items/DEAK8MA900F9HN1/000002_1657093029.jpg','//24h.pchome.com.tw/prod/DEAK8M-A900F9HN1',0,'2022-12-31'),(325,'透氣寵物外出包-灰/單肩背包/外出袋/貓包包/狗包包/提袋/寵物用品外出',999,'//cs-a.ecimg.tw/items/DEAK6QA900EVHSL/000002_1652235604.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900EVHSL',0,'2022-12-31'),(326,'可拆卸貓窩 寵物窩 房子造型 四季貓窩 可拆洗 寵物用品',990,'//cs-d.ecimg.tw/items/DEAK8WA900FRSF9/000002_1669106212.jpg','//24h.pchome.com.tw/prod/DEAK8W-A900FRSF9',0,'2022-12-31'),(327,'貓狗進出門 貓洞 狗洞 自動寵物門 寵物門 貓門 狗門 寵物活動門 寵物進出 寵物用品 生活用品',628,'//cs-e.ecimg.tw/items/DEAKB6A900FOTIH/000002_1666777869.jpg','//24h.pchome.com.tw/prod/DEAKB6-A900FOTIH',0,'2022-12-31'),(328,'車用寵物墊 車載寵物墊 汽車寵物墊 寵物車墊 寵物墊 狗狗防水防髒后座墊子 寵物用品',788,'//cs-f.ecimg.tw/items/DEAKR0A900FTQSY/000002_1670466060.jpg','//24h.pchome.com.tw/prod/DEAKR0-A900FTQSY',0,'2022-12-31'),(329,'【寵物愛家】寵物外出車用後排車載墊可折雙層寵物車用墊(寵務車用品)',900,'//cs-a.ecimg.tw/items/DEAKEMA900FCNXG/000002_1659422480.jpg','//24h.pchome.com.tw/prod/DEAKEM-A900FCNXG',0,'2022-12-31'),(330,'【寵物愛家】寵物用品劍麻貓樹貓抓貓跳台玩具-雙魚拚色',880,'//cs-b.ecimg.tw/items/DEAK8IA900BSYLO/000001_1632377285.jpg','//24h.pchome.com.tw/prod/DEAK8I-A900BSYLO',0,'2022-12-31'),(331,'【寵物愛家】狗狗貓咪寵物車用防水耐磨安全座椅(寵物汽車用品)',800,'//cs-c.ecimg.tw/items/DEAKR0A900A4JK5/000001_1562219897.jpg','//24h.pchome.com.tw/prod/DEAKR0-A900A4JK5',0,'2022-12-31'),(332,'四合一多功能電動寵物剃毛器-11件組電剪 粉/白/綠(美容磨甲/貓狗可用/寵物用品/防水)',649,'//cs-e.ecimg.tw/items/DEAKPEA900F9XQS/000002_1657279558.jpg','//24h.pchome.com.tw/prod/DEAKPE-A900F9XQS',0,'2022-12-31'),(333,'透氣寵物外出包-粉/單肩背包/外出袋/貓包包/狗包包/提袋/寵物用品外出',999,'//cs-f.ecimg.tw/items/DEAK6QA900EVHTA/000002_1652235507.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900EVHTA',0,'2022-12-31'),(334,'Petoneer 抑菌環保過濾芯片6片裝(新版) 寵物飲水機 寵物用品 貓 狗',750,'//cs-b.ecimg.tw/items/DEAK9IA900FAAY4/000002_1657604334.jpg','//24h.pchome.com.tw/prod/DEAK9I-A900FAAY4',0,'2022-12-31'),(335,'【寵物愛家】新穎商品貓咪狗狗家用吹風機烘乾箱-L(寵物用品)',1200,'//cs-c.ecimg.tw/items/DEAKPCA900FTJI3/000002_1670309061.jpg','//24h.pchome.com.tw/prod/DEAKPC-A900FTJI3',0,'2022-12-31'),(336,'貓窩 摺疊小狗狗貓籠子圍欄狗貓窩寵物用品帳篷幼犬幼貓用產房',1199,'//cs-d.ecimg.tw/items/DEAKB6A900FOOLU/000002_1666690346.jpg','//24h.pchome.com.tw/prod/DEAKB6-A900FOOLU',0,'2022-12-31'),(337,'【常隆】寵物外出包 寵物包 寵物拉桿包 貓包 手提透氣寵物包 寵物提籠提袋 寵物用品',856,'//cs-e.ecimg.tw/items/DEAK6QA900F11FP/000002_1659171198.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900F11FP',0,'2022-12-31'),(338,'寵物待產期封閉式帳篷繁殖箱    貓咪產房狗狗隔離生產用品',1370,'//cs-a.ecimg.tw/items/DEAKZ9A900F8U60/000002_1656663606.jpg','//24h.pchome.com.tw/prod/DEAKZ9-A900F8U60',0,'2022-12-31'),(339,'【2入組】DAWOKO木酢達人-寵物用品消臭抑菌噴霧 175ml (DA-13)',654,'//cs-c.ecimg.tw/items/DEAKP0A900FHCQS/000002_1663047948.jpg','//24h.pchome.com.tw/prod/DEAKP0-A900FHCQS',0,'2022-12-31'),(340,'高級車用寵物墊 寵物車載墊 汽車後座狗狗坐墊 防水 毛孩 黑色',999,'//cs-d.ecimg.tw/items/DEAKR0A900AZPHK/000001_1644837921.jpg','//24h.pchome.com.tw/prod/DEAKR0-A900AZPHK',0,'2022-12-31'),(341,'絨毛貝殼寵物窩【65cm】(多種躺法/雙倍填充) 寵物床 狗窩 貓窩',780,'//cs-e.ecimg.tw/items/DEAK8WA900D7XZR/000002_1665453372.jpg','//24h.pchome.com.tw/prod/DEAK8W-A900D7XZR',0,'2022-12-31'),(342,'【摸肚肚】寵物飛行床',1200,'//cs-f.ecimg.tw/items/DXAM6LA900EYN93/000002_1651198745.jpg','//24h.pchome.com.tw/prod/DXAM6L-A900EYN93',0,'2022-12-31'),(343,'自動循環餵水器 WF060 透明 基本款 1.8L (16.5*16.5*15.5cm)',1299,'//cs-a.ecimg.tw/items/DEAK9IA900FMPJ7/000002_1665119497.jpg','//24h.pchome.com.tw/prod/DEAK9I-A900FMPJ7',0,'2022-12-31'),(344,'寵物牛津布外出後背包-M號(超大容量/底部加固大承重/透氣散熱/寵物外出包)',1180,'//cs-b.ecimg.tw/items/DEAK6QA900F9XRF/000002_1657281299.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900F9XRF',0,'2022-12-31'),(345,'毛小孩寵物鋁板冰涼墊 涼感散熱墊 降溫墊',690,'//cs-c.ecimg.tw/items/DEAKE7A900BUEHS/000001_1633423855.jpg','//24h.pchome.com.tw/prod/DEAKE7-A900BUEHS',0,'2022-12-31'),(346,'犬型可調節寵物碗架-單碗組(護頸可調節/超大口徑/防滑易清理)',699,'//cs-d.ecimg.tw/items/DEAK9KA900F9TS7/000002_1657260808.jpg','//24h.pchome.com.tw/prod/DEAK9K-A900F9TS7',0,'2022-12-31'),(347,'【澳洲 EZYDOG】狗體工學胸背帶 單色系 XXS',658,'//cs-e.ecimg.tw/items/DEAKFSA9008UHH7/000001_1520928830.jpg','//24h.pchome.com.tw/prod/DEAKFS-A9008UHH7',0,'2022-12-31'),(348,'高效櫸木鋁合金貓砂鏟',699,'//cs-f.ecimg.tw/items/DEAKWCA900BOUZ3/000001_1647495061.jpg','//24h.pchome.com.tw/prod/DEAKWC-A900BOUZ3',0,'2022-12-31'),(349,'美國 Petstages 牛肝脈棒 L 寵物 磨牙 潔齒 啃咬 耐咬 防水 狗玩具 安全 寵物玩具',650,'//cs-a.ecimg.tw/items/QFAW7AA900AHE9S/000001_1580374642.jpg','//24h.pchome.com.tw/prod/QFAW7A-A900AHE9S',0,'2022-12-31'),(350,'【GBPH】好寶貝寵物洗毛精-淨白去黃 (法式牛奶糖) 500mL',699,'//cs-b.ecimg.tw/items/QFAW2HA900977CD/000001_1643193052.jpg','//24h.pchome.com.tw/prod/QFAW2H-A900977CD',0,'2022-12-31'),(351,'【GBPH】好寶貝寵物洗毛精-強效去味 (鼠尾草奶茶) 500mL',699,'//cs-c.ecimg.tw/items/QFAW2HA90097B1Q/000001_1643192909.jpg','//24h.pchome.com.tw/prod/QFAW2H-A90097B1Q',0,'2022-12-31'),(352,'CAT&DOG茶籽酵素寵物精油沐浴乳500ml(茉莉花)x2(送乾洗手噴霧50ml)',980,'//cs-d.ecimg.tw/items/QFAW2HA90077DSB/000001_1580793486.jpg','//24h.pchome.com.tw/prod/QFAW2H-A90077DSB',0,'2022-12-31'),(353,'【GBPH】好寶貝寵物洗毛精-幼貓敏感 (水蜜桃紅茶) 500mL',699,'//cs-e.ecimg.tw/items/QFAW2HA90097B2X/000001_1643192841.jpg','//24h.pchome.com.tw/prod/QFAW2H-A90097B2X',0,'2022-12-31'),(354,'【GBPH】好寶貝寵物洗毛精-防蟲驅蚤 (薄荷雪花薑餅人) 500mL',699,'//cs-f.ecimg.tw/items/QFAW2HA900977CR/000001_1643192979.jpg','//24h.pchome.com.tw/prod/QFAW2H-A900977CR',0,'2022-12-31'),(355,'【MIT 藻土屋】寵物可愛刺繡圍兜兜 X4入',676,'//cs-a.ecimg.tw/items/DEAK9MA900B5Y0O/000001_1614322414.jpg','//24h.pchome.com.tw/prod/DEAK9M-A900B5Y0O',0,'2022-12-31'),(356,'寵物透氣外出雙肩後背包-L(透氣大空間 寵物外出包 貓咪外出包 狗狗外出包 貓咪背包)',649,'//cs-b.ecimg.tw/items/DEAK6QA900F96DM/000002_1656931721.jpg','//24h.pchome.com.tw/prod/DEAK6Q-A900F96DM',0,'2022-12-31'),(357,'【組合商品】好寶貝居家環境《抗菌 / 清潔》除臭噴劑《3瓶》 NTD 999',999,'//cs-c.ecimg.tw/items/DEAKP6A9007ILXF/000001_1643227777.jpg','//24h.pchome.com.tw/prod/DEAKP6-A9007ILXF',0,'2022-12-31'),(358,'寵物行軍床【S號】(承重力強/組裝簡易/懸空設計)',799,'//cs-d.ecimg.tw/items/DEAKB4A900B3X42/000001_1611139458.jpg','//24h.pchome.com.tw/prod/DEAKB4-A900B3X42',0,'2022-12-31'),(359,'寵物行軍床【M號】(承重力強/組裝簡易/懸空設計)',849,'//cs-e.ecimg.tw/items/DEAKB4A900B3X41/000001_1611139446.jpg','//24h.pchome.com.tw/prod/DEAKB4-A900B3X41',0,'2022-12-31'),(360,'【寵物愛家】夏季狗狗貓咪解暑防水滿天星冰涼墊-L',900,'//cs-f.ecimg.tw/items/DEAKE7A900BCJSW/000001_1620885417.jpg','//24h.pchome.com.tw/prod/DEAKE7-A900BCJSW',0,'2022-12-31'),(361,'介護系列-(藍色)寵物後肢輔助提拉助行帶L號',639,'//cs-a.ecimg.tw/items/DEAKBXA900863A5/000001_1629720176.jpg','//24h.pchome.com.tw/prod/DEAKBX-A900863A5',0,'2022-12-31'),(362,'好寶貝寵物《天然驅避劑 防舔咬》抗菌除臭噴霧 550ml',650,'//cs-b.ecimg.tw/items/DEAK0GA9007X2EO/000001_1531907369.jpg','//24h.pchome.com.tw/prod/DEAK0G-A9007X2EO',0,'2022-12-31'),(363,'【寵物愛家】寵物前後背雙肩外出攜帶寵物用包',880,'//cs-c.ecimg.tw/items/DEAKEMA9009V4NI/000001_1552374354.jpg','//24h.pchome.com.tw/prod/DEAKEM-A9009V4NI',0,'2022-12-31'),(364,'【GBPH】好寶貝寵物洗毛精-潔白去黃 500mL',690,'//cs-d.ecimg.tw/items/DEAKONA90093LM8/000001_1643301371.jpg','//24h.pchome.com.tw/prod/DEAKON-A90093LM8',0,'2022-12-31'),(365,'【GBPH】好寶貝寵物洗毛精-塑形蓬鬆 500mL',699,'//cs-e.ecimg.tw/items/DEAKONA90093LNU/000001_1643301231.jpg','//24h.pchome.com.tw/prod/DEAKON-A90093LNU',0,'2022-12-31'),(366,'【GBPH】好寶貝寵物洗毛精-除臭驅蚤 500mL',699,'//cs-f.ecimg.tw/items/DEAKOKA90093LP0/000001_1643301646.jpg','//24h.pchome.com.tw/prod/DEAKOK-A90093LP0',0,'2022-12-31'),(367,'【GBPH】【GBPH】好寶貝乾洗澡速潔露 200mL 3入裝',1480,'//cs-a.ecimg.tw/items/DEAKOIA90092RSA/000001_1643317758.jpg','//24h.pchome.com.tw/prod/DEAKOI-A90092RSA',0,'2022-12-31'),(368,'ALL IN ONE 法國香氛乾洗澡消臭抑菌噴霧【香茅檸檬】550mL 2+1',1300,'//cs-b.ecimg.tw/items/QFAW19A90097EHF/000001_1643223045.jpg','//24h.pchome.com.tw/prod/QFAW19-A90097EHF',0,'2022-12-31'),(369,'ALL IN ONE 法國香氛乾洗澡消臭抑菌噴霧【薰衣草花園】550mL 2+1',1300,'//cs-c.ecimg.tw/items/QFAW19A90097EG5/000001_1643223271.jpg','//24h.pchome.com.tw/prod/QFAW19-A90097EG5',0,'2022-12-31'),(370,'【GBPH】好寶貝除臭抗菌地板清潔劑 1200mL 3入裝',1180,'//cs-d.ecimg.tw/items/DEAKP0A90099WGA/000001_1643228203.jpg','//24h.pchome.com.tw/prod/DEAKP0-A90099WGA',0,'2022-12-31'),(371,'【GBPH】好寶貝寵物洗毛精-幼犬敏感 500mL',699,'//cs-e.ecimg.tw/items/DEAKOMA90093LK8/000001_1643301524.jpg','//24h.pchome.com.tw/prod/DEAKOM-A90093LK8',0,'2022-12-31'),(372,'ALL IN ONE 法國香氛乾洗澡消臭抑菌噴霧【檀香鮑勃】550mL 2+1',1300,'//cs-f.ecimg.tw/items/QFAW19A90097EFT/000001_1643223314.jpg','//24h.pchome.com.tw/prod/QFAW19-A90097EFT',0,'2022-12-31'),(373,'ALL IN ONE 法國香氛乾洗澡消臭抑菌噴霧【哈密瓜旋律】550mL 2+1',1300,'//cs-a.ecimg.tw/items/QFAW19A90097EGV/000001_1643223095.jpg','//24h.pchome.com.tw/prod/QFAW19-A90097EGV',0,'2022-12-31'),(374,'寵物外出輕量透氣背包',1190,'//cs-b.ecimg.tw/items/DEAKQLA900BV9KT/000001_1647497048.jpg','//24h.pchome.com.tw/prod/DEAKQL-A900BV9KT',0,'2022-12-31');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,'王大明','M','1997-01-01','123@test.com','快樂莊園','a03ab19b866fc585b5cb1812a2f63ca861e7e7643ee5d43fd7106b623725fd67','2023-01-02');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'受不了麻雀偷吃飼料！飼育員手繪「超跩臉」　網笑：滿滿怨念','//pets.ettoday.net/news/2409093','//cdn2.ettoday.net/images/6771/c6771505.jpg','0000-00-00'),(2,'「超巨蟹司機」爬進駕駛座　他開門直接坐上車...屁屁差點不保','//pets.ettoday.net/news/2409739','//cdn2.ettoday.net/images/6772/c6772752.jpg','0000-00-00'),(3,'獅子大戰豪豬！ 下秒「臉上佈滿刺」...1個月慘吃不了東西','//pets.ettoday.net/news/2408900','//cdn2.ettoday.net/images/5089/c5089352.jpg','0000-00-00'),(4,'奴才染疫可卡犬7天沒梳頭　長成「參天大樹」跟媽同款髮型','//pets.ettoday.net/news/2409764','//cdn2.ettoday.net/images/6772/c6772574.jpg','0000-00-00'),(5,'管理員才休2天！哈士奇見到他「塞肚求抱抱」　媽傻：以為是父女','//pets.ettoday.net/news/2409542','//cdn2.ettoday.net/images/6772/c6772492.jpg','0000-00-00'),(6,'天氣好冷！主人壞笑擺「美味關鍵」　關心嫩雞：要不要洗熱水澡？','//pets.ettoday.net/news/2409362','//cdn2.ettoday.net/images/6771/c6771714.jpg','0000-00-00'),(7,'阿金化身「麋鹿小專車」慶祝耶誕節　下秒前滾翻2圈變意外現場','//pets.ettoday.net/news/2409377','//cdn2.ettoday.net/images/6771/c6771722.jpg','0000-00-00'),(8,'交換禮物收到「活體薑母鴨」　她取了「爆笑名字」：現在吃好住好','//pets.ettoday.net/news/2408797','//cdn2.ettoday.net/images/6771/c6771708.jpg','0000-00-00'),(9,'主人確診發高燒　汪星人深夜暖陪、狂盧陪玩反差反應引熱議','//pets.ettoday.net/news/2409355','//cdn2.ettoday.net/images/6771/c6771676.jpg','0000-00-00'),(10,'狗被猴玩到身體變長？專家「屍體長時間攜帶所致」　點出人是禍首','//pets.ettoday.net/news/2409259','//cdn2.ettoday.net/images/6761/c6761269.jpg','0000-00-00'),(11,'忘記自己長大！巨汪衝懷裡討抱　媽「秒被埋沒」吃力喊：你35KG了','//pets.ettoday.net/news/2408776','//cdn2.ettoday.net/images/6771/c6771610.jpg','0000-00-00'),(12,'小提琴家林昭亮、胡乃元同台演出 林品任頭髮成焦點','//pets.ettoday.net/news/2409311','//cdn2.ettoday.net/images/6771/c6771521.jpg','0000-00-00'),(13,'黑狗穿新買外套驕傲抬頭　「背後經典4字」笑翻千人：好貼切！','//pets.ettoday.net/news/2408927','//cdn2.ettoday.net/images/6771/c6771465.jpg','0000-00-00'),(14,'汪腫瘤破裂急救！混比特「捐血救好友」　找爸撒嬌點餐：燉牛肉～','//pets.ettoday.net/news/2408775','//cdn2.ettoday.net/images/6771/c6771395.jpg','0000-00-00'),(15,'世界第三毒！18歲男海邊遊玩　離奇吞「整隻藍瓶僧帽水母」送醫','//pets.ettoday.net/news/2409250','//cdn2.ettoday.net/images/4187/c4187708.jpg','0000-00-00'),(16,'汪姊妹平安夜「翻肚入眠」　媽感動：牠們本來都是流浪狗','//pets.ettoday.net/news/2409248','//cdn2.ettoday.net/images/6771/c6771287.jpg','0000-00-00'),(17,'洗澡半價倒數3天！貴賓洗完變「黑色棉花糖」香噴噴　還贈超Q領巾','//pets.ettoday.net/news/2408897','//cdn2.ettoday.net/images/6771/c6771187.jpg','0000-00-00'),(18,'東石小黑狗死狀曝！遭獼猴「麵條般拉長」斷脊椎　5天內活活餓死','//pets.ettoday.net/news/2409216','//cdn2.ettoday.net/images/6771/c6771219.jpg','0000-00-00'),(19,'小黑被恐龍抱住四腳僵直　「張嘴驚恐」閃過狗生跑馬燈：要吃我？','//pets.ettoday.net/news/2408958','//cdn2.ettoday.net/images/6770/c6770659.jpg','0000-00-00'),(20,'柯基看醫生！故作堅強露燦笑...下秒被「狂抖小短腿」出賣','//pets.ettoday.net/news/2408850','//cdn2.ettoday.net/images/6770/c6770837.jpg','0000-00-00'),(21,'「人齒魚」護子孫！狠咬浮潛男下面肢體　他痛爆狂罵髒話','//pets.ettoday.net/news/2409068','//cdn2.ettoday.net/images/6770/c6770755.jpg','0000-00-00'),(22,'三花貓「睡成豪放大叔」開腿癱平超軟爛　爸看不下去：你是女生捏','//pets.ettoday.net/news/2408731','//cdn2.ettoday.net/images/6770/c6770665.jpg','0000-00-00'),(23,'飼主搭機旅行「狗不要了」　機長領養回家過溫暖耶誕節','//pets.ettoday.net/news/2409007','//cdn2.ettoday.net/images/6770/c6770632.jpg','0000-00-00'),(24,'爆乳女「癡戀獅子」！跳進展示區扭屁告白…公獅看傻忘攻擊','//pets.ettoday.net/news/2407317','//cdn2.ettoday.net/images/6770/c6770605.jpg','0000-00-00'),(25,'愛貓剛吃飽跑跳！頭頂一陣熱　媽戴「保溫聖誕帽」千人嘴角失守','//pets.ettoday.net/news/2408346','//cdn2.ettoday.net/images/6769/c6769712.jpg','0000-00-00'),(26,'色誘行動失敗！東石獼猴緊抱小黑狗趴趴走　幼犬今離奇掛樹亡','//pets.ettoday.net/news/2408966','//cdn2.ettoday.net/images/6761/c6761269.jpg','0000-00-00'),(27,'翻遍全家找嘸貓！抬頭驚見櫃子上「死亡視線」逼視而來：有事嗎？','//pets.ettoday.net/news/2408934','//cdn2.ettoday.net/images/6770/c6770607.jpg','0000-00-00'),(28,'寵物犬跳上床「意外打開吹風機」　女主人返家發現房子燒毀傻眼','//pets.ettoday.net/news/2408926','//cdn2.ettoday.net/images/6770/c6770511.jpg','0000-00-00'),(29,'軟爛瑪爾濟斯「變可爾必思」　倒頭栽放棄狗生：不想努力了','//pets.ettoday.net/news/2408865','//cdn2.ettoday.net/images/6770/c6770474.jpg','0000-00-00'),(30,'「洞洞聖誕樹」每格填滿貓　貓奴超心動：哪裡買的！','//pets.ettoday.net/news/2408963','//cdn2.ettoday.net/images/6770/c6770479.jpg','0000-00-00'),(31,'這隻藏獒是暖男！媽熱血中途第2隻卻超崩潰　用愛磨合成永遠家人','//pets.ettoday.net/news/2395516','//cdn2.ettoday.net/images/6765/c6765975.jpg','0000-00-00'),(32,'中獸醫提醒「毛孩壓力會牽動五臟六腑」　善用情緒益生菌顧腸胃、改善行為問題','//pets.ettoday.net/news/2404195','//cdn2.ettoday.net/images/6756/c6756917.jpg','0000-00-00'),(33,'「巨嬰可可」離世粉絲傷心　90KG漢草陪玩整天溫柔舔臉頰','//pets.ettoday.net/news/2408427','//cdn2.ettoday.net/images/6769/c6769316.jpg','0000-00-00'),(34,'主人要送貓去醫院　牠肉身壓籠「保護小夥伴」眼神超殺：不准帶走','//pets.ettoday.net/news/2408627','//cdn2.ettoday.net/images/6769/c6769689.jpg','0000-00-00'),(35,'今年聖誕節不用在外流浪　微笑貓貓穿披風「眼神充滿愛」看媽','//pets.ettoday.net/news/2408520','//cdn2.ettoday.net/images/6769/c6769648.jpg','0000-00-00'),(36,'打開暖爐床上聚集3貓　「長方形生物」擠中間笑噴喵奴：以為是豬','//pets.ettoday.net/news/2408591','//cdn2.ettoday.net/images/6769/c6769629.jpg','0000-00-00'),(37,'小時候躺哥哥懷裡眼神無害　黑柴「狗大18變」斜眼露油條憨笑','//pets.ettoday.net/news/2408290','//cdn2.ettoday.net/images/6769/c6769423.jpg','0000-00-00'),(38,'免費健檢延長至1／15　牠坐上診療台秒變「吉娃娃之恥」眼神死超挫','//pets.ettoday.net/news/2408505','//cdn2.ettoday.net/images/6769/c6769492.jpg','0000-00-00'),(39,'家人去買餅乾讓牠顧車　「柴騎士」翹兩腳門口等候：需要外送嗎','//pets.ettoday.net/news/2408288','//cdn2.ettoday.net/images/6768/c6768956.jpg','0000-00-00'),(40,'高山犬可可出門當媽媽保鑣、安撫恐慌症女孩　溫柔身影成追憶','//pets.ettoday.net/news/2408376','//cdn2.ettoday.net/images/6768/c6768817.jpg','0000-00-00'),(41,'快訊／高山犬「巨嬰可可」心肌病器官衰竭離世　肺吸嘸氣媽淚放手','//pets.ettoday.net/news/2408269','//cdn2.ettoday.net/images/6768/c6768538.jpg','0000-00-00'),(42,'「行走糖葫蘆」現身耶誕城秒被大批妹子包圍　阿公苦嘆：比我還忙','//pets.ettoday.net/news/2408255','//cdn2.ettoday.net/images/6768/c6768620.jpg','0000-00-00'),(43,'超討厭洗澡...黃金獵犬淋濕毛變「哀怨老頭」　眼神死笑不出來了','//pets.ettoday.net/news/2407641','//cdn2.ettoday.net/images/6766/c6766493.jpg','0000-00-00'),(44,'我還要玩啦！柴柴「舉手拜託」求跟姐姐玩　無奈遭阿嬤拎著拖走','//pets.ettoday.net/news/2407473','//cdn2.ettoday.net/images/6766/c6766567.jpg','0000-00-00'),(45,'他出門見虎斑貓僵硬癱稻田　準備收屍近看傻眼：R...RAP','//pets.ettoday.net/video/125/354313','//cdn2.ettoday.net/film/images/354/c354313.jpg','0000-00-00'),(46,'打開暖爐床上聚集3喵　　「長方形生物」擠中間笑噴貓奴：以為是豬','//pets.ettoday.net/video/125/358299','//cdn2.ettoday.net/film/images/358/c358299.jpg','0000-00-00'),(47,'新聞雲APP週週躺著抽','https://www.ettoday.net/events/app/ettoday_app.htm','//cdn1.ettoday.net/img/paste/100/100112.jpg','0000-00-00'),(48,'全台房巿供不應求?!何處可買房','https://www.ettoday.net/feature/2021house','//cdn1.ettoday.net/img/paste/102/102124.jpg','0000-00-00'),(49,'【寵物】年終感謝祭','https://shopping.etipets.com/?utm_source=ettoday&utm_medium=banner&utm_campaign=202212_1201&utm_content=sidebar_hot_express','//cdn1.ettoday.net/img/paste/105/105691.gif','0000-00-00'),(50,'ETtoday Podcast聽起來','https://bit.ly/3BNAHIt','//cdn1.ettoday.net/img/paste/100/100033.gif','0000-00-00');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-03 15:55:46
