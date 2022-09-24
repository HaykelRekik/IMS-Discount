-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'X8uTUROJiTtFhDPMZ1o8jlcAs9JFrRvD',1,'2021-12-04 04:49:01','2021-12-04 04:49:01','2021-12-04 04:49:01');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2026-12-04 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(2,'Top Slider Image 2','2026-12-04 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(3,'Homepage middle 1','2026-12-04 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(4,'Homepage middle 2','2026-12-04 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(5,'Homepage middle 3','2026-12-04 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(6,'Homepage big 1','2026-12-04 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(7,'Homepage bottom small','2026-12-04 00:00:00','not_set','A65VYQHVZILK','promotion/7.jpg','/products',0,7,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(8,'Product sidebar','2026-12-04 00:00:00','product-sidebar','3DO8BDIYGFQW','promotion/8.jpg','/products',0,8,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(9,'Homepage big 2','2026-12-04 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2021-12-04 04:49:01','2021-12-04 04:49:01');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Et debitis quos molestias similique ut. Doloribus quis sit assumenda labore voluptates repudiandae sit. Qui sint cumque commodi laudantium totam iste. Unde dolor tempore vel quae qui minus aliquid.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(2,'Fashion',0,'Repellendus eius illo ea corrupti rerum optio. Perferendis nam quis quos est cum. Impedit eum odit iste est qui ut quos accusantium. Impedit commodi rerum eos deleniti facilis eveniet expedita.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(3,'Electronic',0,'Praesentium et nostrum repellendus debitis nostrum harum. Magni vitae laborum repellat voluptas. Dolores vel saepe iste beatae. Odit minima quia iure voluptas nihil et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(4,'Commercial',0,'Soluta quae vel inventore deserunt nulla aut. Aut alias ullam commodi ipsa provident. Hic quod autem alias voluptatum facere omnis tempora officiis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-12-04 04:48:58','2021-12-04 04:48:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Vada Lakin','mitchell.breana@example.net','(832) 478-2313','47226 Jenkins Brooks\nMarvinmouth, WY 70209-1360','Et voluptas quam et hic exercitationem ut.','Rerum repudiandae harum hic odio. Provident deleniti eaque quam veritatis nihil fugit. Velit et qui quae autem quae. Quo ea libero deserunt quos asperiores quisquam. Dolorum voluptatem deleniti molestiae ducimus maiores accusantium. Mollitia dolorem pariatur aperiam odit deleniti facilis. Nulla quam id et aut dolores. Corporis consequatur ut ut mollitia recusandae possimus rem.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54'),(2,'Dr. Nathaniel Ziemann V','abbott.abbie@example.net','689.771.7671','3088 Borer Extensions\nDelilahton, OK 44115','Commodi voluptate aut fugit impedit et officiis.','Mollitia vitae voluptatem et doloribus voluptas a. Velit facilis necessitatibus omnis tempora fugit voluptas saepe. Aut expedita placeat tempore debitis. Blanditiis eum doloribus ea. Deleniti quia doloremque omnis expedita quae velit quo maxime. Hic enim quidem et itaque illum nam iste explicabo. Nesciunt et porro ullam. Ea maiores voluptate sit ad doloribus aliquam. Non voluptatibus alias quia. Rerum non necessitatibus sed ipsam.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54'),(3,'Llewellyn Kunze','alba18@example.org','731.240.0154','978 Arjun Wells\nYvonnehaven, MA 73620','Commodi pariatur eos eligendi hic autem.','Modi dolor et consequatur voluptates et. Aperiam quod placeat est ut quas ad. Placeat itaque quaerat et iusto voluptas aut. Repellendus omnis ut reprehenderit et sed. Aut et dolor tenetur architecto. Consequatur qui consequatur esse sed veniam quo. Sit praesentium totam voluptates. Tenetur cupiditate nam est eum aliquam sapiente. Eligendi voluptate repellendus pariatur illum esse.','read','2021-12-04 04:48:54','2021-12-04 04:48:54'),(4,'Dr. Leon Hermann','rdeckow@example.net','+1-217-470-1765','406 Adrain Park Apt. 853\nEast Dionview, PA 01728','Corporis in saepe molestias reprehenderit aut.','Cum eius sunt animi officiis rerum itaque quasi. Itaque expedita quia omnis cumque voluptates dolorem voluptatem. Recusandae voluptatum sint ut ut et molestias qui. Fugit delectus natus et ut et qui. Quidem quasi laboriosam quod enim et. Omnis dignissimos est quidem totam saepe. Dolores ullam dicta quibusdam voluptatem ab iste ut error. Aut quod ullam ullam odit cupiditate. Ipsa eveniet vel soluta occaecati facilis asperiores maxime.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54'),(5,'Howell Rempel','jerad13@example.com','+17858505939','200 Skiles Wells\nNew Zeldaborough, NJ 97890-4648','Similique maiores qui vel cum cum.','Et et cupiditate commodi et modi. Esse incidunt sunt sequi itaque dolore architecto. Officia eveniet error nobis odit aperiam dolorem distinctio. Voluptatem suscipit doloribus aliquid quos ex aut fugiat. Delectus molestiae error enim veritatis atque dignissimos. Asperiores est eligendi sit quia. Quis perferendis atque repellat ratione. Nihil quia vitae velit corporis. Officia quis voluptatibus adipisci autem. Vel quo quo sint sint sit.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54'),(6,'Berta Monahan Jr.','hammes.ronny@example.net','(657) 518-7364','25072 Mathias Way\nPort Carrollburgh, MA 12015','Aut sed quaerat nam autem sequi qui sunt.','Natus enim animi repellendus. Omnis consequatur velit aut commodi eos aut minima iusto. Ut neque molestias animi dolorum aliquam. Voluptatem beatae et nobis ratione quidem. Qui non soluta quas voluptas iusto. Sed iste labore quod ullam aut nihil. Voluptatem occaecati expedita corporis vero nihil magnam aperiam.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54'),(7,'Jorge Veum MD','rafael79@example.org','320-223-1456','19000 Alia Shore\nLake Grantmouth, MT 07889-2236','Est a omnis eligendi recusandae animi fuga.','Nostrum explicabo architecto corporis animi aliquid ut. Quis autem suscipit commodi exercitationem delectus a qui. Sapiente mollitia ut earum cupiditate asperiores. Vel non voluptatum fuga ullam quas illum. Corrupti ducimus dolorem temporibus rerum velit vel qui. Perferendis et enim repudiandae nam nihil dolor ipsam. Rem consequuntur voluptates ut aut et autem. Qui illo explicabo sit occaecati iste.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54'),(8,'Darrel O\'Reilly','ystehr@example.org','701-315-6045','78756 Caleigh Isle\nEast Lonzofurt, WY 61106-8709','Voluptas voluptas dolor labore molestiae.','Voluptates perferendis odio quis quisquam quo vitae repellat fugiat. Autem ducimus temporibus expedita ratione sint sit. Non ipsa enim nam autem autem qui id. Odit id modi mollitia commodi et cum ut accusantium. Animi fuga in occaecati. Corrupti ut ullam voluptatum sint reiciendis eum. Veritatis iste accusantium velit voluptatem maiores et.','read','2021-12-04 04:48:54','2021-12-04 04:48:54'),(9,'Dr. Eusebio Lebsack MD','sallie64@example.com','+1-912-463-6453','755 Konopelski Shoals Apt. 606\nNew Erinland, NC 80160-3608','Et fugit assumenda architecto dolorem.','Dolorem sunt sunt esse molestiae. Culpa ipsa voluptatem nisi sit rerum temporibus cum. Quo error ullam delectus ut. Aut minus voluptate possimus assumenda culpa accusamus. Iure fugit qui ut recusandae. Non alias ut et consequatur. Repudiandae et numquam qui voluptatum aspernatur. Et excepturi excepturi consequatur illum ea. Cumque facere eveniet et eaque molestias aut aut. Sed labore aut eligendi qui. Porro iste alias non. Laboriosam et dolor enim quisquam.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54'),(10,'Blake Maggio','kathleen.oconner@example.net','+1.423.582.0480','43082 Kyleigh Point\nNew Quintenborough, IN 74568-1641','Dolores non et necessitatibus quis voluptatem.','Et perspiciatis laudantium eos ipsam possimus magnam. Quia a ut fuga. Accusantium ipsam dicta consequuntur officiis cumque eligendi consequatur harum. Eius perferendis voluptatem ullam assumenda laborum consequatur. Molestias rem et aperiam doloribus ea. Enim sint voluptatem in aut veritatis et. Et et alias ab facere consequuntur. Porro et et rerum qui porro et sunt. Asperiores quo voluptatem praesentium nobis sit quas sed.','unread','2021-12-04 04:48:54','2021-12-04 04:48:54');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2021-12-04 04:48:34','2021-12-04 04:48:34');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `decimals` tinyint(3) unsigned DEFAULT 0,
  `order` int(10) unsigned DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(2,'EUR','€',0,2,1,0,0.84,'2021-12-04 04:48:34','2021-12-04 04:48:34'),(3,'VND','₫',0,0,2,0,23203,'2021-12-04 04:48:34','2021-12-04 04:48:34');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Alfredo Heidenreich','customer@botble.com','+12547731957','SZ','South Carolina','Rasheedberg','33017 Domenic Centers Suite 627',1,1,'2021-12-04 04:48:51','2021-12-04 04:48:51','49958-7746'),(2,'Alfredo Heidenreich','customer@botble.com','+14128787506','IQ','Florida','Hoegerbury','877 Scarlett Creek Apt. 241',1,0,'2021-12-04 04:48:51','2021-12-04 04:48:51','00702'),(3,'Dr. Keira Lowe','vendor@botble.com','+12620162178','NR','Wyoming','West Vladimir','72624 Moen Hill',2,1,'2021-12-04 04:48:51','2021-12-04 04:48:51','63771'),(4,'Dr. Keira Lowe','vendor@botble.com','+13214164139','AF','Louisiana','Demarcotown','472 Shields Coves Apt. 877',2,0,'2021-12-04 04:48:51','2021-12-04 04:48:51','14090'),(5,'Ciara Bailey','zoe40@example.org','+18284940216','GH','Massachusetts','New Zachariah','33655 Barrows Center',3,1,'2021-12-04 04:48:51','2021-12-04 04:48:51','13581-4088'),(6,'Deshawn Cummings','heber.okeefe@example.net','+17267186364','KE','Wisconsin','West Adolphusfort','50851 Gleason Plaza Apt. 688',4,1,'2021-12-04 04:48:51','2021-12-04 04:48:51','22197'),(7,'Weston Pacocha','mohr.bria@example.com','+13612165341','SO','Minnesota','Keeblerfort','2148 Wunsch Forges Suite 392',5,1,'2021-12-04 04:48:51','2021-12-04 04:48:51','06786'),(8,'Miss Katelyn Ruecker Jr.','cassie84@example.org','+15409849313','DM','Washington','North Yoshikohaven','52973 Harris Hollow',6,1,'2021-12-04 04:48:51','2021-12-04 04:48:51','72492'),(9,'Jadyn Streich','jenifer95@example.org','+18286852103','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',7,1,'2021-12-04 04:48:52','2021-12-04 04:48:52','51858-7411'),(10,'Holly Weber IV','rogelio48@example.com','+13027172335','IQ','North Dakota','Lake Sierra','416 Keagan Lane Suite 758',8,1,'2021-12-04 04:48:52','2021-12-04 04:48:52','74767-7147'),(11,'Mr. Roy Gaylord Sr.','dmertz@example.net','+12312375963','JP','Florida','Moenborough','6056 Gislason Burgs',9,1,'2021-12-04 04:48:52','2021-12-04 04:48:52','63536'),(12,'Nelson Hickle','jerod40@example.net','+15733994845','JE','Oregon','New Darrelltown','88462 Dana Extensions',10,1,'2021-12-04 04:48:52','2021-12-04 04:48:52','29086-1037');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Alfredo Heidenreich','customer@botble.com','$2y$10$U.Hkp7A1dJ.p.Mw8n7jdJej2WDMstZuRHabFs0TovpkOfqpoIWT36','customers/1.jpg',NULL,'+17736504032',NULL,'2021-12-04 04:48:51','2021-12-04 04:48:51','2021-12-04 11:48:51',NULL,0,NULL,'activated'),(2,'Dr. Keira Lowe','vendor@botble.com','$2y$10$8mdXYkirrAPodSm3RlRFzuVyKxaQjv.A9166n7W2Ac3xHuJCf4KJe','customers/7.jpg',NULL,'+18781588668',NULL,'2021-12-04 04:48:51','2021-12-04 04:49:06','2021-12-04 11:48:51',NULL,1,'2021-12-04 11:49:06','activated'),(3,'Ciara Bailey','zoe40@example.org','$2y$10$HP1jqlZQ4mG3Xeqjl1oRRO5WBU4ajDjM6lACSh7aMdM8GjgwEc8CC','customers/1.jpg',NULL,'+16030966186',NULL,'2021-12-04 04:48:51','2021-12-04 04:49:06','2021-12-04 11:48:51',NULL,1,'2021-12-04 11:49:06','activated'),(4,'Deshawn Cummings','heber.okeefe@example.net','$2y$10$6j8j8ueIz6ZnvnSkHtof5Ob4ud.oRBDOE9vqOUE1RxLCiHFH5sIjK','customers/2.jpg',NULL,'+18307064385',NULL,'2021-12-04 04:48:51','2021-12-04 04:49:07','2021-12-04 11:48:51',NULL,1,'2021-12-04 11:49:07','activated'),(5,'Weston Pacocha','mohr.bria@example.com','$2y$10$G7oqhr1TD5xbJfdYdVBd2eSl/NWw1Yc3RLZveRf5MPViHLrRVRajq','customers/3.jpg',NULL,'+15306576082',NULL,'2021-12-04 04:48:51','2021-12-04 04:49:07','2021-12-04 11:48:51',NULL,1,'2021-12-04 11:49:07','activated'),(6,'Miss Katelyn Ruecker Jr.','cassie84@example.org','$2y$10$YN4KOOEi1Kg6gfRpTJ9j4u.hXKxhARqH0LZ2xAx/l5ua6PuW1rAci','customers/4.jpg',NULL,'+19406085499',NULL,'2021-12-04 04:48:51','2021-12-04 04:48:51','2021-12-04 11:48:51',NULL,0,NULL,'activated'),(7,'Jadyn Streich','jenifer95@example.org','$2y$10$.YhRIcqIl.564hEwCq9pA./VSW04aY684rGT8KOuKo8U5fI4k7ei6','customers/5.jpg',NULL,'+15047803686',NULL,'2021-12-04 04:48:52','2021-12-04 04:48:52','2021-12-04 11:48:52',NULL,0,NULL,'activated'),(8,'Holly Weber IV','rogelio48@example.com','$2y$10$X3FMQNPgEsQ85wYeH.hoje5KRwHX1.NSjvu7lYxAI7sJ0n2SBuw..','customers/6.jpg',NULL,'+12531323312',NULL,'2021-12-04 04:48:52','2021-12-04 04:49:07','2021-12-04 11:48:52',NULL,1,'2021-12-04 11:49:07','activated'),(9,'Mr. Roy Gaylord Sr.','dmertz@example.net','$2y$10$Lkg9.H4FK33/X.5FJ1sgP.cG10GP1ohdMbbWMW/jJsbTX2OWylAKe','customers/7.jpg',NULL,'+13314115513',NULL,'2021-12-04 04:48:52','2021-12-04 04:49:07','2021-12-04 11:48:52',NULL,1,'2021-12-04 11:49:07','activated'),(10,'Nelson Hickle','jerod40@example.net','$2y$10$jkq3QuvEIxxvic1YZDfeIuKMNsXKLWPctXA8Z/OkYXpFkUWBPO/eW','customers/8.jpg',NULL,'+16162037988',NULL,'2021-12-04 04:48:52','2021-12-04 04:48:52','2021-12-04 11:48:52',NULL,0,NULL,'activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_collection_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) unsigned NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `sold` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,50.5575,8,1),(1,2,19.44,19,4),(1,3,7.4,8,2),(1,4,200.039,20,1),(1,5,503.44,10,5),(1,6,124.62,16,3),(1,7,469.78,11,2),(1,8,793.2672,15,2),(1,9,332.92,18,5),(1,10,794.88,18,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2022-01-03 00:00:00','published','2021-12-04 04:48:53','2021-12-04 04:48:53');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',1,'51858-7411'),(2,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',2,'51858-7411'),(3,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',3,'29086-1037'),(4,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',4,'29086-1037'),(5,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',5,'29086-1037'),(6,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',6,'29086-1037'),(7,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',7,'29086-1037'),(8,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',8,'29086-1037'),(9,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',9,'51858-7411'),(10,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',10,'51858-7411'),(11,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',11,'51858-7411'),(12,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',12,'51858-7411'),(13,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',13,'51858-7411'),(14,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',14,'51858-7411'),(15,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',15,'51858-7411'),(16,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',16,'72492'),(17,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',17,'72492'),(18,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',18,'72492'),(19,'Alfredo Heidenreich','+12547731957','customer@botble.com','SZ','South Carolina','Rasheedberg','33017 Domenic Centers Suite 627',19,'49958-7746'),(20,'Alfredo Heidenreich','+12547731957','customer@botble.com','SZ','South Carolina','Rasheedberg','33017 Domenic Centers Suite 627',20,'49958-7746'),(21,'Alfredo Heidenreich','+12547731957','customer@botble.com','SZ','South Carolina','Rasheedberg','33017 Domenic Centers Suite 627',21,'49958-7746'),(22,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',22,'51858-7411'),(23,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',23,'51858-7411'),(24,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',24,'51858-7411'),(25,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',25,'51858-7411'),(26,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',26,'51858-7411'),(27,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',27,'51858-7411'),(28,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',28,'51858-7411'),(29,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',29,'29086-1037'),(30,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',30,'29086-1037'),(31,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',31,'29086-1037'),(32,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',32,'51858-7411'),(33,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',33,'51858-7411'),(34,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',34,'51858-7411'),(35,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',35,'51858-7411'),(36,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',36,'51858-7411'),(37,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',37,'72492'),(38,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',38,'72492'),(39,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',39,'72492'),(40,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',40,'72492'),(41,'Miss Katelyn Ruecker Jr.','+15409849313','cassie84@example.org','DM','Washington','North Yoshikohaven','52973 Harris Hollow',41,'72492'),(42,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',42,'29086-1037'),(43,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',43,'29086-1037'),(44,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',44,'29086-1037'),(45,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',45,'29086-1037'),(46,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',46,'29086-1037'),(47,'Nelson Hickle','+15733994845','jerod40@example.net','JE','Oregon','New Darrelltown','88462 Dana Extensions',47,'29086-1037'),(48,'Alfredo Heidenreich','+12547731957','customer@botble.com','SZ','South Carolina','Rasheedberg','33017 Domenic Centers Suite 627',48,'49958-7746'),(49,'Alfredo Heidenreich','+12547731957','customer@botble.com','SZ','South Carolina','Rasheedberg','33017 Domenic Centers Suite 627',49,'49958-7746'),(50,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',50,'51858-7411'),(51,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',51,'51858-7411'),(52,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',52,'51858-7411'),(53,'Jadyn Streich','+18286852103','jenifer95@example.org','TT','Idaho','Port Reyes','98510 Mertz Ville Apt. 436',53,'51858-7411');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2021-11-17 12:49:07','2021-11-17 12:49:07'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2021-11-17 12:49:07','2021-11-17 12:49:07'),(3,'confirm_payment','Payment was confirmed (amount $1,246.20) by %user_name%',0,1,NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(5,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(6,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2021-11-17 12:49:07','2021-11-17 12:49:07'),(7,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2021-11-17 12:49:07','2021-11-17 12:49:07'),(8,'confirm_payment','Payment was confirmed (amount $2,966.10) by %user_name%',0,2,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(9,'create_shipment','Created shipment for order',0,2,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(10,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(11,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2021-11-19 22:49:08','2021-11-19 22:49:08'),(12,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2021-11-19 22:49:08','2021-11-19 22:49:08'),(13,'confirm_payment','Payment was confirmed (amount $1,328.18) by %user_name%',0,3,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(14,'create_shipment','Created shipment for order',0,3,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2021-11-24 16:49:08','2021-11-24 16:49:08'),(16,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2021-11-24 16:49:08','2021-11-24 16:49:08'),(17,'confirm_payment','Payment was confirmed (amount $44.55) by %user_name%',0,4,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(18,'create_shipment','Created shipment for order',0,4,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(19,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2021-12-01 00:49:08','2021-12-01 00:49:08'),(21,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2021-12-01 00:49:08','2021-12-01 00:49:08'),(22,'confirm_payment','Payment was confirmed (amount $844.20) by %user_name%',0,5,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(23,'create_shipment','Created shipment for order',0,5,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(24,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2021-11-29 16:49:08','2021-11-29 16:49:08'),(25,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2021-11-29 16:49:08','2021-11-29 16:49:08'),(26,'confirm_payment','Payment was confirmed (amount $2,344.80) by %user_name%',0,6,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(27,'create_shipment','Created shipment for order',0,6,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2021-11-22 04:49:08','2021-11-22 04:49:08'),(29,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2021-11-22 04:49:08','2021-11-22 04:49:08'),(30,'confirm_payment','Payment was confirmed (amount $844.20) by %user_name%',0,7,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(31,'create_shipment','Created shipment for order',0,7,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(32,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2021-11-25 04:49:08','2021-11-25 04:49:08'),(34,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2021-11-25 04:49:08','2021-11-25 04:49:08'),(35,'confirm_payment','Payment was confirmed (amount $1,082.40) by %user_name%',0,8,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(36,'create_shipment','Created shipment for order',0,8,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(37,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2021-12-01 08:49:08','2021-12-01 08:49:08'),(38,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2021-12-01 08:49:08','2021-12-01 08:49:08'),(39,'create_shipment','Created shipment for order',0,9,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(40,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(41,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2021-11-29 22:49:08','2021-11-29 22:49:08'),(42,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2021-11-29 22:49:08','2021-11-29 22:49:08'),(43,'confirm_payment','Payment was confirmed (amount $3,620.80) by %user_name%',0,10,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(44,'create_shipment','Created shipment for order',0,10,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(45,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,10,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(46,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2021-11-23 12:49:08','2021-11-23 12:49:08'),(47,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2021-11-23 12:49:08','2021-11-23 12:49:08'),(48,'confirm_payment','Payment was confirmed (amount $168.53) by %user_name%',0,11,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(49,'create_shipment','Created shipment for order',0,11,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(50,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2021-11-22 04:49:08','2021-11-22 04:49:08'),(52,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2021-11-22 04:49:08','2021-11-22 04:49:08'),(53,'confirm_payment','Payment was confirmed (amount $1,246.20) by %user_name%',0,12,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(54,'create_shipment','Created shipment for order',0,12,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(55,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2021-11-26 04:49:08','2021-11-26 04:49:08'),(57,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2021-11-26 04:49:08','2021-11-26 04:49:08'),(58,'confirm_payment','Payment was confirmed (amount $6,458.40) by %user_name%',0,13,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(59,'create_shipment','Created shipment for order',0,13,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(60,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(61,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2021-11-26 16:49:08','2021-11-26 16:49:08'),(62,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2021-11-26 16:49:08','2021-11-26 16:49:08'),(63,'confirm_payment','Payment was confirmed (amount $988.90) by %user_name%',0,14,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(64,'create_shipment','Created shipment for order',0,14,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(65,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2021-11-21 16:49:08','2021-11-21 16:49:08'),(66,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2021-11-21 16:49:08','2021-11-21 16:49:08'),(67,'confirm_payment','Payment was confirmed (amount $1,134.00) by %user_name%',0,15,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(68,'create_shipment','Created shipment for order',0,15,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(69,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2021-12-03 00:49:08','2021-12-03 00:49:08'),(71,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2021-12-03 00:49:08','2021-12-03 00:49:08'),(72,'confirm_payment','Payment was confirmed (amount $3,705.85) by %user_name%',0,16,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(73,'create_shipment','Created shipment for order',0,16,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(74,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(75,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2021-11-27 04:49:08','2021-11-27 04:49:08'),(76,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2021-11-27 04:49:08','2021-11-27 04:49:08'),(77,'confirm_payment','Payment was confirmed (amount $1,205.40) by %user_name%',0,17,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(78,'create_shipment','Created shipment for order',0,17,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(79,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(80,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(81,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(82,'confirm_payment','Payment was confirmed (amount $872.30) by %user_name%',0,18,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(83,'create_shipment','Created shipment for order',0,18,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(84,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(85,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2021-11-24 10:49:08','2021-11-24 10:49:08'),(86,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2021-11-24 10:49:08','2021-11-24 10:49:08'),(87,'confirm_payment','Payment was confirmed (amount $3,943.20) by %user_name%',0,19,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(88,'create_shipment','Created shipment for order',0,19,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(89,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2021-11-24 10:49:08','2021-11-24 10:49:08'),(90,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2021-11-24 10:49:08','2021-11-24 10:49:08'),(91,'confirm_payment','Payment was confirmed (amount $2,786.90) by %user_name%',0,20,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(92,'create_shipment','Created shipment for order',0,20,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2021-11-23 08:49:08','2021-11-23 08:49:08'),(94,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2021-11-23 08:49:08','2021-11-23 08:49:08'),(95,'create_shipment','Created shipment for order',0,21,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(96,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,21,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(98,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(99,'create_shipment','Created shipment for order',0,22,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2021-11-28 04:49:08','2021-11-28 04:49:08'),(101,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2021-11-28 04:49:08','2021-11-28 04:49:08'),(102,'confirm_payment','Payment was confirmed (amount $1,073.10) by %user_name%',0,23,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(103,'create_shipment','Created shipment for order',0,23,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(104,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2021-11-29 04:49:08','2021-11-29 04:49:08'),(105,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2021-11-29 04:49:08','2021-11-29 04:49:08'),(106,'confirm_payment','Payment was confirmed (amount $3,267.40) by %user_name%',0,24,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(107,'create_shipment','Created shipment for order',0,24,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(108,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,24,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2021-12-01 10:49:08','2021-12-01 10:49:08'),(110,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2021-12-01 10:49:08','2021-12-01 10:49:08'),(111,'confirm_payment','Payment was confirmed (amount $1,246.20) by %user_name%',0,25,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(112,'create_shipment','Created shipment for order',0,25,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(113,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2021-11-30 12:49:08','2021-11-30 12:49:08'),(115,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2021-11-30 12:49:08','2021-11-30 12:49:08'),(116,'confirm_payment','Payment was confirmed (amount $1,284.80) by %user_name%',0,26,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(117,'create_shipment','Created shipment for order',0,26,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(118,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,26,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(119,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2021-11-25 22:49:08','2021-11-25 22:49:08'),(120,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2021-11-25 22:49:08','2021-11-25 22:49:08'),(121,'confirm_payment','Payment was confirmed (amount $565.40) by %user_name%',0,27,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(122,'create_shipment','Created shipment for order',0,27,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(123,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,27,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2021-12-02 08:49:08','2021-12-02 08:49:08'),(125,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2021-12-02 08:49:08','2021-12-02 08:49:08'),(126,'confirm_payment','Payment was confirmed (amount $3,050.40) by %user_name%',0,28,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(127,'create_shipment','Created shipment for order',0,28,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(128,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2021-11-28 08:49:08','2021-11-28 08:49:08'),(129,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2021-11-28 08:49:08','2021-11-28 08:49:08'),(130,'create_shipment','Created shipment for order',0,29,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(131,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,29,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(132,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2021-11-29 04:49:08','2021-11-29 04:49:08'),(133,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2021-11-29 04:49:08','2021-11-29 04:49:08'),(134,'confirm_payment','Payment was confirmed (amount $2,915.10) by %user_name%',0,30,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(135,'create_shipment','Created shipment for order',0,30,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(136,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2021-11-25 20:49:08','2021-11-25 20:49:08'),(137,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2021-11-25 20:49:08','2021-11-25 20:49:08'),(138,'confirm_payment','Payment was confirmed (amount $1,677.90) by %user_name%',0,31,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(139,'create_shipment','Created shipment for order',0,31,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2021-11-26 16:49:08','2021-11-26 16:49:08'),(141,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2021-11-26 16:49:08','2021-11-26 16:49:08'),(142,'create_shipment','Created shipment for order',0,32,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(143,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,32,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2021-11-30 10:49:08','2021-11-30 10:49:08'),(145,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2021-11-30 10:49:08','2021-11-30 10:49:08'),(146,'confirm_payment','Payment was confirmed (amount $2,123.50) by %user_name%',0,33,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(147,'create_shipment','Created shipment for order',0,33,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(148,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(149,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2021-11-28 20:49:08','2021-11-28 20:49:08'),(150,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2021-11-28 20:49:08','2021-11-28 20:49:08'),(151,'confirm_payment','Payment was confirmed (amount $42.00) by %user_name%',0,34,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(152,'create_shipment','Created shipment for order',0,34,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(153,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2021-12-02 20:49:08','2021-12-02 20:49:08'),(154,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2021-12-02 20:49:08','2021-12-02 20:49:08'),(155,'confirm_payment','Payment was confirmed (amount $1,887.90) by %user_name%',0,35,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(156,'create_shipment','Created shipment for order',0,35,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(157,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2021-11-30 20:49:08','2021-11-30 20:49:08'),(158,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2021-11-30 20:49:08','2021-11-30 20:49:08'),(159,'confirm_payment','Payment was confirmed (amount $1,079.40) by %user_name%',0,36,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(160,'create_shipment','Created shipment for order',0,36,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(161,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(162,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2021-12-01 20:49:08','2021-12-01 20:49:08'),(163,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2021-12-01 20:49:08','2021-12-01 20:49:08'),(164,'confirm_payment','Payment was confirmed (amount $1,188.60) by %user_name%',0,37,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(165,'create_shipment','Created shipment for order',0,37,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(166,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,37,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(167,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2021-12-01 20:49:08','2021-12-01 20:49:08'),(168,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2021-12-01 20:49:08','2021-12-01 20:49:08'),(169,'confirm_payment','Payment was confirmed (amount $1,284.80) by %user_name%',0,38,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(170,'create_shipment','Created shipment for order',0,38,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(171,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2021-12-02 10:49:08','2021-12-02 10:49:08'),(172,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2021-12-02 10:49:08','2021-12-02 10:49:08'),(173,'create_shipment','Created shipment for order',0,39,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(174,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(175,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(176,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(177,'confirm_payment','Payment was confirmed (amount $753.50) by %user_name%',0,40,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(178,'create_shipment','Created shipment for order',0,40,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(179,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(180,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(181,'confirm_payment','Payment was confirmed (amount $4,537.50) by %user_name%',0,41,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(182,'create_shipment','Created shipment for order',0,41,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(183,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2021-11-30 00:49:08','2021-11-30 00:49:08'),(185,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2021-11-30 00:49:08','2021-11-30 00:49:08'),(186,'confirm_payment','Payment was confirmed (amount $85.05) by %user_name%',0,42,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(187,'create_shipment','Created shipment for order',0,42,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(188,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(189,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2021-11-30 10:49:08','2021-11-30 10:49:08'),(190,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2021-11-30 10:49:08','2021-11-30 10:49:08'),(191,'confirm_payment','Payment was confirmed (amount $42.00) by %user_name%',0,43,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(192,'create_shipment','Created shipment for order',0,43,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(193,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,43,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(194,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2021-12-02 12:49:08','2021-12-02 12:49:08'),(195,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2021-12-02 12:49:08','2021-12-02 12:49:08'),(196,'confirm_payment','Payment was confirmed (amount $1,366.20) by %user_name%',0,44,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(197,'create_shipment','Created shipment for order',0,44,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(198,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2021-11-30 00:49:08','2021-11-30 00:49:08'),(199,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2021-11-30 00:49:08','2021-11-30 00:49:08'),(200,'create_shipment','Created shipment for order',0,45,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(201,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(202,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2021-12-03 20:49:08','2021-12-03 20:49:08'),(203,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2021-12-03 20:49:08','2021-12-03 20:49:08'),(204,'confirm_payment','Payment was confirmed (amount $1,779.40) by %user_name%',0,46,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(205,'create_shipment','Created shipment for order',0,46,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(206,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,46,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(207,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(208,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(209,'confirm_payment','Payment was confirmed (amount $1,779.40) by %user_name%',0,47,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(210,'create_shipment','Created shipment for order',0,47,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(211,'create_order_from_seeder','Order is created from the checkout page',NULL,48,NULL,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(212,'confirm_order','Order was verified by %user_name%',0,48,NULL,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(213,'confirm_payment','Payment was confirmed (amount $125.55) by %user_name%',0,48,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(214,'create_shipment','Created shipment for order',0,48,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(215,'create_order_from_seeder','Order is created from the checkout page',NULL,49,NULL,'2021-12-02 10:49:08','2021-12-02 10:49:08'),(216,'confirm_order','Order was verified by %user_name%',0,49,NULL,'2021-12-02 10:49:08','2021-12-02 10:49:08'),(217,'confirm_payment','Payment was confirmed (amount $2,123.50) by %user_name%',0,49,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(218,'create_shipment','Created shipment for order',0,49,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(219,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,49,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(220,'create_order_from_seeder','Order is created from the checkout page',NULL,50,NULL,'2021-12-03 20:49:08','2021-12-03 20:49:08'),(221,'confirm_order','Order was verified by %user_name%',0,50,NULL,'2021-12-03 20:49:08','2021-12-03 20:49:08'),(222,'confirm_payment','Payment was confirmed (amount $1,188.60) by %user_name%',0,50,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(223,'create_shipment','Created shipment for order',0,50,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(224,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,50,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(225,'create_order_from_seeder','Order is created from the checkout page',NULL,51,NULL,'2021-12-03 16:49:08','2021-12-03 16:49:08'),(226,'confirm_order','Order was verified by %user_name%',0,51,NULL,'2021-12-03 16:49:08','2021-12-03 16:49:08'),(227,'confirm_payment','Payment was confirmed (amount $1,066.80) by %user_name%',0,51,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(228,'create_shipment','Created shipment for order',0,51,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(229,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,51,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(230,'create_order_from_seeder','Order is created from the checkout page',NULL,52,NULL,'2021-12-03 12:49:08','2021-12-03 12:49:08'),(231,'confirm_order','Order was verified by %user_name%',0,52,NULL,'2021-12-03 12:49:08','2021-12-03 12:49:08'),(232,'confirm_payment','Payment was confirmed (amount $6,073.60) by %user_name%',0,52,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(233,'create_shipment','Created shipment for order',0,52,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(234,'create_order_from_seeder','Order is created from the checkout page',NULL,53,NULL,'2021-12-03 12:49:08','2021-12-03 12:49:08'),(235,'confirm_order','Order was verified by %user_name%',0,53,NULL,'2021-12-03 12:49:08','2021-12-03 12:49:08'),(236,'confirm_payment','Payment was confirmed (amount $1,665.30) by %user_name%',0,53,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(237,'create_shipment','Created shipment for order',0,53,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(238,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,53,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(239,'update_status','Order confirmed by %user_name%',0,1,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(240,'update_status','Order confirmed by %user_name%',0,2,NULL,'2021-12-04 04:49:09','2021-12-04 04:49:09'),(241,'update_status','Order confirmed by %user_name%',0,4,NULL,'2021-12-04 04:49:09','2021-12-04 04:49:09'),(242,'update_status','Order confirmed by %user_name%',0,7,NULL,'2021-12-04 04:49:09','2021-12-04 04:49:09'),(243,'update_status','Order confirmed by %user_name%',0,10,NULL,'2021-12-04 04:49:09','2021-12-04 04:49:09'),(244,'update_status','Order confirmed by %user_name%',0,11,NULL,'2021-12-04 04:49:09','2021-12-04 04:49:09'),(245,'update_status','Order confirmed by %user_name%',0,12,NULL,'2021-12-04 04:49:09','2021-12-04 04:49:09'),(246,'update_status','Order confirmed by %user_name%',0,13,NULL,'2021-12-04 04:49:10','2021-12-04 04:49:10'),(247,'update_status','Order confirmed by %user_name%',0,15,NULL,'2021-12-04 04:49:10','2021-12-04 04:49:10'),(248,'update_status','Order confirmed by %user_name%',0,16,NULL,'2021-12-04 04:49:10','2021-12-04 04:49:10'),(249,'update_status','Order confirmed by %user_name%',0,17,NULL,'2021-12-04 04:49:10','2021-12-04 04:49:10'),(250,'update_status','Order confirmed by %user_name%',0,18,NULL,'2021-12-04 04:49:10','2021-12-04 04:49:10'),(251,'update_status','Order confirmed by %user_name%',0,24,NULL,'2021-12-04 04:49:10','2021-12-04 04:49:10'),(252,'update_status','Order confirmed by %user_name%',0,25,NULL,'2021-12-04 04:49:10','2021-12-04 04:49:10'),(253,'update_status','Order confirmed by %user_name%',0,26,NULL,'2021-12-04 04:49:11','2021-12-04 04:49:11'),(254,'update_status','Order confirmed by %user_name%',0,27,NULL,'2021-12-04 04:49:11','2021-12-04 04:49:11'),(255,'update_status','Order confirmed by %user_name%',0,33,NULL,'2021-12-04 04:49:11','2021-12-04 04:49:11'),(256,'update_status','Order confirmed by %user_name%',0,36,NULL,'2021-12-04 04:49:11','2021-12-04 04:49:11'),(257,'update_status','Order confirmed by %user_name%',0,37,NULL,'2021-12-04 04:49:11','2021-12-04 04:49:11'),(258,'update_status','Order confirmed by %user_name%',0,41,NULL,'2021-12-04 04:49:11','2021-12-04 04:49:11'),(259,'update_status','Order confirmed by %user_name%',0,42,NULL,'2021-12-04 04:49:11','2021-12-04 04:49:11'),(260,'update_status','Order confirmed by %user_name%',0,43,NULL,'2021-12-04 04:49:12','2021-12-04 04:49:12'),(261,'update_status','Order confirmed by %user_name%',0,46,NULL,'2021-12-04 04:49:12','2021-12-04 04:49:12'),(262,'update_status','Order confirmed by %user_name%',0,49,NULL,'2021-12-04 04:49:12','2021-12-04 04:49:12'),(263,'update_status','Order confirmed by %user_name%',0,50,NULL,'2021-12-04 04:49:12','2021-12-04 04:49:12'),(264,'update_status','Order confirmed by %user_name%',0,51,NULL,'2021-12-04 04:49:12','2021-12-04 04:49:12'),(265,'update_status','Order confirmed by %user_name%',0,53,NULL,'2021-12-04 04:49:12','2021-12-04 04:49:12');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) unsigned DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,3,402.00,40.20,'[]',40,'Nikon HD camera',2535.00,0,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(2,2,2,540.00,54.00,'[]',62,'Sound Intone I65 Earphone White Version',1300.00,0,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(3,2,3,591.00,59.10,'[]',64,'B&O Play Mini Bluetooth Speaker',2028.00,0,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(4,3,3,80.25,8.03,'[]',24,'Dual Camera 20MP',2199.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(5,3,2,514.00,51.40,'[]',58,'EPSION Plaster Printer',1450.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(6,4,1,40.50,4.05,'[]',28,'Smart Watches',655.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(7,5,2,402.00,40.20,'[]',40,'Nikon HD camera',1690.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(8,6,3,574.00,57.40,'[]',31,'Red & Black Headphone',1650.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(9,6,1,514.00,51.40,'[]',56,'EPSION Plaster Printer',725.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(10,7,2,402.00,40.20,'[]',41,'Nikon HD camera',1690.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(11,8,1,984.00,98.40,'[]',73,'NYX Beauty Couton Pallete Makeup 12',613.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(12,9,1,1242.00,124.20,'[]',50,'Herschel Leather Duffle Bag In Brown Color',561.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(13,10,3,1168.00,116.80,'[]',53,'Xbox One Wireless Controller Black Color',2169.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(14,11,2,80.25,8.03,'[]',25,'Dual Camera 20MP',1466.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(15,12,3,402.00,40.20,'[]',38,'Nikon HD camera',2535.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(16,13,2,1242.00,124.20,'[]',50,'Herschel Leather Duffle Bag In Brown Color',1122.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(17,13,3,1242.00,124.20,'[]',51,'Herschel Leather Duffle Bag In Brown Color',1683.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(18,14,1,899.00,89.90,'[]',37,'Smart Watch External',509.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(19,15,2,540.00,54.00,'[]',62,'Sound Intone I65 Earphone White Version',1300.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(20,16,2,40.50,4.05,'[]',27,'Smart Watches',1310.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(21,16,3,1168.00,116.80,'[]',52,'Xbox One Wireless Controller Black Color',2169.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(22,17,2,574.00,57.40,'[]',31,'Red & Black Headphone',1100.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(23,18,1,793.00,79.30,'[]',82,'Ciate Palemore Lipstick Bold Red Color',807.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(24,19,3,20.00,2.00,'[]',30,'Beat Headphone',2160.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(25,19,3,1252.00,125.20,'[]',47,'Smart Televisions',2667.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(26,20,3,899.00,89.90,'[]',35,'Smart Watch External',1527.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(27,21,3,540.00,54.00,'[]',61,'Sound Intone I65 Earphone White Version',1950.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(28,22,1,899.00,89.90,'[]',35,'Smart Watch External',509.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(29,23,2,511.00,51.10,'[]',68,'Apple MacBook Air Retina 12-Inch Laptop',1528.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(30,24,3,1054.00,105.40,'[]',72,'Aveeno Moisturizing Body Shower 450ml',1827.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(31,25,3,402.00,40.20,'[]',38,'Nikon HD camera',2535.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(32,26,1,1168.00,116.80,'[]',53,'Xbox One Wireless Controller Black Color',723.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(33,27,1,514.00,51.40,'[]',59,'EPSION Plaster Printer',725.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(34,28,3,984.00,98.40,'[]',74,'NYX Beauty Couton Pallete Makeup 12',1839.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(35,29,3,1168.00,116.80,'[]',54,'Xbox One Wireless Controller Black Color',2169.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(36,30,3,540.00,54.00,'[]',60,'Sound Intone I65 Earphone White Version',1950.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(37,30,2,591.00,59.10,'[]',63,'B&O Play Mini Bluetooth Speaker',1352.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(38,31,2,799.00,79.90,'[]',76,'NYX Beauty Couton Pallete Makeup 12',1690.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(39,32,2,574.00,57.40,'[]',34,'Red & Black Headphone',1100.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(40,33,3,685.00,68.50,'[]',78,'Baxter Care Hair Kit For Bearded Mens',1977.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(41,34,2,20.00,2.00,'[]',30,'Beat Headphone',1440.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(42,35,2,899.00,89.90,'[]',36,'Smart Watch External',1018.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(43,36,2,514.00,51.40,'[]',55,'EPSION Plaster Printer',1450.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(44,37,2,566.00,56.60,'[]',42,'Audio Equipment',1340.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(45,38,1,1168.00,116.80,'[]',52,'Xbox One Wireless Controller Black Color',723.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(46,39,1,1054.00,105.40,'[]',71,'Aveeno Moisturizing Body Shower 450ml',609.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(47,40,1,685.00,68.50,'[]',80,'Baxter Care Hair Kit For Bearded Mens',659.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(48,41,3,540.00,54.00,'[]',60,'Sound Intone I65 Earphone White Version',1950.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(49,41,1,591.00,59.10,'[]',63,'B&O Play Mini Bluetooth Speaker',676.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(50,41,2,1054.00,105.40,'[]',72,'Aveeno Moisturizing Body Shower 450ml',1218.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(51,42,2,40.50,4.05,'[]',29,'Smart Watches',1310.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(52,43,2,20.00,2.00,'[]',30,'Beat Headphone',1440.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(53,44,1,1242.00,124.20,'[]',50,'Herschel Leather Duffle Bag In Brown Color',561.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(54,45,1,984.00,98.40,'[]',73,'NYX Beauty Couton Pallete Makeup 12',613.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(55,46,3,574.00,57.40,'[]',32,'Red & Black Headphone',1650.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(56,47,3,574.00,57.40,'[]',48,'Samsung Smart Phone',1656.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(57,48,3,40.50,4.05,'[]',29,'Smart Watches',1965.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(58,49,3,685.00,68.50,'[]',80,'Baxter Care Hair Kit For Bearded Mens',1977.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(59,50,2,566.00,56.60,'[]',43,'Audio Equipment',1340.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(60,51,2,508.00,50.80,'[]',69,'Samsung Gear VR Virtual Reality Headset',1044.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(61,52,2,1168.00,116.80,'[]',53,'Xbox One Wireless Controller Black Color',1446.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(62,52,3,1168.00,116.80,'[]',54,'Xbox One Wireless Controller Black Color',2169.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(63,53,2,793.00,79.30,'[]',83,'Ciate Palemore Lipstick Bold Red Color',1614.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 1,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,7,'1','default','completed',1246.20,40.20,0.00,NULL,NULL,0.00,1206.00,1,NULL,1,'C8KYJpqfAeuCsad3GHpLOBLMUEBgz',1,'2021-11-17 12:49:07','2021-12-04 04:49:08',1),(2,7,'1','default','completed',2966.10,113.10,0.00,NULL,NULL,0.00,2853.00,1,NULL,1,'cYJkEwqSeUnvP3RUfwHzmOktgmGMn',2,'2021-11-17 12:49:07','2021-12-04 04:49:09',6),(3,10,'1','default','pending',1328.18,59.43,0.00,NULL,NULL,0.00,1268.75,1,NULL,1,'c5DD9qgQLqYzJifHlddqcVajLxHE2',3,'2021-11-19 22:49:08','2021-12-04 04:49:08',2),(4,10,'1','default','completed',44.55,4.05,0.00,NULL,NULL,0.00,40.50,1,NULL,1,'DDK0H5rAwEOAx4mc70wKim0YnlXad',4,'2021-11-24 16:49:08','2021-12-04 04:49:09',3),(5,10,'1','default','pending',844.20,40.20,0.00,NULL,NULL,0.00,804.00,1,NULL,1,'qXsLxlNrN7l1XMPUF1r8Eoiy9UVPi',5,'2021-12-01 00:49:08','2021-12-04 04:49:08',1),(6,10,'1','default','pending',2344.80,108.80,0.00,NULL,NULL,0.00,2236.00,1,NULL,1,'N4rZHckui0tcWKFIC7B0DXaUvypYx',6,'2021-11-29 16:49:08','2021-12-04 04:49:08',2),(7,10,'1','default','completed',844.20,40.20,0.00,NULL,NULL,0.00,804.00,1,NULL,1,'5mqqOqL4CeXZgnh0V7QqsecIAf3o6',7,'2021-11-22 04:49:08','2021-12-04 04:49:09',1),(8,10,'1','default','pending',1082.40,98.40,0.00,NULL,NULL,0.00,984.00,1,NULL,1,'3MFFrnEN5DahEGeUKq8fFDAaV3Xt0',8,'2021-11-25 04:49:08','2021-12-04 04:49:08',4),(9,7,'1','default','pending',1366.20,124.20,0.00,NULL,NULL,0.00,1242.00,1,NULL,1,'UNyKT200qpZjyGfEinqkOQkOqO9Yp',9,'2021-12-01 08:49:08','2021-12-04 04:49:08',5),(10,7,'1','default','completed',3620.80,116.80,0.00,NULL,NULL,0.00,3504.00,1,NULL,1,'SKJtqgbO3JKNV9EyZvbD8iRcNC87T',10,'2021-11-29 22:49:08','2021-12-04 04:49:09',3),(11,7,'1','default','completed',168.53,8.03,0.00,NULL,NULL,0.00,160.50,1,NULL,1,'VtWDi3FnCc3uBEDVnWK2SXFXwBEvO',11,'2021-11-23 12:49:08','2021-12-04 04:49:09',2),(12,7,'1','default','completed',1246.20,40.20,0.00,NULL,NULL,0.00,1206.00,1,NULL,1,'FWP4rLQZjb3NctAwtOAym76ZhtLVa',12,'2021-11-22 04:49:08','2021-12-04 04:49:09',1),(13,7,'1','default','completed',6458.40,248.40,0.00,NULL,NULL,0.00,6210.00,1,NULL,1,'Zn8etwpOFGRrRJSLGNoeug2KCsw4e',13,'2021-11-26 04:49:08','2021-12-04 04:49:10',5),(14,7,'1','default','pending',988.90,89.90,0.00,NULL,NULL,0.00,899.00,1,NULL,1,'E6Ts7sCiZulaZm8Z8yK8Vc8moFRhk',14,'2021-11-26 16:49:08','2021-12-04 04:49:08',3),(15,7,'1','default','completed',1134.00,54.00,0.00,NULL,NULL,0.00,1080.00,1,NULL,1,'NxSiU6TeRo5C2uww0CNNAInCpO4du',15,'2021-11-21 16:49:08','2021-12-04 04:49:10',6),(16,6,'1','default','completed',3705.85,120.85,0.00,NULL,NULL,0.00,3585.00,1,NULL,1,'5zqDi9VGL4IKGMv6vklMLkHsWcFZf',16,'2021-12-03 00:49:08','2021-12-04 04:49:10',3),(17,6,'1','default','completed',1205.40,57.40,0.00,NULL,NULL,0.00,1148.00,1,NULL,1,'OPhxUqJ07tsmAeuDhK1jlNVpUs8Xl',17,'2021-11-27 04:49:08','2021-12-04 04:49:10',2),(18,6,'1','default','completed',872.30,79.30,0.00,NULL,NULL,0.00,793.00,1,NULL,1,'JZsClE8YOZe3CxyWWoOwomIxFlWol',18,'2021-11-30 16:49:08','2021-12-04 04:49:10',1),(19,1,'1','default','pending',3943.20,127.20,0.00,NULL,NULL,0.00,3816.00,1,NULL,1,'ymynwLVfQb0VTN2xGE2mojPU1JyAT',19,'2021-11-24 10:49:08','2021-12-04 04:49:08',1),(20,1,'1','default','pending',2786.90,89.90,0.00,NULL,NULL,0.00,2697.00,1,NULL,1,'rxd5dnA6aDuA9ogjA03PlssZPpNtN',20,'2021-11-24 10:49:08','2021-12-04 04:49:08',3),(21,1,'1','default','pending',1674.00,54.00,0.00,NULL,NULL,0.00,1620.00,1,NULL,1,'qZVAqzQZBOSGkd3UWqBg0rHsKYqNI',21,'2021-11-23 08:49:08','2021-12-04 04:49:08',6),(22,7,'1','default','pending',988.90,89.90,0.00,NULL,NULL,0.00,899.00,1,NULL,1,'KwwdTNRpkKIAcLXtRyEEqAgYhKMiI',22,'2021-12-03 04:49:08','2021-12-04 04:49:08',3),(23,7,'1','default','pending',1073.10,51.10,0.00,NULL,NULL,0.00,1022.00,1,NULL,1,'c6VTPnnFrI6lOr5iFxKYGSLG1U7Ji',23,'2021-11-28 04:49:08','2021-12-04 04:49:08',5),(24,7,'1','default','completed',3267.40,105.40,0.00,NULL,NULL,0.00,3162.00,1,NULL,1,'qpfe7rChxmsUkz3zo3FDmGKSyAt6T',24,'2021-11-29 04:49:08','2021-12-04 04:49:10',6),(25,7,'1','default','completed',1246.20,40.20,0.00,NULL,NULL,0.00,1206.00,1,NULL,1,'XVogEZNKMcXKbdik2Cmn0kbLOFO4m',25,'2021-12-01 10:49:08','2021-12-04 04:49:10',1),(26,7,'1','default','completed',1284.80,116.80,0.00,NULL,NULL,0.00,1168.00,1,NULL,1,'Ahu3lxa60p16jpuCpak4mw49brdVk',26,'2021-11-30 12:49:08','2021-12-04 04:49:11',3),(27,7,'1','default','completed',565.40,51.40,0.00,NULL,NULL,0.00,514.00,1,NULL,1,'SEs7WPE9hofLyYbvlJmhnroB22HtQ',27,'2021-11-25 22:49:08','2021-12-04 04:49:11',2),(28,7,'1','default','pending',3050.40,98.40,0.00,NULL,NULL,0.00,2952.00,1,NULL,1,'diATS0K4sF18mIah1483FRNWOk8eZ',28,'2021-12-02 08:49:08','2021-12-04 04:49:08',4),(29,10,'1','default','pending',3620.80,116.80,0.00,NULL,NULL,0.00,3504.00,1,NULL,1,'Ss8MbaT9bvKDCK6mVEakqk1k3xtuf',29,'2021-11-28 08:49:08','2021-12-04 04:49:08',3),(30,10,'1','default','pending',2915.10,113.10,0.00,NULL,NULL,0.00,2802.00,1,NULL,1,'tQ3IKoi5ruMipAt60rFYVzkcLDBwM',30,'2021-11-29 04:49:08','2021-12-04 04:49:08',6),(31,10,'1','default','pending',1677.90,79.90,0.00,NULL,NULL,0.00,1598.00,1,NULL,1,'v6sSYCcEVWhpn1G0H89cVTXNmYUqx',31,'2021-11-25 20:49:08','2021-12-04 04:49:08',1),(32,7,'1','default','pending',1205.40,57.40,0.00,NULL,NULL,0.00,1148.00,1,NULL,1,'tBxhf5IVfeeA74UlwWfEo0iE6znCj',32,'2021-11-26 16:49:08','2021-12-04 04:49:08',2),(33,7,'1','default','completed',2123.50,68.50,0.00,NULL,NULL,0.00,2055.00,1,NULL,1,'BHku7BHPtHDnqI6hfZDGjm9IgW45L',33,'2021-11-30 10:49:08','2021-12-04 04:49:11',5),(34,7,'1','default','pending',42.00,2.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'jELhktROnq3MU2qc1MtYYoJlil9Dz',34,'2021-11-28 20:49:08','2021-12-04 04:49:08',1),(35,7,'1','default','pending',1887.90,89.90,0.00,NULL,NULL,0.00,1798.00,1,NULL,1,'KYTLP4RsDXq1l1FVYKFDyjcTtzt0z',35,'2021-12-02 20:49:08','2021-12-04 04:49:08',3),(36,7,'1','default','completed',1079.40,51.40,0.00,NULL,NULL,0.00,1028.00,1,NULL,1,'xGdIUJ6lJYm6GlZhKtcKArxSaoylI',36,'2021-11-30 20:49:08','2021-12-04 04:49:11',2),(37,6,'1','default','completed',1188.60,56.60,0.00,NULL,NULL,0.00,1132.00,1,NULL,1,'1YSgHYMkRXKSTjgZNNkkNbnUGXSby',37,'2021-12-01 20:49:08','2021-12-04 04:49:11',2),(38,6,'1','default','pending',1284.80,116.80,0.00,NULL,NULL,0.00,1168.00,1,NULL,1,'AN7zCVu3STxz4CTGtK6VPVXZw9lGi',38,'2021-12-01 20:49:08','2021-12-04 04:49:08',3),(39,6,'1','default','pending',1159.40,105.40,0.00,NULL,NULL,0.00,1054.00,1,NULL,1,'8YNkNO26XRYD7CshJsjUe5oRu8is9',39,'2021-12-02 10:49:08','2021-12-04 04:49:08',6),(40,6,'1','default','pending',753.50,68.50,0.00,NULL,NULL,0.00,685.00,1,NULL,1,'fQaupnpk6IlauwMIc9CqRaa5l1n59',40,'2021-11-30 16:49:08','2021-12-04 04:49:08',5),(41,6,'1','default','completed',4537.50,218.50,0.00,NULL,NULL,0.00,4319.00,1,NULL,1,'97nE91ospBV3ZFWSssin6iIK1Kr6T',41,'2021-11-30 16:49:08','2021-12-04 04:49:11',6),(42,10,'1','default','completed',85.05,4.05,0.00,NULL,NULL,0.00,81.00,1,NULL,1,'TREtT0TwCvkDvc4nz9vbwyauuom9S',42,'2021-11-30 00:49:08','2021-12-04 04:49:11',3),(43,10,'1','default','completed',42.00,2.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'X5IgHW6AZlFJNuxE6IezrlKYAXxPJ',43,'2021-11-30 10:49:08','2021-12-04 04:49:12',1),(44,10,'1','default','pending',1366.20,124.20,0.00,NULL,NULL,0.00,1242.00,1,NULL,1,'Go7mJ6pc3X6naGexSOeQMENFo65kU',44,'2021-12-02 12:49:08','2021-12-04 04:49:08',5),(45,10,'1','default','pending',1082.40,98.40,0.00,NULL,NULL,0.00,984.00,1,NULL,1,'JHD5NFnoCOYJu0YMrD5fUUe8ekkqI',45,'2021-11-30 00:49:08','2021-12-04 04:49:08',4),(46,10,'1','default','completed',1779.40,57.40,0.00,NULL,NULL,0.00,1722.00,1,NULL,1,'NrJzsNaOlHnYbgPUkn8FDRIrTmnWF',46,'2021-12-03 20:49:08','2021-12-04 04:49:12',2),(47,10,'1','default','pending',1779.40,57.40,0.00,NULL,NULL,0.00,1722.00,1,NULL,1,'1K5EY2tHRB8ozHAeTwLVG0pXdl79x',47,'2021-12-03 04:49:08','2021-12-04 04:49:08',4),(48,1,'1','default','pending',125.55,4.05,0.00,NULL,NULL,0.00,121.50,1,NULL,1,'dzUOpZ0wezzZcVawrEynwghTeJmxM',48,'2021-12-03 04:49:08','2021-12-04 04:49:08',3),(49,1,'1','default','completed',2123.50,68.50,0.00,NULL,NULL,0.00,2055.00,1,NULL,1,'quNXcerYVyPsSkDS23USzgB0hMXj1',49,'2021-12-02 10:49:08','2021-12-04 04:49:12',5),(50,7,'1','default','completed',1188.60,56.60,0.00,NULL,NULL,0.00,1132.00,1,NULL,1,'nntepr6iq6LaljcHCRICu4hnGL4zE',50,'2021-12-03 20:49:08','2021-12-04 04:49:12',2),(51,7,'1','default','completed',1066.80,50.80,0.00,NULL,NULL,0.00,1016.00,1,NULL,1,'1pk4sWDN45SqMZwYHSLx6nlfTDR2z',51,'2021-12-03 16:49:08','2021-12-04 04:49:12',5),(52,7,'1','default','pending',6073.60,233.60,0.00,NULL,NULL,0.00,5840.00,1,NULL,1,'8NghFraHUw1r8D0SVWQ4paMaBTpsP',52,'2021-12-03 12:49:08','2021-12-04 04:49:08',3),(53,7,'1','default','completed',1665.30,79.30,0.00,NULL,NULL,0.00,1586.00,1,NULL,1,'iD0CFIxLydXlsgwoHu09959ATtyWN',53,'2021-12-03 12:49:08','2021-12-04 04:49:12',1);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2021-12-04 04:48:49','2021-12-04 04:48:49'),(2,'Size','size','text',1,1,1,'published',1,'2021-12-04 04:48:49','2021-12-04 04:48:49');
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(6,2,'S','s',NULL,NULL,1,1,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(7,2,'M','m',NULL,NULL,0,2,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(8,2,'L','l',NULL,NULL,0,3,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2021-12-04 04:48:49','2021-12-04 04:48:49'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2021-12-04 04:48:49','2021-12-04 04:48:49');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(23,'Networking',17,NULL,'published',1,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2021-12-04 04:48:35','2021-12-04 04:48:35');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,17,1),(2,22,1),(3,24,1),(4,15,1),(5,29,2),(6,7,2),(7,8,2),(8,31,2),(9,1,3),(10,26,3),(11,32,3),(12,16,4),(13,24,4),(14,18,4),(15,22,4),(16,9,5),(17,5,5),(18,7,5),(19,30,5),(20,13,6),(21,1,6),(22,37,6),(23,23,6),(24,10,7),(25,22,7),(26,37,7),(27,20,7),(28,37,8),(29,30,8),(30,9,8),(31,34,8),(32,26,9),(33,11,9),(34,15,9),(35,36,9),(36,35,10),(37,32,10),(38,4,10),(39,31,10),(40,28,11),(41,7,11),(42,22,11),(43,25,11),(44,20,12),(45,21,12),(46,29,12),(47,23,12),(48,16,13),(49,3,13),(50,32,13),(51,19,14),(52,5,14),(53,26,14),(54,20,14),(55,37,15),(56,33,15),(57,30,15),(58,1,16),(59,22,16),(60,20,16),(61,19,16),(62,28,17),(63,16,17),(64,37,17),(65,31,17),(66,32,18),(67,12,18),(68,34,18),(69,26,18),(70,7,19),(71,18,19),(72,9,19),(73,26,19),(74,27,20),(75,22,20),(76,5,20),(77,23,20),(78,11,21),(79,36,21),(80,28,21),(81,17,21),(82,34,22),(83,13,22),(84,24,22),(85,28,22),(86,28,23),(87,24,23),(88,3,23),(89,32,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3,1),(2,1,2),(3,2,3),(4,3,4),(5,2,5),(6,1,6),(7,1,7),(8,2,8),(9,3,9),(10,1,10),(11,2,11),(12,3,12),(13,2,13),(14,2,14),(15,2,15),(16,1,16),(17,2,17),(18,3,18),(19,2,19),(20,3,20),(21,1,21),(22,2,22),(23,1,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2021-12-04 04:48:35','2021-12-04 04:48:35',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2021-12-04 04:48:35','2021-12-04 04:48:35',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2021-12-04 04:48:35','2021-12-04 04:48:35',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,9),(2,1,17),(3,1,16),(4,1,6),(5,1,10),(6,1,20),(7,2,20),(8,2,16),(9,2,19),(10,2,1),(11,2,4),(12,2,13),(13,3,16),(14,3,9),(15,3,6),(16,3,2),(17,3,19),(18,3,17),(19,3,13),(20,4,5),(21,4,17),(22,4,6),(23,4,16),(24,4,1),(25,4,19),(26,4,12),(27,5,13),(28,5,3),(29,5,8),(30,5,6),(31,5,11),(32,6,9),(33,6,19),(34,6,11),(35,6,18),(36,6,13),(37,6,10),(38,7,9),(39,7,18),(40,7,15),(41,7,4),(42,7,20),(43,8,2),(44,8,18),(45,8,6),(46,8,16),(47,8,19),(48,8,12),(49,9,12),(50,9,5),(51,9,4),(52,9,20),(53,9,16),(54,9,10),(55,10,4),(56,10,7),(57,10,6),(58,10,15),(59,10,20),(60,10,9),(61,10,16),(62,11,3),(63,11,13),(64,11,7),(65,11,16),(66,11,8),(67,11,17),(68,12,19),(69,12,5),(70,12,6),(71,12,3),(72,12,16),(73,12,1),(74,12,15),(75,13,18),(76,13,11),(77,13,10),(78,13,15),(79,13,4),(80,14,7),(81,14,8),(82,14,6),(83,14,12),(84,14,3),(85,14,16),(86,15,6),(87,15,7),(88,15,3),(89,15,9),(90,15,2),(91,15,14),(92,15,1),(93,16,20),(94,16,15),(95,16,6),(96,16,2),(97,16,9),(98,16,8),(99,17,19),(100,17,20),(101,17,1),(102,17,7),(103,17,12),(104,17,16),(105,18,6),(106,18,7),(107,18,2),(108,18,14),(109,18,5),(110,18,19),(111,19,14),(112,19,1),(113,19,10),(114,19,18),(115,19,20),(116,19,16),(117,19,2),(118,20,7),(119,20,19),(120,20,5),(121,20,2),(122,20,11),(123,20,16),(124,21,8),(125,21,12),(126,21,7),(127,21,4),(128,21,13),(129,21,15),(130,21,11),(131,22,11),(132,22,14),(133,22,18),(134,22,17),(135,22,7),(136,22,5),(137,23,15),(138,23,13),(139,23,1),(140,23,8),(141,23,7),(142,23,19);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,12),(2,9),(2,18),(3,15),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2021-12-04 04:48:35','2021-12-04 04:48:35'),(2,'New','#00c9a7','published','2021-12-04 04:48:35','2021-12-04 04:48:35'),(3,'Sale','#fe9931','published','2021-12-04 04:48:35','2021-12-04 04:48:35');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(1,6),(2,1),(2,3),(2,5),(3,4),(3,6),(4,3),(4,4),(4,5),(5,1),(5,5),(6,2),(6,4),(6,6),(7,1),(7,3),(7,6),(8,1),(8,6),(9,1),(9,2),(9,6),(10,1),(10,3),(11,2),(11,4),(11,5),(12,2),(12,3),(12,6),(13,1),(13,2),(13,6),(14,3),(14,4),(15,2),(15,3),(15,5),(16,4),(16,6),(17,2),(17,5),(18,3),(18,4),(18,6),(19,3),(19,4),(19,6),(20,2),(20,4),(20,5),(21,2),(21,4),(21,5),(22,1),(22,2),(22,6),(23,1),(23,2),(23,3);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2021-12-04 04:48:53','2021-12-04 04:48:53'),(2,'Mobile',NULL,'published','2021-12-04 04:48:53','2021-12-04 04:48:53'),(3,'Iphone',NULL,'published','2021-12-04 04:48:53','2021-12-04 04:48:53'),(4,'Printer',NULL,'published','2021-12-04 04:48:53','2021-12-04 04:48:53'),(5,'Office',NULL,'published','2021-12-04 04:48:53','2021-12-04 04:48:53'),(6,'IT',NULL,'published','2021-12-04 04:48:53','2021-12-04 04:48:53');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `variation_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,5,1),(2,7,1),(3,2,2),(4,6,2),(5,4,3),(6,9,3),(7,4,4),(8,8,4),(9,5,5),(10,7,5),(11,5,6),(12,9,6),(13,5,7),(14,8,7),(15,4,8),(16,7,8),(17,1,9),(18,7,9),(19,2,10),(20,8,10),(21,5,11),(22,8,11),(23,4,12),(24,8,12),(25,1,13),(26,8,13),(27,2,14),(28,8,14),(29,2,15),(30,7,15),(31,3,16),(32,10,16),(33,5,17),(34,6,17),(35,2,18),(36,9,18),(37,1,19),(38,7,19),(39,4,20),(40,7,20),(41,3,21),(42,7,21),(43,3,22),(44,9,22),(45,3,23),(46,10,23),(47,5,24),(48,6,24),(49,4,25),(50,8,25),(51,2,26),(52,6,26),(53,3,27),(54,6,27),(55,5,28),(56,8,28),(57,3,29),(58,7,29),(59,3,30),(60,8,30),(61,1,31),(62,10,31),(63,5,32),(64,7,32),(65,1,33),(66,6,33),(67,4,34),(68,6,34),(69,5,35),(70,7,35),(71,1,36),(72,6,36),(73,4,37),(74,6,37),(75,1,38),(76,8,38),(77,3,39),(78,10,39),(79,3,40),(80,7,40),(81,4,41),(82,6,41),(83,5,42),(84,9,42),(85,3,43),(86,9,43),(87,5,44),(88,7,44),(89,5,45),(90,10,45),(91,2,46),(92,10,46),(93,1,47),(94,8,47),(95,2,48),(96,10,48),(97,1,49),(98,6,49),(99,5,50),(100,10,50),(101,1,51),(102,9,51),(103,2,52),(104,6,52),(105,4,53),(106,6,53),(107,1,54),(108,9,54),(109,2,55),(110,9,55),(111,3,56),(112,9,56),(113,1,57),(114,6,57),(115,2,58),(116,8,58),(117,2,59),(118,8,59),(119,4,60),(120,10,60);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `configurable_product_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,2,0),(5,28,2,0),(6,29,2,0),(7,30,3,1),(8,31,4,1),(9,32,4,0),(10,33,4,0),(11,34,4,0),(12,35,5,1),(13,36,5,0),(14,37,5,0),(15,38,6,1),(16,39,6,0),(17,40,6,0),(18,41,6,0),(19,42,7,1),(20,43,7,0),(21,44,7,0),(22,45,8,1),(23,46,8,0),(24,47,8,0),(25,48,9,1),(26,49,9,0),(27,50,10,1),(28,51,10,0),(29,52,11,1),(30,53,11,0),(31,54,11,0),(32,55,12,1),(33,56,12,0),(34,57,12,0),(35,58,12,0),(36,59,12,0),(37,60,13,1),(38,61,13,0),(39,62,13,0),(40,63,14,1),(41,64,14,0),(42,65,14,0),(43,66,15,1),(44,67,16,1),(45,68,16,0),(46,69,17,1),(47,70,17,0),(48,71,18,1),(49,72,18,0),(50,73,19,1),(51,74,19,0),(52,75,19,0),(53,76,20,1),(54,77,21,1),(55,78,22,1),(56,79,22,0),(57,80,22,0),(58,81,22,0),(59,82,23,1),(60,83,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute`
--

DROP TABLE IF EXISTS `ec_product_with_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute`
--

LOCK TABLES `ec_product_with_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute` VALUES (1,5,1),(2,6,1),(3,4,2),(4,7,2),(5,3,3),(6,6,3),(7,1,4),(8,10,4),(9,1,5),(10,7,5),(11,5,6),(12,9,6),(13,4,7),(14,8,7),(15,2,8),(16,7,8),(17,5,9),(18,8,9),(19,3,10),(20,10,10),(21,4,11),(22,6,11),(23,2,12),(24,9,12),(25,3,13),(26,9,13),(27,1,14),(28,8,14),(29,1,15),(30,8,15),(31,3,16),(32,10,16),(33,1,17),(34,7,17),(35,4,18),(36,6,18),(37,2,19),(38,10,19),(39,2,20),(40,8,20),(41,4,21),(42,10,21),(43,4,22),(44,10,22),(45,1,23),(46,7,23);
/*!40000 ALTER TABLE `ec_product_with_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) unsigned DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int(10) unsigned DEFAULT NULL,
  `created_by_id` int(11) DEFAULT 0,
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-187-A0',0,13,0,1,1,1,0,0,80.25,NULL,NULL,NULL,15.00,18.00,11.00,733.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,32804,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-130-A0',0,13,0,1,1,2,0,0,40.5,NULL,NULL,NULL,19.00,20.00,10.00,655.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,49165,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-144-A0',0,18,0,1,1,3,0,0,20,NULL,NULL,NULL,17.00,16.00,15.00,720.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,136478,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-147-A0',0,14,0,1,1,5,0,0,574,487.9,NULL,NULL,19.00,12.00,14.00,550.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,26264,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-184-A0',0,18,0,1,1,6,0,0,899,NULL,NULL,NULL,11.00,19.00,16.00,509.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,77673,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-117-A0',0,20,0,1,1,5,0,0,402,NULL,NULL,NULL,10.00,18.00,18.00,845.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,104565,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-199-A0',0,16,0,1,1,7,0,0,566,NULL,NULL,NULL,12.00,18.00,13.00,670.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,143928,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-126-A0',0,17,0,1,1,6,0,0,1252,901.44,NULL,NULL,19.00,20.00,17.00,889.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,142343,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-153-A0',0,11,0,1,1,5,0,0,574,NULL,NULL,NULL,11.00,20.00,17.00,552.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,60409,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-196-A0',0,19,0,1,0,4,0,0,1242,NULL,NULL,NULL,10.00,13.00,13.00,561.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,82332,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-169-A0',0,16,0,1,0,5,0,0,1168,NULL,NULL,NULL,18.00,11.00,11.00,723.00,'2021-12-04 04:48:48','2021-12-04 04:49:07',1,42472,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-100-A0',0,12,0,1,0,2,0,0,514,431.76,NULL,NULL,13.00,13.00,20.00,725.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,191516,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-166-A0',0,12,0,1,0,4,0,0,540,NULL,NULL,NULL,12.00,19.00,15.00,650.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,190393,'in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-123-A0',0,10,0,1,0,2,0,0,591,NULL,NULL,NULL,12.00,14.00,18.00,676.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,3418,'in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-130-A0',0,11,0,1,0,3,0,0,519,NULL,NULL,NULL,19.00,15.00,18.00,803.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,91990,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-200-A0',0,11,0,1,0,3,0,0,511,413.91,NULL,NULL,14.00,14.00,14.00,764.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,172072,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-182-A0',0,19,0,1,0,7,0,0,508,NULL,NULL,NULL,12.00,17.00,14.00,522.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,186390,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-116-A0',0,11,0,1,0,6,0,0,1054,NULL,NULL,NULL,16.00,10.00,15.00,609.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,80994,'in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-146-A0',0,10,0,1,0,6,0,0,984,NULL,NULL,NULL,18.00,15.00,11.00,613.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,85130,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-170-A0',0,11,0,1,0,6,0,0,799,583.27,NULL,NULL,19.00,20.00,12.00,845.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,57789,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-118-A0',0,19,0,1,0,1,0,0,801,NULL,NULL,NULL,13.00,15.00,14.00,749.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,180654,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-159-A0',0,19,0,1,0,6,0,0,685,NULL,NULL,NULL,13.00,17.00,16.00,659.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,106154,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-111-A0',0,16,0,1,0,6,0,0,793,NULL,NULL,NULL,18.00,13.00,12.00,807.00,'2021-12-04 04:48:49','2021-12-04 04:49:07',1,174170,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-187-A0',0,13,0,1,0,1,1,0,80.25,NULL,NULL,NULL,15.00,18.00,11.00,733.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-187-A0-A1',0,13,0,1,0,1,1,0,80.25,NULL,NULL,NULL,15.00,18.00,11.00,733.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-130-A0',0,13,0,1,0,2,1,0,40.5,NULL,NULL,NULL,19.00,20.00,10.00,655.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-130-A0-A1',0,13,0,1,0,2,1,0,40.5,NULL,NULL,NULL,19.00,20.00,10.00,655.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-130-A0-A2',0,13,0,1,0,2,1,0,40.5,NULL,NULL,NULL,19.00,20.00,10.00,655.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'Smart Watches',NULL,NULL,'published','[\"products\\/2-3.jpg\"]','SW-130-A0-A3',0,13,0,1,0,2,1,0,40.5,NULL,NULL,NULL,19.00,20.00,10.00,655.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-144-A0',0,18,0,1,0,3,1,0,20,NULL,NULL,NULL,17.00,16.00,15.00,720.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-147-A0',0,14,0,1,0,5,1,0,574,487.9,NULL,NULL,19.00,12.00,14.00,550.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-147-A0-A1',0,14,0,1,0,5,1,0,574,487.9,NULL,NULL,19.00,12.00,14.00,550.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','SW-147-A0-A2',0,14,0,1,0,5,1,0,574,487.9,NULL,NULL,19.00,12.00,14.00,550.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-3.jpg\"]','SW-147-A0-A3',0,14,0,1,0,5,1,0,574,413.28,NULL,NULL,19.00,12.00,14.00,550.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-184-A0',0,18,0,1,0,6,1,0,899,NULL,NULL,NULL,11.00,19.00,16.00,509.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-184-A0-A1',0,18,0,1,0,6,1,0,899,NULL,NULL,NULL,11.00,19.00,16.00,509.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-184-A0-A2',0,18,0,1,0,6,1,0,899,NULL,NULL,NULL,11.00,19.00,16.00,509.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-117-A0',0,20,0,1,0,5,1,0,402,NULL,NULL,NULL,10.00,18.00,18.00,845.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-117-A0-A1',0,20,0,1,0,5,1,0,402,NULL,NULL,NULL,10.00,18.00,18.00,845.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-117-A0-A2',0,20,0,1,0,5,1,0,402,NULL,NULL,NULL,10.00,18.00,18.00,845.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-117-A0-A3',0,20,0,1,0,5,1,0,402,NULL,NULL,NULL,10.00,18.00,18.00,845.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-199-A0',0,16,0,1,0,7,1,0,566,NULL,NULL,NULL,12.00,18.00,13.00,670.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-199-A0-A1',0,16,0,1,0,7,1,0,566,NULL,NULL,NULL,12.00,18.00,13.00,670.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-199-A0-A2',0,16,0,1,0,7,1,0,566,NULL,NULL,NULL,12.00,18.00,13.00,670.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-126-A0',0,17,0,1,0,6,1,0,1252,901.44,NULL,NULL,19.00,20.00,17.00,889.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-126-A0-A1',0,17,0,1,0,6,1,0,1252,964.04,NULL,NULL,19.00,20.00,17.00,889.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-2.jpg\"]','SW-126-A0-A2',0,17,0,1,0,6,1,0,1252,939,NULL,NULL,19.00,20.00,17.00,889.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-153-A0',0,11,0,1,0,5,1,0,574,NULL,NULL,NULL,11.00,20.00,17.00,552.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-153-A0-A1',0,11,0,1,0,5,1,0,574,NULL,NULL,NULL,11.00,20.00,17.00,552.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-196-A0',0,19,0,1,0,4,1,0,1242,NULL,NULL,NULL,10.00,13.00,13.00,561.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-196-A0-A1',0,19,0,1,0,4,1,0,1242,NULL,NULL,NULL,10.00,13.00,13.00,561.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-169-A0',0,16,0,1,0,5,1,0,1168,NULL,NULL,NULL,18.00,11.00,11.00,723.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-169-A0-A1',0,16,0,1,0,5,1,0,1168,NULL,NULL,NULL,18.00,11.00,11.00,723.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-169-A0-A2',0,16,0,1,0,5,1,0,1168,NULL,NULL,NULL,18.00,11.00,11.00,723.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-100-A0',0,12,0,1,0,2,1,0,514,431.76,NULL,NULL,13.00,13.00,20.00,725.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-100-A0-A1',0,12,0,1,0,2,1,0,514,411.2,NULL,NULL,13.00,13.00,20.00,725.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-100-A0-A2',0,12,0,1,0,2,1,0,514,395.78,NULL,NULL,13.00,13.00,20.00,725.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-3.jpg\"]','SW-100-A0-A3',0,12,0,1,0,2,1,0,514,364.94,NULL,NULL,13.00,13.00,20.00,725.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-100-A0-A4',0,12,0,1,0,2,1,0,514,385.5,NULL,NULL,13.00,13.00,20.00,725.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-166-A0',0,12,0,1,0,4,1,0,540,NULL,NULL,NULL,12.00,19.00,15.00,650.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-166-A0-A1',0,12,0,1,0,4,1,0,540,NULL,NULL,NULL,12.00,19.00,15.00,650.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-166-A0-A2',0,12,0,1,0,4,1,0,540,NULL,NULL,NULL,12.00,19.00,15.00,650.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-123-A0',0,10,0,1,0,2,1,0,591,NULL,NULL,NULL,12.00,14.00,18.00,676.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-123-A0-A1',0,10,0,1,0,2,1,0,591,NULL,NULL,NULL,12.00,14.00,18.00,676.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-123-A0-A2',0,10,0,1,0,2,1,0,591,NULL,NULL,NULL,12.00,14.00,18.00,676.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-130-A0',0,11,0,1,0,3,1,0,519,NULL,NULL,NULL,19.00,15.00,18.00,803.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-200-A0',0,11,0,1,0,3,1,0,511,413.91,NULL,NULL,14.00,14.00,14.00,764.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-200-A0-A1',0,11,0,1,0,3,1,0,511,459.9,NULL,NULL,14.00,14.00,14.00,764.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-182-A0',0,19,0,1,0,7,1,0,508,NULL,NULL,NULL,12.00,17.00,14.00,522.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-182-A0-A1',0,19,0,1,0,7,1,0,508,NULL,NULL,NULL,12.00,17.00,14.00,522.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-116-A0',0,11,0,1,0,6,1,0,1054,NULL,NULL,NULL,16.00,10.00,15.00,609.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-116-A0-A1',0,11,0,1,0,6,1,0,1054,NULL,NULL,NULL,16.00,10.00,15.00,609.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-146-A0',0,10,0,1,0,6,1,0,984,NULL,NULL,NULL,18.00,15.00,11.00,613.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-146-A0-A1',0,10,0,1,0,6,1,0,984,NULL,NULL,NULL,18.00,15.00,11.00,613.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-2.jpg\"]','SW-146-A0-A2',0,10,0,1,0,6,1,0,984,NULL,NULL,NULL,18.00,15.00,11.00,613.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-170-A0',0,11,0,1,0,6,1,0,799,583.27,NULL,NULL,19.00,20.00,12.00,845.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-118-A0',0,19,0,1,0,1,1,0,801,NULL,NULL,NULL,13.00,15.00,14.00,749.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-159-A0',0,19,0,1,0,6,1,0,685,NULL,NULL,NULL,13.00,17.00,16.00,659.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(79,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-159-A0-A1',0,19,0,1,0,6,1,0,685,NULL,NULL,NULL,13.00,17.00,16.00,659.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(80,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-2.jpg\"]','SW-159-A0-A2',0,19,0,1,0,6,1,0,685,NULL,NULL,NULL,13.00,17.00,16.00,659.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(81,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-3.jpg\"]','SW-159-A0-A3',0,19,0,1,0,6,1,0,685,NULL,NULL,NULL,13.00,17.00,16.00,659.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(82,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-111-A0',0,16,0,1,0,6,1,0,793,NULL,NULL,NULL,18.00,13.00,12.00,807.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(83,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-111-A0-A1',0,16,0,1,0,6,1,0,793,NULL,NULL,NULL,18.00,13.00,12.00,807.00,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Smart Watches',NULL,NULL),('vi',29,'Smart Watches',NULL,NULL),('vi',30,'Beat Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Red & Black Headphone',NULL,NULL),('vi',33,'Red & Black Headphone',NULL,NULL),('vi',34,'Red & Black Headphone',NULL,NULL),('vi',35,'Smart Watch External',NULL,NULL),('vi',36,'Smart Watch External',NULL,NULL),('vi',37,'Smart Watch External',NULL,NULL),('vi',38,'Nikon HD camera',NULL,NULL),('vi',39,'Nikon HD camera',NULL,NULL),('vi',40,'Nikon HD camera',NULL,NULL),('vi',41,'Nikon HD camera',NULL,NULL),('vi',42,'Audio Equipment',NULL,NULL),('vi',43,'Audio Equipment',NULL,NULL),('vi',44,'Audio Equipment',NULL,NULL),('vi',45,'Smart Televisions',NULL,NULL),('vi',46,'Smart Televisions',NULL,NULL),('vi',47,'Smart Televisions',NULL,NULL),('vi',48,'Samsung Smart Phone',NULL,NULL),('vi',49,'Samsung Smart Phone',NULL,NULL),('vi',50,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',51,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',52,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',53,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',54,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',55,'EPSION Plaster Printer',NULL,NULL),('vi',56,'EPSION Plaster Printer',NULL,NULL),('vi',57,'EPSION Plaster Printer',NULL,NULL),('vi',58,'EPSION Plaster Printer',NULL,NULL),('vi',59,'EPSION Plaster Printer',NULL,NULL),('vi',60,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',61,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',62,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',63,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',64,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',65,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',66,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',67,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',68,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',69,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',70,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',71,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',72,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',73,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',74,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',75,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',76,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',77,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',78,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',79,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',80,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',81,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',82,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',83,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,8,16,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(2,3,17,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(3,7,4,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(4,10,4,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\"]'),(5,8,19,1.00,'Best ecommerce CMS online store!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/13.jpg\"}'),(6,4,17,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(7,3,21,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/9.jpg\"}'),(8,3,21,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/11.jpg\"]'),(9,4,21,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(10,1,23,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/22.jpg\"]'),(11,5,4,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/15.jpg\"}'),(12,6,13,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(13,1,12,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(14,1,5,3.00,'Best ecommerce CMS online store!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(15,8,11,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(16,5,23,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/12.jpg\"}'),(17,1,14,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(18,3,5,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\"]'),(19,7,6,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(20,3,8,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(21,5,4,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\"]'),(22,2,10,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(23,7,11,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/21.jpg\"}'),(24,4,10,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\"]'),(25,4,4,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(26,1,14,2.00,'Clean & perfect source code','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\"]'),(27,7,6,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(28,1,3,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/20.jpg\"}'),(29,1,4,3.00,'Best ecommerce CMS online store!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(30,4,11,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(31,10,12,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\"]'),(32,10,19,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\"]'),(33,4,3,3.00,'Clean & perfect source code','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(34,8,19,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\"]'),(35,10,2,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/14.jpg\"}'),(36,9,1,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/15.jpg\"]'),(37,10,2,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/9.jpg\"}'),(38,10,22,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/16.jpg\"]'),(39,3,20,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(40,3,18,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(41,9,15,1.00,'Good app, good backup service and support. Good documentation.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(42,10,17,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(43,1,19,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(44,4,15,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(45,3,17,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(46,3,15,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(47,9,2,3.00,'Good app, good backup service and support. Good documentation.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\"]'),(48,10,4,5.00,'Clean & perfect source code','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\"]'),(49,2,6,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(50,4,16,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(51,3,23,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(52,4,3,5.00,'Good app, good backup service and support. Good documentation.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(53,6,20,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(54,10,1,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/12.jpg\"}'),(55,4,14,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(56,10,4,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(57,8,21,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\"]'),(58,9,8,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/16.jpg\"}'),(59,8,22,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(60,1,10,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(61,5,16,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(62,3,8,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(63,2,9,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(64,6,23,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\"]'),(65,7,4,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/17.jpg\"}'),(66,9,14,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(67,7,23,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(68,8,20,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]'),(69,5,20,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(70,2,17,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(71,9,2,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\"]'),(72,7,1,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/20.jpg\"}'),(73,3,7,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(74,2,3,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/11.jpg\"}'),(75,1,22,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(76,9,23,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\"]'),(77,5,17,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(78,1,17,5.00,'Clean & perfect source code','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(79,9,18,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\"]'),(80,7,7,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(81,10,3,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(82,10,3,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(83,2,3,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(84,1,20,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(85,7,7,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\"]'),(86,1,7,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(87,8,11,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(88,10,23,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(89,9,17,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/14.jpg\"}'),(90,7,9,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(91,2,16,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(92,9,2,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(93,2,19,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-12-04 04:48:53','2021-12-04 04:48:53','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/8.jpg\"}'),(94,9,10,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(95,10,13,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(96,2,20,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(97,9,15,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(98,4,19,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/2.jpg\"]'),(99,1,6,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(100,9,6,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2021-12-04 04:48:53','2021-12-04 04:48:53','[\"products\\/3.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `shipment_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2021-11-17 12:49:07','2021-11-17 12:49:07'),(2,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,1,1,'2021-12-02 12:49:07','2021-12-04 04:49:07'),(3,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,1,1,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(4,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2021-11-17 12:49:07','2021-11-17 12:49:07'),(5,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,2,2,'2021-12-02 12:49:08','2021-12-04 04:49:08'),(6,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,2,2,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(7,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2021-11-19 22:49:08','2021-11-19 22:49:08'),(8,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,3,3,'2021-12-02 14:49:08','2021-12-04 04:49:08'),(9,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2021-11-24 16:49:08','2021-11-24 16:49:08'),(10,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,4,4,'2021-12-02 14:49:08','2021-12-04 04:49:08'),(11,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,4,4,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(12,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2021-12-01 00:49:08','2021-12-01 00:49:08'),(13,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,5,5,'2021-12-02 14:49:08','2021-12-04 04:49:08'),(14,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2021-11-29 16:49:08','2021-11-29 16:49:08'),(15,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,6,6,'2021-12-02 16:49:08','2021-12-04 04:49:08'),(16,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2021-11-22 04:49:08','2021-11-22 04:49:08'),(17,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,7,7,'2021-12-02 16:49:08','2021-12-04 04:49:08'),(18,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,7,7,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(19,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2021-11-25 04:49:08','2021-11-25 04:49:08'),(20,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,8,8,'2021-12-02 16:49:08','2021-12-04 04:49:08'),(21,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2021-12-01 08:49:08','2021-12-01 08:49:08'),(22,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,9,9,'2021-12-02 18:49:08','2021-12-04 04:49:08'),(23,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,9,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(24,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2021-11-29 22:49:08','2021-11-29 22:49:08'),(25,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,10,10,'2021-12-02 18:49:08','2021-12-04 04:49:08'),(26,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,10,10,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(27,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2021-11-23 12:49:08','2021-11-23 12:49:08'),(28,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,11,11,'2021-12-02 20:49:08','2021-12-04 04:49:08'),(29,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,11,11,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(30,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2021-11-22 04:49:08','2021-11-22 04:49:08'),(31,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,12,12,'2021-12-02 20:49:08','2021-12-04 04:49:08'),(32,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,12,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(33,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2021-11-26 04:49:08','2021-11-26 04:49:08'),(34,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,13,13,'2021-12-02 20:49:08','2021-12-04 04:49:08'),(35,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,13,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(36,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2021-11-26 16:49:08','2021-11-26 16:49:08'),(37,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,14,14,'2021-12-02 22:49:08','2021-12-04 04:49:08'),(38,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2021-11-21 16:49:08','2021-11-21 16:49:08'),(39,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,15,15,'2021-12-02 22:49:08','2021-12-04 04:49:08'),(40,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,15,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(41,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2021-12-03 00:49:08','2021-12-03 00:49:08'),(42,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,16,16,'2021-12-03 00:49:08','2021-12-04 04:49:08'),(43,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,16,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(44,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2021-11-27 04:49:08','2021-11-27 04:49:08'),(45,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,17,17,'2021-12-03 00:49:08','2021-12-04 04:49:08'),(46,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,17,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(47,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(48,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,18,18,'2021-12-03 00:49:08','2021-12-04 04:49:08'),(49,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,18,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(50,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2021-11-24 10:49:08','2021-11-24 10:49:08'),(51,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,19,19,'2021-12-03 02:49:08','2021-12-04 04:49:08'),(52,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2021-11-24 10:49:08','2021-11-24 10:49:08'),(53,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,20,20,'2021-12-03 02:49:08','2021-12-04 04:49:08'),(54,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2021-11-23 08:49:08','2021-11-23 08:49:08'),(55,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,21,21,'2021-12-03 02:49:08','2021-12-04 04:49:08'),(56,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,21,21,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(57,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(58,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,22,22,'2021-12-03 04:49:08','2021-12-04 04:49:08'),(59,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2021-11-28 04:49:08','2021-11-28 04:49:08'),(60,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,23,23,'2021-12-03 04:49:08','2021-12-04 04:49:08'),(61,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2021-11-29 04:49:08','2021-11-29 04:49:08'),(62,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,24,24,'2021-12-03 04:49:08','2021-12-04 04:49:08'),(63,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,24,24,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(64,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2021-12-01 10:49:08','2021-12-01 10:49:08'),(65,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,25,25,'2021-12-03 06:49:08','2021-12-04 04:49:08'),(66,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,25,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(67,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2021-11-30 12:49:08','2021-11-30 12:49:08'),(68,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,26,26,'2021-12-03 06:49:08','2021-12-04 04:49:08'),(69,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,26,26,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(70,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2021-11-25 22:49:08','2021-11-25 22:49:08'),(71,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,27,27,'2021-12-03 06:49:08','2021-12-04 04:49:08'),(72,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,27,27,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(73,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2021-12-02 08:49:08','2021-12-02 08:49:08'),(74,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,28,28,'2021-12-03 06:49:08','2021-12-04 04:49:08'),(75,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2021-11-28 08:49:08','2021-11-28 08:49:08'),(76,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,29,29,'2021-12-03 08:49:08','2021-12-04 04:49:08'),(77,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,29,29,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(78,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2021-11-29 04:49:08','2021-11-29 04:49:08'),(79,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,30,30,'2021-12-03 08:49:08','2021-12-04 04:49:08'),(80,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2021-11-25 20:49:08','2021-11-25 20:49:08'),(81,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,31,31,'2021-12-03 08:49:08','2021-12-04 04:49:08'),(82,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2021-11-26 16:49:08','2021-11-26 16:49:08'),(83,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,32,32,'2021-12-03 10:49:08','2021-12-04 04:49:08'),(84,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,32,32,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(85,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,32,32,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(86,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2021-11-30 10:49:08','2021-11-30 10:49:08'),(87,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,33,33,'2021-12-03 10:49:08','2021-12-04 04:49:08'),(88,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,33,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(89,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2021-11-28 20:49:08','2021-11-28 20:49:08'),(90,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,34,34,'2021-12-03 12:49:08','2021-12-04 04:49:08'),(91,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2021-12-02 20:49:08','2021-12-02 20:49:08'),(92,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,35,35,'2021-12-03 12:49:08','2021-12-04 04:49:08'),(93,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2021-11-30 20:49:08','2021-11-30 20:49:08'),(94,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,36,36,'2021-12-03 12:49:08','2021-12-04 04:49:08'),(95,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,36,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(96,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2021-12-01 20:49:08','2021-12-01 20:49:08'),(97,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,37,37,'2021-12-03 14:49:08','2021-12-04 04:49:08'),(98,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,37,37,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(99,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2021-12-01 20:49:08','2021-12-01 20:49:08'),(100,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,38,38,'2021-12-03 14:49:08','2021-12-04 04:49:08'),(101,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2021-12-02 10:49:08','2021-12-02 10:49:08'),(102,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,39,39,'2021-12-03 14:49:08','2021-12-04 04:49:08'),(103,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,39,39,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(104,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(105,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,40,40,'2021-12-03 14:49:08','2021-12-04 04:49:08'),(106,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2021-11-30 16:49:08','2021-11-30 16:49:08'),(107,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,41,41,'2021-12-03 16:49:08','2021-12-04 04:49:08'),(108,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,41,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(109,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2021-11-30 00:49:08','2021-11-30 00:49:08'),(110,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,42,42,'2021-12-03 18:49:08','2021-12-04 04:49:08'),(111,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,42,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(112,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2021-11-30 10:49:08','2021-11-30 10:49:08'),(113,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,43,43,'2021-12-03 18:49:08','2021-12-04 04:49:08'),(114,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,43,43,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(115,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2021-12-02 12:49:08','2021-12-02 12:49:08'),(116,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,44,44,'2021-12-03 18:49:08','2021-12-04 04:49:08'),(117,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2021-11-30 00:49:08','2021-11-30 00:49:08'),(118,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,45,45,'2021-12-03 18:49:08','2021-12-04 04:49:08'),(119,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,45,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(120,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2021-12-03 20:49:08','2021-12-03 20:49:08'),(121,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,46,46,'2021-12-03 20:49:08','2021-12-04 04:49:08'),(122,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,46,46,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(123,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(124,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,47,47,'2021-12-03 20:49:08','2021-12-04 04:49:08'),(125,'create_from_order','Shipping was created from order %order_id%',0,48,48,'2021-12-03 04:49:08','2021-12-03 04:49:08'),(126,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,48,48,'2021-12-03 22:49:08','2021-12-04 04:49:08'),(127,'create_from_order','Shipping was created from order %order_id%',0,49,49,'2021-12-02 10:49:08','2021-12-02 10:49:08'),(128,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,49,49,'2021-12-03 22:49:08','2021-12-04 04:49:08'),(129,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,49,49,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(130,'create_from_order','Shipping was created from order %order_id%',0,50,50,'2021-12-03 20:49:08','2021-12-03 20:49:08'),(131,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,50,50,'2021-12-04 00:49:08','2021-12-04 04:49:08'),(132,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,50,50,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(133,'create_from_order','Shipping was created from order %order_id%',0,51,51,'2021-12-03 16:49:08','2021-12-03 16:49:08'),(134,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,51,51,'2021-12-04 00:49:08','2021-12-04 04:49:08'),(135,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,51,51,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(136,'create_from_order','Shipping was created from order %order_id%',0,52,52,'2021-12-03 12:49:08','2021-12-03 12:49:08'),(137,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,52,52,'2021-12-04 02:49:08','2021-12-04 04:49:08'),(138,'create_from_order','Shipping was created from order %order_id%',0,53,53,'2021-12-03 12:49:08','2021-12-03 12:49:08'),(139,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,53,53,'2021-12-04 02:49:08','2021-12-04 04:49:08'),(140,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,53,53,'2021-12-04 04:49:08','2021-12-04 04:49:08');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,2535.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(2,2,NULL,3328.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(3,3,NULL,3649.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(4,4,NULL,655.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(5,5,NULL,1690.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(6,6,NULL,2375.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(7,7,NULL,1690.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(8,8,NULL,613.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(9,9,NULL,561.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(10,10,NULL,2169.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(11,11,NULL,1466.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(12,12,NULL,2535.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(13,13,NULL,2805.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(14,14,NULL,509.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(15,15,NULL,1300.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(16,16,NULL,3479.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(17,17,NULL,1100.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(18,18,NULL,807.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(19,19,NULL,4827.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(20,20,NULL,1527.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(21,21,NULL,1950.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(22,22,NULL,509.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(23,23,NULL,1528.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(24,24,NULL,1827.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(25,25,NULL,2535.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(26,26,NULL,723.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(27,27,NULL,725.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(28,28,NULL,1839.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(29,29,NULL,2169.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(30,30,NULL,3302.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(31,31,NULL,1690.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(32,32,NULL,1100.00,NULL,'','delivered',1205.40,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(33,33,NULL,1977.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(34,34,NULL,1440.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(35,35,NULL,1018.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(36,36,NULL,1450.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(37,37,NULL,1340.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(38,38,NULL,723.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(39,39,NULL,609.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(40,40,NULL,659.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(41,41,NULL,3844.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(42,42,NULL,1310.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(43,43,NULL,1440.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(44,44,NULL,561.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(45,45,NULL,613.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(46,46,NULL,1650.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(47,47,NULL,1656.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(48,48,NULL,1965.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(49,49,NULL,1977.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(50,50,NULL,1340.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(51,51,NULL,1044.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(52,52,NULL,3615.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08'),(53,53,NULL,1614.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2021-12-04 04:49:08','2021-12-04 04:49:08');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2021-12-04 04:48:54','2021-12-04 04:48:54');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int(10) unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2021-12-04 04:48:54','2021-12-04 04:48:54');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2021-12-04 04:49:02','2021-12-04 04:49:02');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2021-12-04 04:48:53','2021-12-04 04:48:53'),(2,'None',0.000000,2,'published','2021-12-04 04:48:53','2021-12-04 04:48:53');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(2,'PAYMENT',1,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(3,'ORDER & RETURNS',2,'published','2021-12-04 04:49:01','2021-12-04 04:49:01');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2021-12-04 04:49:01','2021-12-04 04:49:01'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2021-12-04 04:49:01','2021-12-04 04:49:01');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','5c698868c49d8bd2a53f36eee14444ae',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','5c698868c49d8bd2a53f36eee14444ae',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','ef518db7961fc70f2714dc88c022047c',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','5d5d77e915580f6fe48ca240bc062c78',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','663c37f505715676fcd4f0a212b9bfa2',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','98fa809449a39214da9bafa1f22f5dd1',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','c575255a26e420bc10f87d8024521f85',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','14c39bd372471ceec25c370a401188c0',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','5d5d77e915580f6fe48ca240bc062c78',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','663c37f505715676fcd4f0a212b9bfa2',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','98fa809449a39214da9bafa1f22f5dd1',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','c575255a26e420bc10f87d8024521f85',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',2200,'brands/1.jpg','[]','2021-12-04 04:48:33','2021-12-04 04:48:33',NULL),(2,0,'2',1,'image/jpeg',2685,'brands/2.jpg','[]','2021-12-04 04:48:33','2021-12-04 04:48:33',NULL),(3,0,'3',1,'image/jpeg',2311,'brands/3.jpg','[]','2021-12-04 04:48:33','2021-12-04 04:48:33',NULL),(4,0,'4',1,'image/jpeg',2374,'brands/4.jpg','[]','2021-12-04 04:48:33','2021-12-04 04:48:33',NULL),(5,0,'5',1,'image/jpeg',1927,'brands/5.jpg','[]','2021-12-04 04:48:33','2021-12-04 04:48:33',NULL),(6,0,'6',1,'image/jpeg',2519,'brands/6.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(7,0,'7',1,'image/jpeg',3043,'brands/7.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(8,0,'1',2,'image/jpeg',5173,'product-categories/1.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(9,0,'2',2,'image/jpeg',7355,'product-categories/2.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(10,0,'3',2,'image/jpeg',4427,'product-categories/3.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(11,0,'4',2,'image/jpeg',2963,'product-categories/4.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(12,0,'5',2,'image/jpeg',5016,'product-categories/5.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(13,0,'6',2,'image/jpeg',4101,'product-categories/6.jpg','[]','2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(14,0,'7',2,'image/jpeg',2576,'product-categories/7.jpg','[]','2021-12-04 04:48:35','2021-12-04 04:48:35',NULL),(15,0,'8',2,'image/jpeg',4670,'product-categories/8.jpg','[]','2021-12-04 04:48:35','2021-12-04 04:48:35',NULL),(16,0,'1',3,'image/jpeg',4911,'products/1.jpg','[]','2021-12-04 04:48:35','2021-12-04 04:48:35',NULL),(17,0,'10-1',3,'image/jpeg',120755,'products/10-1.jpg','[]','2021-12-04 04:48:35','2021-12-04 04:48:35',NULL),(18,0,'10-2',3,'image/jpeg',148563,'products/10-2.jpg','[]','2021-12-04 04:48:35','2021-12-04 04:48:35',NULL),(19,0,'10',3,'image/jpeg',11176,'products/10.jpg','[]','2021-12-04 04:48:36','2021-12-04 04:48:36',NULL),(20,0,'11-1',3,'image/jpeg',13706,'products/11-1.jpg','[]','2021-12-04 04:48:36','2021-12-04 04:48:36',NULL),(21,0,'11-2',3,'image/jpeg',16809,'products/11-2.jpg','[]','2021-12-04 04:48:36','2021-12-04 04:48:36',NULL),(22,0,'11-3',3,'image/jpeg',23991,'products/11-3.jpg','[]','2021-12-04 04:48:36','2021-12-04 04:48:36',NULL),(23,0,'11',3,'image/jpeg',8234,'products/11.jpg','[]','2021-12-04 04:48:36','2021-12-04 04:48:36',NULL),(24,0,'12-1',3,'image/jpeg',47775,'products/12-1.jpg','[]','2021-12-04 04:48:36','2021-12-04 04:48:36',NULL),(25,0,'12-2',3,'image/jpeg',52722,'products/12-2.jpg','[]','2021-12-04 04:48:37','2021-12-04 04:48:37',NULL),(26,0,'12-3',3,'image/jpeg',57295,'products/12-3.jpg','[]','2021-12-04 04:48:37','2021-12-04 04:48:37',NULL),(27,0,'12',3,'image/jpeg',9642,'products/12.jpg','[]','2021-12-04 04:48:37','2021-12-04 04:48:37',NULL),(28,0,'13-1',3,'image/jpeg',7494,'products/13-1.jpg','[]','2021-12-04 04:48:37','2021-12-04 04:48:37',NULL),(29,0,'13',3,'image/jpeg',7266,'products/13.jpg','[]','2021-12-04 04:48:37','2021-12-04 04:48:37',NULL),(30,0,'14',3,'image/jpeg',6626,'products/14.jpg','[]','2021-12-04 04:48:37','2021-12-04 04:48:37',NULL),(31,0,'15-1',3,'image/jpeg',9014,'products/15-1.jpg','[]','2021-12-04 04:48:38','2021-12-04 04:48:38',NULL),(32,0,'15',3,'image/jpeg',6629,'products/15.jpg','[]','2021-12-04 04:48:38','2021-12-04 04:48:38',NULL),(33,0,'16',3,'image/jpeg',8558,'products/16.jpg','[]','2021-12-04 04:48:38','2021-12-04 04:48:38',NULL),(34,0,'17-1',3,'image/jpeg',63248,'products/17-1.jpg','[]','2021-12-04 04:48:38','2021-12-04 04:48:38',NULL),(35,0,'17-2',3,'image/jpeg',71404,'products/17-2.jpg','[]','2021-12-04 04:48:38','2021-12-04 04:48:38',NULL),(36,0,'17-3',3,'image/jpeg',58949,'products/17-3.jpg','[]','2021-12-04 04:48:38','2021-12-04 04:48:38',NULL),(37,0,'17',3,'image/jpeg',7050,'products/17.jpg','[]','2021-12-04 04:48:39','2021-12-04 04:48:39',NULL),(38,0,'18-1',3,'image/jpeg',527022,'products/18-1.jpg','[]','2021-12-04 04:48:39','2021-12-04 04:48:39',NULL),(39,0,'18-2',3,'image/jpeg',43849,'products/18-2.jpg','[]','2021-12-04 04:48:39','2021-12-04 04:48:39',NULL),(40,0,'18-3',3,'image/jpeg',63876,'products/18-3.jpg','[]','2021-12-04 04:48:39','2021-12-04 04:48:39',NULL),(41,0,'18',3,'image/jpeg',61587,'products/18.jpg','[]','2021-12-04 04:48:39','2021-12-04 04:48:39',NULL),(42,0,'19-1',3,'image/jpeg',23166,'products/19-1.jpg','[]','2021-12-04 04:48:40','2021-12-04 04:48:40',NULL),(43,0,'19-2',3,'image/jpeg',12306,'products/19-2.jpg','[]','2021-12-04 04:48:40','2021-12-04 04:48:40',NULL),(44,0,'19-3',3,'image/jpeg',51458,'products/19-3.jpg','[]','2021-12-04 04:48:40','2021-12-04 04:48:40',NULL),(45,0,'19',3,'image/jpeg',227872,'products/19.jpg','[]','2021-12-04 04:48:40','2021-12-04 04:48:40',NULL),(46,0,'2-1',3,'image/jpeg',85522,'products/2-1.jpg','[]','2021-12-04 04:48:40','2021-12-04 04:48:40',NULL),(47,0,'2-2',3,'image/jpeg',122423,'products/2-2.jpg','[]','2021-12-04 04:48:40','2021-12-04 04:48:40',NULL),(48,0,'2-3',3,'image/jpeg',61996,'products/2-3.jpg','[]','2021-12-04 04:48:41','2021-12-04 04:48:41',NULL),(49,0,'2',3,'image/jpeg',10832,'products/2.jpg','[]','2021-12-04 04:48:41','2021-12-04 04:48:41',NULL),(50,0,'20-1',3,'image/jpeg',108013,'products/20-1.jpg','[]','2021-12-04 04:48:41','2021-12-04 04:48:41',NULL),(51,0,'20-2',3,'image/jpeg',107598,'products/20-2.jpg','[]','2021-12-04 04:48:41','2021-12-04 04:48:41',NULL),(52,0,'20-3',3,'image/jpeg',31959,'products/20-3.jpg','[]','2021-12-04 04:48:42','2021-12-04 04:48:42',NULL),(53,0,'20',3,'image/jpeg',12798,'products/20.jpg','[]','2021-12-04 04:48:42','2021-12-04 04:48:42',NULL),(54,0,'21-1',3,'image/jpeg',92022,'products/21-1.jpg','[]','2021-12-04 04:48:42','2021-12-04 04:48:42',NULL),(55,0,'21-2',3,'image/jpeg',73796,'products/21-2.jpg','[]','2021-12-04 04:48:42','2021-12-04 04:48:42',NULL),(56,0,'21',3,'image/jpeg',72410,'products/21.jpg','[]','2021-12-04 04:48:42','2021-12-04 04:48:42',NULL),(57,0,'22-1',3,'image/jpeg',50174,'products/22-1.jpg','[]','2021-12-04 04:48:43','2021-12-04 04:48:43',NULL),(58,0,'22-2',3,'image/jpeg',63267,'products/22-2.jpg','[]','2021-12-04 04:48:43','2021-12-04 04:48:43',NULL),(59,0,'22-3',3,'image/jpeg',125017,'products/22-3.jpg','[]','2021-12-04 04:48:43','2021-12-04 04:48:43',NULL),(60,0,'22',3,'image/jpeg',88636,'products/22.jpg','[]','2021-12-04 04:48:43','2021-12-04 04:48:43',NULL),(61,0,'23-1',3,'image/jpeg',64117,'products/23-1.jpg','[]','2021-12-04 04:48:44','2021-12-04 04:48:44',NULL),(62,0,'23-2',3,'image/jpeg',96786,'products/23-2.jpg','[]','2021-12-04 04:48:44','2021-12-04 04:48:44',NULL),(63,0,'23-3',3,'image/jpeg',46477,'products/23-3.jpg','[]','2021-12-04 04:48:44','2021-12-04 04:48:44',NULL),(64,0,'23',3,'image/jpeg',68142,'products/23.jpg','[]','2021-12-04 04:48:44','2021-12-04 04:48:44',NULL),(65,0,'3',3,'image/jpeg',8388,'products/3.jpg','[]','2021-12-04 04:48:44','2021-12-04 04:48:44',NULL),(66,0,'4-1',3,'image/jpeg',39071,'products/4-1.jpg','[]','2021-12-04 04:48:45','2021-12-04 04:48:45',NULL),(67,0,'4-2',3,'image/jpeg',35982,'products/4-2.jpg','[]','2021-12-04 04:48:45','2021-12-04 04:48:45',NULL),(68,0,'4-3',3,'image/jpeg',62867,'products/4-3.jpg','[]','2021-12-04 04:48:45','2021-12-04 04:48:45',NULL),(69,0,'4',3,'image/jpeg',5547,'products/4.jpg','[]','2021-12-04 04:48:45','2021-12-04 04:48:45',NULL),(70,0,'5-1',3,'image/jpeg',72383,'products/5-1.jpg','[]','2021-12-04 04:48:45','2021-12-04 04:48:45',NULL),(71,0,'5-2',3,'image/jpeg',108591,'products/5-2.jpg','[]','2021-12-04 04:48:46','2021-12-04 04:48:46',NULL),(72,0,'5-3',3,'image/jpeg',63741,'products/5-3.jpg','[]','2021-12-04 04:48:46','2021-12-04 04:48:46',NULL),(73,0,'5',3,'image/jpeg',98052,'products/5.jpg','[]','2021-12-04 04:48:46','2021-12-04 04:48:46',NULL),(74,0,'6',3,'image/jpeg',10944,'products/6.jpg','[]','2021-12-04 04:48:46','2021-12-04 04:48:46',NULL),(75,0,'7',3,'image/jpeg',10160,'products/7.jpg','[]','2021-12-04 04:48:46','2021-12-04 04:48:46',NULL),(76,0,'8-1',3,'image/jpeg',9986,'products/8-1.jpg','[]','2021-12-04 04:48:47','2021-12-04 04:48:47',NULL),(77,0,'8-2',3,'image/jpeg',8132,'products/8-2.jpg','[]','2021-12-04 04:48:47','2021-12-04 04:48:47',NULL),(78,0,'8-3',3,'image/jpeg',7867,'products/8-3.jpg','[]','2021-12-04 04:48:47','2021-12-04 04:48:47',NULL),(79,0,'8',3,'image/jpeg',10459,'products/8.jpg','[]','2021-12-04 04:48:47','2021-12-04 04:48:47',NULL),(80,0,'9-1',3,'image/jpeg',623616,'products/9-1.jpg','[]','2021-12-04 04:48:47','2021-12-04 04:48:47',NULL),(81,0,'9-2',3,'image/jpeg',647454,'products/9-2.jpg','[]','2021-12-04 04:48:47','2021-12-04 04:48:47',NULL),(82,0,'9',3,'image/jpeg',16733,'products/9.jpg','[]','2021-12-04 04:48:48','2021-12-04 04:48:48',NULL),(83,0,'1',4,'image/jpeg',11752,'customers/1.jpg','[]','2021-12-04 04:48:49','2021-12-04 04:48:49',NULL),(84,0,'10',4,'image/jpeg',27814,'customers/10.jpg','[]','2021-12-04 04:48:49','2021-12-04 04:48:49',NULL),(85,0,'2',4,'image/jpeg',19005,'customers/2.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(86,0,'3',4,'image/jpeg',20400,'customers/3.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(87,0,'4',4,'image/jpeg',26819,'customers/4.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(88,0,'5',4,'image/jpeg',14367,'customers/5.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(89,0,'6',4,'image/jpeg',12367,'customers/6.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(90,0,'7',4,'image/jpeg',20652,'customers/7.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(91,0,'8',4,'image/jpeg',21164,'customers/8.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(92,0,'9',4,'image/jpeg',6084,'customers/9.jpg','[]','2021-12-04 04:48:50','2021-12-04 04:48:50',NULL),(93,0,'1',5,'image/jpeg',532819,'news/1.jpg','[]','2021-12-04 04:48:54','2021-12-04 04:48:54',NULL),(94,0,'10',5,'image/jpeg',342651,'news/10.jpg','[]','2021-12-04 04:48:54','2021-12-04 04:48:54',NULL),(95,0,'11',5,'image/jpeg',296740,'news/11.jpg','[]','2021-12-04 04:48:55','2021-12-04 04:48:55',NULL),(96,0,'2',5,'image/jpeg',553729,'news/2.jpg','[]','2021-12-04 04:48:55','2021-12-04 04:48:55',NULL),(97,0,'3',5,'image/jpeg',522223,'news/3.jpg','[]','2021-12-04 04:48:56','2021-12-04 04:48:56',NULL),(98,0,'4',5,'image/jpeg',910908,'news/4.jpg','[]','2021-12-04 04:48:56','2021-12-04 04:48:56',NULL),(99,0,'5',5,'image/jpeg',666561,'news/5.jpg','[]','2021-12-04 04:48:56','2021-12-04 04:48:56',NULL),(100,0,'6',5,'image/jpeg',431929,'news/6.jpg','[]','2021-12-04 04:48:56','2021-12-04 04:48:56',NULL),(101,0,'7',5,'image/jpeg',568268,'news/7.jpg','[]','2021-12-04 04:48:57','2021-12-04 04:48:57',NULL),(102,0,'8',5,'image/jpeg',351088,'news/8.jpg','[]','2021-12-04 04:48:57','2021-12-04 04:48:57',NULL),(103,0,'9',5,'image/jpeg',353751,'news/9.jpg','[]','2021-12-04 04:48:57','2021-12-04 04:48:57',NULL),(104,0,'1',6,'image/jpeg',139880,'sliders/1.jpg','[]','2021-12-04 04:48:58','2021-12-04 04:48:58',NULL),(105,0,'2',6,'image/jpeg',85128,'sliders/2.jpg','[]','2021-12-04 04:48:59','2021-12-04 04:48:59',NULL),(106,0,'3',6,'image/jpeg',85668,'sliders/3.jpg','[]','2021-12-04 04:48:59','2021-12-04 04:48:59',NULL),(107,0,'1',7,'image/jpeg',56015,'promotion/1.jpg','[]','2021-12-04 04:49:00','2021-12-04 04:49:00',NULL),(108,0,'2',7,'image/jpeg',39964,'promotion/2.jpg','[]','2021-12-04 04:49:00','2021-12-04 04:49:00',NULL),(109,0,'3',7,'image/jpeg',71948,'promotion/3.jpg','[]','2021-12-04 04:49:00','2021-12-04 04:49:00',NULL),(110,0,'4',7,'image/jpeg',94590,'promotion/4.jpg','[]','2021-12-04 04:49:00','2021-12-04 04:49:00',NULL),(111,0,'5',7,'image/jpeg',96153,'promotion/5.jpg','[]','2021-12-04 04:49:00','2021-12-04 04:49:00',NULL),(112,0,'6',7,'image/jpeg',160910,'promotion/6.jpg','[]','2021-12-04 04:49:00','2021-12-04 04:49:00',NULL),(113,0,'7',7,'image/jpeg',59044,'promotion/7.jpg','[]','2021-12-04 04:49:01','2021-12-04 04:49:01',NULL),(114,0,'8',7,'image/jpeg',39964,'promotion/8.jpg','[]','2021-12-04 04:49:01','2021-12-04 04:49:01',NULL),(115,0,'9',7,'image/jpeg',54865,'promotion/9.jpg','[]','2021-12-04 04:49:01','2021-12-04 04:49:01',NULL),(116,0,'app',8,'image/png',88771,'general/app.png','[]','2021-12-04 04:49:02','2021-12-04 04:49:02',NULL),(117,0,'coming-soon',8,'image/jpeg',83359,'general/coming-soon.jpg','[]','2021-12-04 04:49:02','2021-12-04 04:49:02',NULL),(118,0,'favicon',8,'image/png',5147,'general/favicon.png','[]','2021-12-04 04:49:02','2021-12-04 04:49:02',NULL),(119,0,'logo-dark',8,'image/png',906,'general/logo-dark.png','[]','2021-12-04 04:49:02','2021-12-04 04:49:02',NULL),(120,0,'logo-light',8,'image/png',1430,'general/logo-light.png','[]','2021-12-04 04:49:02','2021-12-04 04:49:02',NULL),(121,0,'logo',8,'image/png',892,'general/logo.png','[]','2021-12-04 04:49:02','2021-12-04 04:49:02',NULL),(122,0,'newsletter',8,'image/jpeg',25569,'general/newsletter.jpg','[]','2021-12-04 04:49:03','2021-12-04 04:49:03',NULL),(123,0,'payment-method-1',8,'image/jpeg',976,'general/payment-method-1.jpg','[]','2021-12-04 04:49:03','2021-12-04 04:49:03',NULL),(124,0,'payment-method-2',8,'image/jpeg',1122,'general/payment-method-2.jpg','[]','2021-12-04 04:49:03','2021-12-04 04:49:03',NULL),(125,0,'payment-method-3',8,'image/jpeg',1040,'general/payment-method-3.jpg','[]','2021-12-04 04:49:03','2021-12-04 04:49:03',NULL),(126,0,'payment-method-4',8,'image/jpeg',722,'general/payment-method-4.jpg','[]','2021-12-04 04:49:03','2021-12-04 04:49:03',NULL),(127,0,'payment-method-5',8,'image/jpeg',773,'general/payment-method-5.jpg','[]','2021-12-04 04:49:03','2021-12-04 04:49:03',NULL),(128,0,'1',9,'image/png',11920,'stores/1.png','[]','2021-12-04 04:49:03','2021-12-04 04:49:03',NULL),(129,0,'10',9,'image/png',6583,'stores/10.png','[]','2021-12-04 04:49:04','2021-12-04 04:49:04',NULL),(130,0,'11',9,'image/png',6934,'stores/11.png','[]','2021-12-04 04:49:04','2021-12-04 04:49:04',NULL),(131,0,'12',9,'image/png',7396,'stores/12.png','[]','2021-12-04 04:49:04','2021-12-04 04:49:04',NULL),(132,0,'13',9,'image/png',5881,'stores/13.png','[]','2021-12-04 04:49:04','2021-12-04 04:49:04',NULL),(133,0,'14',9,'image/png',7188,'stores/14.png','[]','2021-12-04 04:49:04','2021-12-04 04:49:04',NULL),(134,0,'15',9,'image/png',7142,'stores/15.png','[]','2021-12-04 04:49:04','2021-12-04 04:49:04',NULL),(135,0,'16',9,'image/png',4659,'stores/16.png','[]','2021-12-04 04:49:05','2021-12-04 04:49:05',NULL),(136,0,'17',9,'image/png',6781,'stores/17.png','[]','2021-12-04 04:49:05','2021-12-04 04:49:05',NULL),(137,0,'2',9,'image/png',12300,'stores/2.png','[]','2021-12-04 04:49:05','2021-12-04 04:49:05',NULL),(138,0,'3',9,'image/png',10778,'stores/3.png','[]','2021-12-04 04:49:05','2021-12-04 04:49:05',NULL),(139,0,'4',9,'image/png',10771,'stores/4.png','[]','2021-12-04 04:49:05','2021-12-04 04:49:05',NULL),(140,0,'5',9,'image/png',13041,'stores/5.png','[]','2021-12-04 04:49:05','2021-12-04 04:49:05',NULL),(141,0,'6',9,'image/png',14006,'stores/6.png','[]','2021-12-04 04:49:06','2021-12-04 04:49:06',NULL),(142,0,'7',9,'image/png',5978,'stores/7.png','[]','2021-12-04 04:49:06','2021-12-04 04:49:06',NULL),(143,0,'8',9,'image/png',6586,'stores/8.png','[]','2021-12-04 04:49:06','2021-12-04 04:49:06',NULL),(144,0,'9',9,'image/png',6173,'stores/9.png','[]','2021-12-04 04:49:06','2021-12-04 04:49:06',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2021-12-04 04:48:33','2021-12-04 04:48:33',NULL),(2,0,'product-categories','product-categories',0,'2021-12-04 04:48:34','2021-12-04 04:48:34',NULL),(3,0,'products','products',0,'2021-12-04 04:48:35','2021-12-04 04:48:35',NULL),(4,0,'customers','customers',0,'2021-12-04 04:48:49','2021-12-04 04:48:49',NULL),(5,0,'news','news',0,'2021-12-04 04:48:54','2021-12-04 04:48:54',NULL),(6,0,'sliders','sliders',0,'2021-12-04 04:48:58','2021-12-04 04:48:58',NULL),(7,0,'promotion','promotion',0,'2021-12-04 04:49:00','2021-12-04 04:49:00',NULL),(8,0,'general','general',0,'2021-12-04 04:49:02','2021-12-04 04:49:02',NULL),(9,0,'stores','stores',0,'2021-12-04 04:49:03','2021-12-04 04:49:03',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2021-12-04 04:49:02','2021-12-04 04:49:02'),(2,5,'main-menu','2021-12-04 04:49:02','2021-12-04 04:49:02');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `reference_id` int(10) unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2021-12-04 04:49:02','2021-12-04 04:49:02');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2021-12-04 04:49:02','2021-12-04 04:49:02'),(2,'Quick links','quick-links','published','2021-12-04 04:49:02','2021-12-04 04:49:02'),(3,'Company','company','published','2021-12-04 04:49:02','2021-12-04 04:49:02'),(4,'Business','business','published','2021-12-04 04:49:02','2021-12-04 04:49:02'),(5,'Menu chính','menu-chinh','published','2021-12-04 04:49:02','2021-12-04 04:49:02'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2021-12-04 04:49:02','2021-12-04 04:49:02'),(7,'Công ty','cong-ty','published','2021-12-04 04:49:02','2021-12-04 04:49:02'),(8,'Doanh nghiệp','doanh-nghiep','published','2021-12-04 04:49:02','2021-12-04 04:49:02');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2021-12-04 04:48:35','2021-12-04 04:48:35'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:48','2021-12-04 04:48:48'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2021-12-04 04:48:49','2021-12-04 04:48:49');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2020_03_05_041139_create_ecommerce_tables',1),(25,'2020_09_22_135635_update_taxes_table',1),(26,'2020_09_29_101006_add_views_into_ec_products_table',1),(27,'2020_10_01_152311_make_column_image_in_product_attributes_table_nullable',1),(28,'2020_10_06_073439_improve_ecommerce_database',1),(29,'2020_11_01_040415_update_table_ec_order_addresses',1),(30,'2020_11_04_091510_make_column_phone_in_order_addresses_nullable',1),(31,'2020_11_18_150916_ads_create_ads_table',1),(32,'2020_11_30_015801_update_table_ec_product_categories',1),(33,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(34,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(35,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(36,'2021_02_16_092633_remove_default_value_for_author_type',1),(37,'2021_02_18_073505_update_table_ec_reviews',1),(38,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(39,'2021_03_10_025153_change_column_tax_amount',1),(40,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(41,'2021_03_27_144913_add_customer_type_into_table_payments',1),(42,'2021_04_28_074008_ecommerce_create_product_label_table',1),(43,'2021_05_24_034720_make_column_currency_nullable',1),(44,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(45,'2021_06_28_153141_correct_slugs_data',1),(46,'2021_07_06_030002_create_marketplace_table',1),(47,'2021_08_02_084121_fix_old_shortcode',1),(48,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(49,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(50,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(51,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(52,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(53,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(54,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(55,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(56,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(57,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(58,'2021_10_19_020859_update_metadata_field',1),(59,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(60,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(61,'2021_11_23_071403_correct_languages_for_product_variations',1),(62,'2021_11_28_031808_add_product_tags_translations',1),(63,'2021_12_01_031123_add_featured_image_to_ec_products',1),(64,'2021_12_02_035301_add_ads_translations_table',1),(65,'2021_12_03_030600_create_blog_translations',1),(66,'2021_12_03_075608_create_page_translations',1),(67,'2021_12_03_082134_create_faq_translations',1),(68,'2021_12_06_031304_update_table_mp_customer_revenues',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT 0.00,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) DEFAULT 0.00,
  `current_balance` decimal(15,2) DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,2,1,1246.20,0.00,1246.20,0.00,'USD',NULL,'2021-12-03 00:49:08','2021-12-03 00:49:08',0,NULL),(2,9,2,2966.10,0.00,2966.10,0.00,'USD',NULL,'2021-12-03 04:49:09','2021-12-03 04:49:09',0,NULL),(3,4,4,44.55,0.00,44.55,0.00,'USD',NULL,'2021-11-30 10:49:09','2021-11-30 10:49:09',0,NULL),(4,2,7,844.20,0.00,844.20,1246.20,'USD',NULL,'2021-11-29 12:49:09','2021-11-29 12:49:09',0,NULL),(5,4,10,3620.80,0.00,3620.80,44.55,'USD',NULL,'2021-11-29 14:49:09','2021-11-29 14:49:09',0,NULL),(6,3,11,168.53,0.00,168.53,0.00,'USD',NULL,'2021-11-25 04:49:09','2021-11-25 04:49:09',0,NULL),(7,2,12,1246.20,0.00,1246.20,2090.40,'USD',NULL,'2021-11-24 10:49:09','2021-11-24 10:49:09',0,NULL),(8,8,13,6458.40,0.00,6458.40,0.00,'USD',NULL,'2021-11-30 16:49:10','2021-11-30 16:49:10',0,NULL),(9,9,15,1134.00,0.00,1134.00,2966.10,'USD',NULL,'2021-11-27 12:49:10','2021-11-27 12:49:10',0,NULL),(10,4,16,3705.85,0.00,3705.85,3665.35,'USD',NULL,'2021-11-29 22:49:10','2021-11-29 22:49:10',0,NULL),(11,3,17,1205.40,0.00,1205.40,168.53,'USD',NULL,'2021-11-26 16:49:10','2021-11-26 16:49:10',0,NULL),(12,2,18,872.30,0.00,872.30,3336.60,'USD',NULL,'2021-12-02 14:49:10','2021-12-02 14:49:10',0,NULL),(13,9,24,3267.40,0.00,3267.40,4100.10,'USD',NULL,'2021-11-30 00:49:10','2021-11-30 00:49:10',0,NULL),(14,2,25,1246.20,0.00,1246.20,4208.90,'USD',NULL,'2021-11-16 20:49:10','2021-11-16 20:49:10',0,NULL),(15,4,26,1284.80,0.00,1284.80,7371.20,'USD',NULL,'2021-11-18 10:49:11','2021-11-18 10:49:11',0,NULL),(16,3,27,565.40,0.00,565.40,1373.93,'USD',NULL,'2021-11-10 20:49:11','2021-11-10 20:49:11',0,NULL),(17,8,33,2123.50,0.00,2123.50,6458.40,'USD',NULL,'2021-11-05 20:49:11','2021-11-05 20:49:11',0,NULL),(18,3,36,1079.40,0.00,1079.40,1939.33,'USD',NULL,'2021-11-15 16:49:11','2021-11-15 16:49:11',0,NULL),(19,3,37,1188.60,0.00,1188.60,3018.73,'USD',NULL,'2021-12-01 00:49:11','2021-12-01 00:49:11',0,NULL),(20,9,41,4537.50,0.00,4537.50,7367.50,'USD',NULL,'2021-11-16 16:49:11','2021-11-16 16:49:11',0,NULL),(21,4,42,85.05,0.00,85.05,8656.00,'USD',NULL,'2021-10-29 08:49:11','2021-10-29 08:49:11',0,NULL),(22,2,43,42.00,0.00,42.00,5455.10,'USD',NULL,'2021-11-01 04:49:12','2021-11-01 04:49:12',0,NULL),(23,3,46,1779.40,0.00,1779.40,4207.33,'USD',NULL,'2021-11-14 14:49:12','2021-11-14 14:49:12',0,NULL),(24,8,49,2123.50,0.00,2123.50,8581.90,'USD',NULL,'2021-11-30 00:49:12','2021-11-30 00:49:12',0,NULL),(25,3,50,1188.60,0.00,1188.60,5986.73,'USD',NULL,'2021-11-08 16:49:12','2021-11-08 16:49:12',0,NULL),(26,8,51,1066.80,0.00,1066.80,10705.40,'USD',NULL,'2021-11-12 12:49:12','2021-11-12 12:49:12',0,NULL),(27,2,53,1665.30,0.00,1665.30,5497.10,'USD',NULL,'2021-10-24 16:49:12','2021-10-24 16:49:12',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) unsigned DEFAULT 0.00,
  `current_balance` decimal(15,2) unsigned DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,987.00,7162.40,'USD','','{\"name\":\"Lee Toy\",\"number\":\"+19800514472\",\"full_name\":\"Miss Carmela Schneider\",\"description\":\"Dayton Emmerich I\"}',NULL,0,'pending',NULL,'2021-12-04 04:49:12','2021-12-04 04:49:12',NULL),(2,2,0.00,1481.00,6175.40,'USD','','{\"name\":\"Lee Toy\",\"number\":\"+19800514472\",\"full_name\":\"Miss Carmela Schneider\",\"description\":\"Dayton Emmerich I\"}',NULL,0,'pending',NULL,'2021-12-04 04:49:13','2021-12-04 04:49:13',NULL),(3,3,0.00,1922.00,7175.33,'USD','','{\"name\":\"Alvis Lowe\",\"number\":\"+13015586061\",\"full_name\":\"Alberta Grimes\",\"description\":\"Clark Upton\"}',NULL,0,'processing',NULL,'2021-12-04 04:49:13','2021-12-04 04:49:13',NULL),(4,3,0.00,366.00,5253.33,'USD','','{\"name\":\"Alvis Lowe\",\"number\":\"+13015586061\",\"full_name\":\"Alberta Grimes\",\"description\":\"Clark Upton\"}',NULL,0,'processing',NULL,'2021-12-04 04:49:13','2021-12-04 04:49:13',NULL),(5,4,0.00,845.00,8741.05,'USD','','{\"name\":\"Madisyn Heaney\",\"number\":\"+19158156886\",\"full_name\":\"Prof. Isobel Deckow V\",\"description\":\"Kale Becker\"}',NULL,0,'completed',NULL,'2021-12-04 04:49:13','2021-12-04 04:49:13',NULL),(6,4,0.00,641.00,7896.05,'USD','','{\"name\":\"Madisyn Heaney\",\"number\":\"+19158156886\",\"full_name\":\"Prof. Isobel Deckow V\",\"description\":\"Kale Becker\"}',NULL,0,'completed',NULL,'2021-12-04 04:49:13','2021-12-04 04:49:13',NULL),(7,8,0.00,524.00,11772.20,'USD','','{\"name\":\"Demarcus Wyman\",\"number\":\"+16460821574\",\"full_name\":\"Jennifer Ernser II\",\"description\":\"Halle Blanda\"}',NULL,0,'processing',NULL,'2021-12-04 04:49:13','2021-12-04 04:49:13',NULL),(8,8,0.00,134.00,11248.20,'USD','','{\"name\":\"Demarcus Wyman\",\"number\":\"+16460821574\",\"full_name\":\"Jennifer Ernser II\",\"description\":\"Halle Blanda\"}',NULL,0,'pending',NULL,'2021-12-04 04:49:14','2021-12-04 04:49:14',NULL),(9,8,0.00,3331.00,11114.20,'USD','','{\"name\":\"Demarcus Wyman\",\"number\":\"+16460821574\",\"full_name\":\"Jennifer Ernser II\",\"description\":\"Halle Blanda\"}',NULL,0,'processing',NULL,'2021-12-04 04:49:14','2021-12-04 04:49:14',NULL),(10,8,0.00,170.00,7783.20,'USD','','{\"name\":\"Demarcus Wyman\",\"number\":\"+16460821574\",\"full_name\":\"Jennifer Ernser II\",\"description\":\"Halle Blanda\"}',NULL,0,'completed',NULL,'2021-12-04 04:49:14','2021-12-04 04:49:14',NULL),(11,9,0.00,2597.00,11905.00,'USD','','{\"name\":\"Marley Hickle\",\"number\":\"+17253712785\",\"full_name\":\"Ms. Destiney Braun\",\"description\":\"Price Pouros\"}',NULL,0,'pending',NULL,'2021-12-04 04:49:14','2021-12-04 04:49:14',NULL),(12,9,0.00,104.00,9308.00,'USD','','{\"name\":\"Marley Hickle\",\"number\":\"+17253712785\",\"full_name\":\"Ms. Destiney Braun\",\"description\":\"Price Pouros\"}',NULL,0,'processing',NULL,'2021-12-04 04:49:14','2021-12-04 04:49:14',NULL),(13,9,0.00,2333.00,9204.00,'USD','','{\"name\":\"Marley Hickle\",\"number\":\"+17253712785\",\"full_name\":\"Ms. Destiney Braun\",\"description\":\"Price Pouros\"}',NULL,0,'pending',NULL,'2021-12-04 04:49:14','2021-12-04 04:49:14',NULL),(14,9,0.00,240.00,6871.00,'USD','','{\"name\":\"Marley Hickle\",\"number\":\"+17253712785\",\"full_name\":\"Ms. Destiney Braun\",\"description\":\"Price Pouros\"}',NULL,0,'pending',NULL,'2021-12-04 04:49:14','2021-12-04 04:49:14',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','myrna.wisozk@example.org','+15401081432','7378 Mozell Inlet','AX','West Virginia','Josietown',2,'stores/1.png','Dolores sed eos id eius delectus ut qui eum.','Aperiam velit enim qui ut dolores. Repudiandae at et aut et. Nostrum ut veniam maxime nostrum. Sunt ratione voluptatibus velit nisi.','published',NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(2,'Global Office','heathcote.cecilia@example.org','+18083381875','2776 Bradford Wall Apt. 970','TC','Kansas','East Scotty',3,'stores/2.png','Omnis sed et facilis ad quia ab autem.','Ad voluptatibus aspernatur consequatur ipsum. Deserunt est voluptate dolor aspernatur. Earum vero vel sed nemo exercitationem nesciunt.','published',NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(3,'Young Shop','tyler19@example.com','+19805224588','469 Thompson Mall','MN','Texas','Keonbury',4,'stores/3.png','Et ut est ut repellendus dolorem sint.','Dolores quae excepturi nihil. Commodi doloribus consectetur eligendi voluptatibus velit. Facilis vero consequatur suscipit eos.','published',NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(4,'Global Store','nakia.cronin@example.org','+15807736009','9100 Trinity Shoal','TN','New York','West Tomasahaven',5,'stores/4.png','Facere possimus et minima enim aut est sunt.','Non et non ipsum. Rerum architecto rerum enim et delectus itaque eius. Ex excepturi ab asperiores incidunt quae nulla qui iusto.','published',NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(5,'Robert’s Store','kerluke.jaylen@example.com','+19495876431','412 Vance Parkway','AM','Massachusetts','Cynthiashire',8,'stores/5.png','Excepturi est dolorum neque qui nihil.','Sed dolor ut doloribus in inventore. Est ipsam nobis est velit ab. Nam repellendus velit aut.','published',NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07'),(6,'Stouffer','jettie.greenholt@example.net','+17741106052','726 Beer Brooks','SN','Florida','Flatleyview',9,'stores/6.png','Adipisci fugiat eos quasi in.','Sunt aut ut exercitationem impedit ut ex. Aut doloribus reprehenderit blanditiis. Temporibus ipsa cum fuga ab corporis voluptatem unde.','published',NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT 0,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(15,2) NOT NULL DEFAULT 0.00,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,4694.40,0.00,7162.40,'$2y$10$Ufy36ELEficw9GUz3aGniu2p3RpN4p0mFOGpbyrM/lQcbpAn25JZa','{\"name\":\"Lee Toy\",\"number\":\"+19800514472\",\"full_name\":\"Miss Carmela Schneider\",\"description\":\"Dayton Emmerich I\"}','2021-12-04 04:49:06','2021-12-04 04:49:13'),(2,3,4887.33,0.00,7175.33,'$2y$10$FTNZ2.esFHsvD8tUg2HTeOSK4kc0erZLmTKDLmMQMcJSsKak4mMKO','{\"name\":\"Alvis Lowe\",\"number\":\"+13015586061\",\"full_name\":\"Alberta Grimes\",\"description\":\"Clark Upton\"}','2021-12-04 04:49:06','2021-12-04 04:49:13'),(3,4,7255.05,0.00,8741.05,'$2y$10$2KGeBEPow9Br6znGALSgVum2mOz/Td3PL5AhrX4k6AiL8Dx.JfQZO','{\"name\":\"Madisyn Heaney\",\"number\":\"+19158156886\",\"full_name\":\"Prof. Isobel Deckow V\",\"description\":\"Kale Becker\"}','2021-12-04 04:49:07','2021-12-04 04:49:13'),(4,5,0.00,0.00,0.00,'$2y$10$.kM39NjmPC1oQ/HdsdnyyOaQSc504e8l4qHMx.HxlTnvejJ.00mPi','{\"name\":\"Dr. Stefan Huel\",\"number\":\"+16693658726\",\"full_name\":\"Miss Nya Davis\",\"description\":\"Dandre McDermott\"}','2021-12-04 04:49:07','2021-12-04 04:49:07'),(5,8,7613.20,0.00,11772.20,'$2y$10$S/LFhhC98Npuv7YFhLKby.dyJ7XK8SgFLdK0ZYabKXZ.4TGuOtHGS','{\"name\":\"Demarcus Wyman\",\"number\":\"+16460821574\",\"full_name\":\"Jennifer Ernser II\",\"description\":\"Halle Blanda\"}','2021-12-04 04:49:07','2021-12-04 04:49:14'),(6,9,6631.00,0.00,11905.00,'$2y$10$ptHfx/RwCRpUkGq4cUjTqulDF9zfNKvFMreu3hdhm.zy2pUFwrSPS','{\"name\":\"Marley Hickle\",\"number\":\"+17253712785\",\"full_name\":\"Ms. Destiney Braun\",\"description\":\"Price Pouros\"}','2021-12-04 04:49:07','2021-12-04 04:49:14');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2021-12-04 04:48:59','2021-12-04 04:48:59'),(2,'About us','<p>Gryphon. \'Turn a somersault in the same size: to be seen--everything seemed to Alice for some time busily writing in his turn; and both footmen, Alice noticed, had powdered hair that curled all over crumbs.\' \'You\'re wrong about the crumbs,\' said the King. \'Nearly two miles high,\' added the Gryphon, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a chrysalis--you will some day, you know--and then after that savage Queen: so she helped herself to about two feet.</p><p>When the procession came opposite to Alice, they all crowded round her once more, while the Dodo suddenly called out in a helpless sort of idea that they were mine before. If I or she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was nothing so VERY nearly at the flowers and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said Five, \'and I\'ll tell you my history, and you\'ll understand.</p><p>But the insolence of his pocket, and pulled out a box of comfits, (luckily the salt water had not gone much farther before she had nibbled some more tea,\' the March Hare,) \'--it was at the corners: next the ten courtiers; these were all ornamented with hearts. Next came an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, I tell you, you coward!\' and at once set to work very diligently to write out a history of the pack, she could get to the other, and making quite.</p><p>Soup! \'Beautiful Soup! Who cares for you?\' said the Mock Turtle. \'Certainly not!\' said Alice as he spoke, and the pattern on their slates, when the Rabbit asked. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar contemptuously. \'Who are YOU?\' said the Hatter, \'you wouldn\'t talk about trouble!\' said the Mouse to Alice severely. \'What are tarts made of?\' Alice asked in a low, trembling voice. \'There\'s more evidence to come out among the party. Some of the.</p>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(3,'Terms Of Use','<p>So Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at the top of her sister, who was sitting on a crimson velvet cushion; and, last of all the players, except the King, going up to Alice, they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' said Alice indignantly, and she felt a violent blow underneath her chin: it had gone. \'Well! I\'ve often seen them so often, you know.\' \'Not at first, perhaps,\' said the Gryphon. \'I.</p><p>Alice did not seem to be\"--or if you\'d like it put more simply--\"Never imagine yourself not to her, though, as they were playing the Queen never left off quarrelling with the Gryphon. \'The reason is,\' said the Cat, \'if you don\'t like it, yer honour, at all, at all!\' \'Do as I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you how the game was in livery: otherwise, judging by his garden, and.</p><p>Mary Ann, and be turned out of the leaves: \'I should think it would feel with all their simple sorrows, and find a pleasure in all my life, never!\' They had not gone far before they saw the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon went on, taking first one side and up I goes like a star-fish,\' thought Alice. One of the Gryphon, \'you first form into a chrysalis--you will some day, you know--and then after that savage Queen: so she waited. The Gryphon.</p><p>I could say if I might venture to ask them what the flame of a well?\' \'Take some more of the month is it?\' Alice panted as she listened, or seemed to follow, except a tiny golden key, and when she was as much use in knocking,\' said the Gryphon. \'The reason is,\' said the Caterpillar. \'Is that all?\' said Alice, a little door into that lovely garden. First, however, she waited for some while in silence. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a languid, sleepy.</p>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(4,'Terms & Conditions','<p>Alice was not a regular rule: you invented it just missed her. Alice caught the baby joined):-- \'Wow! wow! wow!\' While the Owl and the beak-- Pray how did you begin?\' The Hatter was the White Rabbit put on her hand, and a crash of broken glass, from which she found this a good deal worse off than before, as the jury consider their verdict,\' the King exclaimed, turning to Alice, and her eyes immediately met those of a muchness\"--did you ever saw. How she longed to change them--\' when she heard.</p><p>So she swallowed one of the way to fly up into a large dish of tarts upon it: they looked so good, that it might tell her something about the same as they all looked so grave and anxious.) Alice could only hear whispers now and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! When I used to say which), and they sat down, and the procession moved on, three of her favourite word \'moral,\' and the Hatter asked.</p><p>However, \'jury-men\' would have this cat removed!\' The Queen turned angrily away from him, and very angrily. \'A knot!\' said Alice, (she had kept a piece of rudeness was more hopeless than ever: she sat down with one elbow against the ceiling, and had just begun \'Well, of all the while, and fighting for the fan she was looking at it again: but he now hastily began again, using the ink, that was linked into hers began to feel very sleepy and stupid), whether the pleasure of making a daisy-chain.</p><p>Footman continued in the wind, and the roof of the tea--\' \'The twinkling of the sort,\' said the March Hare moved into the teapot. \'At any rate a book of rules for shutting people up like telescopes: this time the Queen was close behind it was a little bit, and said to herself, as usual. I wonder what they\'ll do well enough; and what does it to half-past one as long as I was thinking I should be like then?\' And she thought it over a little pattering of feet in the same words as before, \'It\'s.</p>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(5,'Refund Policy','<p>I\'LL soon make you grow shorter.\' \'One side will make you a song?\' \'Oh, a song, please, if the Queen in front of them, with her head!\' about once in the direction it pointed to, without trying to invent something!\' \'I--I\'m a little timidly, for she felt that she had hurt the poor little thing sat down again in a trembling voice to its children, \'Come away, my dears! It\'s high time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, (she had grown so large a house, that.</p><p>That\'s all.\' \'Thank you,\' said the Gryphon. \'How the creatures wouldn\'t be so proud as all that.\' \'With extras?\' asked the Gryphon, the squeaking of the what?\' said the Mock Turtle. Alice was too much of it altogether; but after a few minutes, and she felt that she had accidentally upset the milk-jug into his plate. Alice did not much like keeping so close to her, so she waited. The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to taste it.</p><p>She did not quite know what a dear quiet thing,\' Alice went on, \'and most of \'em do.\' \'I don\'t know where Dinn may be,\' said the Rabbit began. Alice gave a look askance-- Said he thanked the whiting kindly, but he would deny it too: but the great puzzle!\' And she squeezed herself up on to the King, the Queen, but she thought it would,\' said the Gryphon. \'How the creatures order one about, and crept a little ledge of rock, and, as the whole she thought it would feel with all speed back to.</p><p>Then the Queen was close behind it when she looked down, was an immense length of neck, which seemed to have finished,\' said the Caterpillar. \'I\'m afraid I\'ve offended it again!\' For the Mouse had changed his mind, and was coming to, but it was too much frightened to say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have to turn round on its axis--\' \'Talking of axes,\' said the Dodo. Then they all stopped and.</p>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(10,'Affiliate','<p>Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very nice, (it had, in fact, I didn\'t know how to spell \'stupid,\' and that makes you forget to talk. I can\'t quite follow it as you are; secondly, because she was in the flurry of the fact. \'I keep them to be patted on the glass table as before, \'It\'s all about as she leant against a buttercup to rest herself, and fanned herself with.</p><p>Said his father; \'don\'t give yourself airs! Do you think you might catch a bad cold if she was walking hand in hand with Dinah, and saying to herself \'Suppose it should be free of them can explain it,\' said the young man said, \'And your hair has become very white; And yet I wish you wouldn\'t have come here.\' Alice didn\'t think that there was a good deal: this fireplace is narrow, to be executed for having missed their turns, and she went down to the other bit. Her chin was pressed hard against.</p><p>Knave, \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse looked at Alice, as she swam nearer to watch them, and all the jelly-fish out of this elegant thimble\'; and, when it saw Alice. It looked good-natured, she thought: still it had fallen into a tree. \'Did you say \"What a pity!\"?\' the Rabbit came up to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be growing small again.\' She got up very sulkily and crossed over to the.</p><p>Hatter. \'You MUST remember,\' remarked the King, looking round the court was a queer-shaped little creature, and held it out into the garden door. Poor Alice! It was the first sentence in her life; it was too slippery; and when she had got its head down, and nobody spoke for some time without hearing anything more: at last it sat for a great crash, as if it makes me grow larger, I can creep under the table: she opened it, and then at the thought that SOMEBODY ought to have the experiment tried.</p>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(11,'Career','<p>I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice to herself, \'to be going messages for a good deal worse off than before, as the soldiers shouted in reply. \'Please come back again, and looking at the top of his shrill little voice, the name again!\' \'I won\'t have any rules in particular; at least, if there were three gardeners at it, busily painting them red. Alice thought she might find another key on it, for she had expected: before she came up to her feet, for it was.</p><p>Cat went on, \'and most things twinkled after that--only the March Hare. \'It was the first question, you know.\' \'Who is it I can\'t remember,\' said the Hatter replied. \'Of course it is,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the song, perhaps?\' \'I\'ve heard something splashing about in the grass, merely remarking as it went, as if nothing had happened. \'How am I to get very tired of sitting by her sister was reading, but it was the.</p><p>Alice guessed who it was, and, as she swam lazily about in the way the people that walk with their hands and feet, to make out that it was certainly English. \'I don\'t think they play at all know whether it was written to nobody, which isn\'t usual, you know.\' Alice had got to the Knave was standing before them, in chains, with a growl, And concluded the banquet--] \'What IS the use of a well?\' The Dormouse slowly opened his eyes were nearly out of sight: then it watched the Queen furiously.</p><p>I\'ll set Dinah at you!\' There was a little now and then, if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, jumping up and walking off to other parts of the jury had a consultation about this, and Alice was more and more sounds of broken glass, from which she had drunk half the bottle, saying to herself \'This is Bill,\' she gave a sudden burst of tears, \'I do wish I hadn\'t mentioned Dinah!\' she said aloud. \'I must be.</p>',1,NULL,'default',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',0,NULL,'published','2021-12-04 04:49:00','2021-12-04 04:49:00');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'QIVDET8GZF','mollie',NULL,1246.20,1,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:07','2021-12-04 04:49:07','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'ICKRVTPOTH','stripe',NULL,2966.10,2,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'LCMI1WKIJX','paystack',NULL,1328.18,3,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'8DH7RFFWZQ','mollie',NULL,44.55,4,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'ZBX7NPZCWW','stripe',NULL,844.20,5,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'JDMB4IFDWI','stripe',NULL,2344.80,6,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'24NTX4HEX4','paystack',NULL,844.20,7,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'9FXMLXVYHR','stripe',NULL,1082.40,8,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'NH1BPRII5J','bank_transfer',NULL,1366.20,9,'pending','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'MFTWASZWDT','mollie',NULL,3620.80,10,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'L0FURC0DX2','paystack',NULL,168.53,11,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'RX96JTZKZJ','stripe',NULL,1246.20,12,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'SPYG0ZWX6D','razorpay',NULL,6458.40,13,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'S7KROA8X39','paypal',NULL,988.90,14,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'4LZR2YTOIL','stripe',NULL,1134.00,15,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'FZ3KISLSDX','paystack',NULL,3705.85,16,'completed','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'IIXGFYDAG0','sslcommerz',NULL,1205.40,17,'completed','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'HGG6ZMLUNY','sslcommerz',NULL,872.30,18,'completed','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'QZFZWGRJGK','paystack',NULL,3943.20,19,'completed','confirm',1,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'9WXELDZPAF','mollie',NULL,2786.90,20,'completed','confirm',1,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'MKGSURAH6L','bank_transfer',NULL,1674.00,21,'pending','confirm',1,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'4NDEFQOW7K','bank_transfer',NULL,988.90,22,'pending','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'YHDUKFW7ZA','paystack',NULL,1073.10,23,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'GLADXV4YUQ','stripe',NULL,3267.40,24,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'22SKEU9YPQ','razorpay',NULL,1246.20,25,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'NN0RC7YQKZ','sslcommerz',NULL,1284.80,26,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'P1QAOSYOO5','razorpay',NULL,565.40,27,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'SRM3FZM2GD','razorpay',NULL,3050.40,28,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'IRWEFXOKQX','bank_transfer',NULL,3620.80,29,'pending','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'G8ZIVJYCNX','paystack',NULL,2915.10,30,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'QVSXKSAAQ3','paypal',NULL,1677.90,31,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'NNBSA3EVA2','cod',NULL,1205.40,32,'pending','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'MCZDHOVYTO','paypal',NULL,2123.50,33,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'GMSLNAHQHU','paystack',NULL,42.00,34,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'UYH8TTMOZO','mollie',NULL,1887.90,35,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'VYTBVCHXQU','paypal',NULL,1079.40,36,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'GCL7SID83V','mollie',NULL,1188.60,37,'completed','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'FZLRAAA5SQ','mollie',NULL,1284.80,38,'completed','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'EBTKID3YU5','bank_transfer',NULL,1159.40,39,'pending','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'ZOPCRBANMK','sslcommerz',NULL,753.50,40,'completed','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'W5CYUH9WWI','razorpay',NULL,4537.50,41,'completed','confirm',6,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'N8SWIEA9SP','sslcommerz',NULL,85.05,42,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'U86D8OJICK','mollie',NULL,42.00,43,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'UCEDJWE4VV','paystack',NULL,1366.20,44,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'DRKZSYF4CH','bank_transfer',NULL,1082.40,45,'pending','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'Y2EJWRYCN1','sslcommerz',NULL,1779.40,46,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'DVGVWNLEXU','paypal',NULL,1779.40,47,'completed','confirm',10,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(48,'USD',0,'S9UBIEUKD2','sslcommerz',NULL,125.55,48,'completed','confirm',1,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(49,'USD',0,'XSC6TOMDFU','paypal',NULL,2123.50,49,'completed','confirm',1,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(50,'USD',0,'IQ9GBOCWJE','mollie',NULL,1188.60,50,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(51,'USD',0,'BDYDVKZLQZ','sslcommerz',NULL,1066.80,51,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(52,'USD',0,'JCYZWMZW8M','sslcommerz',NULL,6073.60,52,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL),(53,'USD',0,'IOA3WQMYBO','paypal',NULL,1665.30,53,'completed','confirm',7,NULL,NULL,'2021-12-04 04:49:08','2021-12-04 04:49:08','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,1,2),(4,3,2),(5,2,3),(6,4,3),(7,2,4),(8,3,4),(9,2,5),(10,3,5),(11,1,6),(12,3,6),(13,1,7),(14,4,7),(15,1,8),(16,4,8),(17,1,9),(18,3,9),(19,2,10),(20,3,10),(21,2,11),(22,4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2196,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',369,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1871,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',137,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1783,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',718,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1690,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',643,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1828,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',133,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2181,NULL,'2021-12-04 04:48:58','2021-12-04 04:48:58');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(8,'simple_slider_using_assets','0',NULL,NULL),(10,'permalink-botble-blog-models-post','blog',NULL,NULL),(11,'permalink-botble-blog-models-category','blog',NULL,NULL),(12,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(13,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(14,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(15,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(22,'theme','martfury',NULL,NULL),(23,'admin_logo','general/logo-light.png',NULL,NULL),(97,'language_hide_default','1',NULL,NULL),(98,'language_switcher_display','dropdown',NULL,NULL),(99,'language_display','all',NULL,NULL),(100,'language_hide_languages','[]',NULL,NULL),(102,'media_random_hash','e18d6bae1c4416d86ce9cffc76b3a08a',NULL,NULL),(111,'ecommerce_store_name','Martfury',NULL,NULL),(112,'ecommerce_store_phone','1800979769',NULL,NULL),(113,'ecommerce_store_address','502 New Street',NULL,NULL),(114,'ecommerce_store_state','Brighton VIC',NULL,NULL),(115,'ecommerce_store_city','Brighton VIC',NULL,NULL),(116,'ecommerce_store_country','AU',NULL,NULL),(117,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(118,'theme-martfury-copyright','© 2021 Martfury. All Rights Reserved.',NULL,NULL),(119,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(120,'theme-martfury-logo','general/logo.png',NULL,NULL),(121,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(122,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(123,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(124,'theme-martfury-email','contact@martfury.co',NULL,NULL),(125,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(126,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(127,'theme-martfury-homepage_id','1',NULL,NULL),(128,'theme-martfury-blog_page_id','6',NULL,NULL),(129,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(130,'theme-martfury-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(131,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(132,'theme-martfury-number_of_products_per_page','40',NULL,NULL),(133,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(134,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(135,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(136,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(137,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(138,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(139,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(140,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(141,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(142,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(143,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(144,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(145,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(146,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(147,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(148,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(149,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(150,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(151,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(152,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(153,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(154,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(155,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(156,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(157,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(158,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(159,'theme-martfury-number_of_cross_sale_products_in_cart_page','7',NULL,NULL),(160,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(161,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(162,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(165,'theme-martfury-social-name-1','Facebook',NULL,NULL),(166,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(167,'theme-martfury-social-icon-1','fa-facebook',NULL,NULL),(168,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(169,'theme-martfury-social-name-2','Twitter',NULL,NULL),(170,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(171,'theme-martfury-social-icon-2','fa-twitter',NULL,NULL),(172,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(173,'theme-martfury-social-name-3','Instagram',NULL,NULL),(174,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(175,'theme-martfury-social-icon-3','fa-instagram',NULL,NULL),(176,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(177,'theme-martfury-social-name-4','Youtube',NULL,NULL),(178,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(179,'theme-martfury-social-icon-4','fa-youtube',NULL,NULL),(180,'theme-martfury-social-color-4','#FF0000',NULL,NULL),(181,'theme-martfury-vi-copyright','© 2021 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(182,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(183,'theme-martfury-vi-homepage_id','1',NULL,NULL),(184,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(185,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(186,'theme-martfury-vi-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(187,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(188,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(189,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(190,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(191,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1.jpg','/products',NULL,1,'2021-12-04 04:48:59','2021-12-04 04:48:59'),(2,1,'Slider 2','sliders/2.jpg','/products',NULL,2,'2021-12-04 04:48:59','2021-12-04 04:48:59'),(3,1,'Slider 3','sliders/3.jpg','/products',NULL,3,'2021-12-04 04:48:59','2021-12-04 04:48:59'),(4,2,'Slider 1','sliders/1.jpg','/products',NULL,1,'2021-12-04 04:48:59','2021-12-04 04:48:59'),(5,2,'Slider 2','sliders/2.jpg','/products',NULL,2,'2021-12-04 04:48:59','2021-12-04 04:48:59'),(6,2,'Slider 3','sliders/3.jpg','/products',NULL,3,'2021-12-04 04:48:59','2021-12-04 04:48:59');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2021-12-04 04:48:59','2021-12-04 04:48:59'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2021-12-04 04:48:59','2021-12-04 04:48:59');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2021-12-04 04:48:34','2021-12-04 04:48:34'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2021-12-04 04:48:34','2021-12-04 04:48:34'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2021-12-04 04:48:34','2021-12-04 04:48:34'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2021-12-04 04:48:34','2021-12-04 04:48:34'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2021-12-04 04:48:34','2021-12-04 04:48:34'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2021-12-04 04:48:34','2021-12-04 04:48:34'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2021-12-04 04:48:34','2021-12-04 04:48:34'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2021-12-04 04:48:35','2021-12-04 04:48:35'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:48','2021-12-04 04:48:48'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2021-12-04 04:48:49','2021-12-04 04:48:49'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-12-04 04:48:53','2021-12-04 04:48:53'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-12-04 04:48:53','2021-12-04 04:48:53'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-12-04 04:48:53','2021-12-04 04:48:53'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-12-04 04:48:53','2021-12-04 04:48:53'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-12-04 04:48:53','2021-12-04 04:48:53'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2021-12-04 04:48:53','2021-12-04 04:48:53'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2021-12-04 04:48:58','2021-12-04 04:48:58'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2021-12-04 04:48:58','2021-12-04 04:48:58'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2021-12-04 04:48:58','2021-12-04 04:48:58'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2021-12-04 04:48:58','2021-12-04 04:48:58'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2021-12-04 04:48:58','2021-12-04 04:48:58'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2021-12-04 04:48:58','2021-12-04 04:49:01'),(94,'home',1,'Botble\\Page\\Models\\Page','','2021-12-04 04:48:59','2021-12-04 04:48:59'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(104,'career',11,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2021-12-04 04:49:00','2021-12-04 04:49:00'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2021-12-04 04:49:07','2021-12-04 04:49:07'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2021-12-04 04:49:07','2021-12-04 04:49:07'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2021-12-04 04:49:07','2021-12-04 04:49:07'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2021-12-04 04:49:07','2021-12-04 04:49:07'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2021-12-04 04:49:07','2021-12-04 04:49:07'),(111,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2021-12-04 04:49:07','2021-12-04 04:49:07');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2021-12-04 04:48:58','2021-12-04 04:48:58'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2021-12-04 04:48:58','2021-12-04 04:48:58'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2021-12-04 04:48:58','2021-12-04 04:48:58'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2021-12-04 04:48:58','2021-12-04 04:48:58'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2021-12-04 04:48:58','2021-12-04 04:48:58');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$aB0azCXQTCVbzrkD839x.OmtKmHnoOa/9VU4ygl24h3OPSUd9u3uq',NULL,'2021-12-04 04:49:01','2021-12-04 04:49:01','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2021-12-04 04:49:03','2021-12-04 04:49:03'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2021-12-04 04:49:03','2021-12-04 04:49:03');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-18 17:22:15