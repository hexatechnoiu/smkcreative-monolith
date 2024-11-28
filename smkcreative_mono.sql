-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: smkcreative_mono
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web App',1,'2024-08-12 12:23:06','2024-08-12 12:23:06'),(2,'Web design',1,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(3,'Games',1,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(4,'Metaverse',1,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(5,'Animasi',1,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(6,'Desain & Printing',1,'2024-08-12 12:23:08','2024-08-12 12:23:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_08_12_172346_create_categories_table',1),(5,'2024_08_12_182339_create_projects_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `category_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_category_id_foreign` (`category_id`),
  CONSTRAINT `projects_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'/assets/webapp/noiu.png','Profile company web NOIU','',1,'https://hexatechnoiu.my.id/',1,'2024-08-12 12:23:06','2024-08-12 12:23:06'),(2,'/assets/webapp/evoting.png','E-voting','',1,'https://sipentaskumis.smkn2sumedang.sch.id/',1,'2024-08-12 12:23:06','2024-08-12 12:23:06'),(3,'/assets/webapp/mevers.png','Mevers','',1,'https://difest23-mevers.netlify.app/',1,'2024-08-12 12:23:06','2024-08-12 12:23:06'),(4,'/assets/webapp/malvis.png','Malvis Law Firm','',1,'https://malvis.co.id/',1,'2024-08-12 12:23:06','2024-08-12 12:23:06'),(5,'/assets/webapp/binx.png','BINX','',1,'https://gilangjabbar657.wixsite.com/my-site/profil',1,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(6,'/assets/webapp/hamparanpermata.png','Hamparan permata','',1,'https://hamparanpermatagroup.com/',1,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(7,'/assets/webapp/ecommerce.png','E-commerce SMKN 2 Sumedang','',1,'https://pameran.hexatechnoiu.my.id/',1,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(8,'/assets/product/aboba.png','Drinks sale web','',1,'https://www.figma.com/proto/RVdNeZdvTQ6gKBU5OSdSqm/boba-mockup?type=design&node-id=1-2&t=PdFfecM4cmNPcOXQ-0&scaling=contain&page-id=0%3A1&starting-point-node-id=1%3A2',2,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(9,'/assets/product/gaudio.png','GAUDIO','',1,'https://www.figma.com/proto/QvTx7hvCgR4YKo2hGNsaTK/GAUDIO?type=design&node-id=102-467&t=kx50UdkzaxWjd6CH-0&scaling=min-zoom&page-id=66%3A225',2,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(10,'/assets/product/coffeeshop.png','Coffee shop','',1,'https://www.figma.com/file/YPEJmzzstrFbY4XdmvdIQD/coffe-shop?type=design&node-id=0-1&mode=design',2,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(11,'/assets/product/vrweb.png','Metaverse web design','',1,'https://www.figma.com/proto/PM695HrWCIU9BaLplZdDyr/DW_SMKN2SUMEDANG_SitiNurFauziah?type=design&node-id=1-16&t=nZSqWv6N7IwOHbOw-0&scaling=min-zoom&page-id=1%3A16',2,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(12,'/assets/product/grojunio.png','Grojunio','',1,'https://www.figma.com/proto/H1PAY2zMseOFKEfkf59uEb/ITDRI?node-id=197-575&scaling=scale-down&page-id=0%3A1&starting-point-node-id=197%3A544',2,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(13,'/assets/games/hijaiyah.png','Tebak-tebakan huruf hijaiyah','',1,'https://indahfadhila.itch.io/matching-hijaiyah',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(14,'/assets/games/buah.png','Tebak buah','',1,'https://rzkalee.itch.io/dora-fruit-the-explorer',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(15,'/assets/games/permainankata.jpeg','Memasangkan Kata','',1,'https://shyfaafrilia04.itch.io/memasangkankata',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(16,'/assets/games/bouncehook.jpeg','Bounce & Hook','',1,'https://maitsamaulida.itch.io/bounce-and-hook-jack',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(17,'/assets/games/tebakbendera.png','Tebak Bendera','',1,'https://theflags.vercel.app/',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(18,'/assets/games/blockninja.png','Block Ninja','',1,'https://block-ninja.vercel.app/',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(19,'/assets/games/tictactoe.png','Tic Tac Toe','',1,'https://tussle-xo.vercel.app/',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(20,'/assets/games/tetris.jpeg','Tetris','',1,'https://gd.games/instant-builds/6cdfdae3-7edb-4be1-af79-d97b8b26fcad',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(21,'/assets/games/catadventure.jpeg','Cat adventure','',1,'https://gd.games/instant-builds/b25975a2-6654-4a49-9b8a-32f2312e828c',3,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(22,'/assets/product/mozhub1.png','Mozilla Hub 1','',1,'https://hubs.mozilla.com/SHMczMG/',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(23,'/assets/product/mozhub2.png','Mozilla Hub 2','',1,'https://hubs.mozilla.com/QzrGeWt/',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(24,'/assets/product/mozhub3.png','Mozilla Hub 3','',1,'https://app.lapentor.com/sphere/virtual-tour-smkn-2-sumedang',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(25,'/assets/product/lapentor.png','Virtual Tour','',1,'https://skfb.ly/oA96D',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(26,'/assets/product/mozhub4.png','Mozilla Hub 4','',1,'https://hubs.mozilla.com/wqLDmfk',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(27,'/assets/product/gridasbooth.png','Gridas Booth 3D','',1,'https://skfb.ly/oA96D',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(28,'/assets/product/tefabooth.png','Tefa Booth 3D','',1,'https://skfb.ly/oAWEG',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(29,'/assets/product/gridasexpo.png','Gridas Expo 3D','',1,'https://skfb.ly/oAsUo',4,'2024-08-12 12:23:07','2024-08-12 12:23:07'),(30,'/assets/overview/animation.png','Animasi Perkembangan Teknologi','',1,'https://www.youtube.com/watch?v=rJXHf1BhXUg',5,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(31,'/assets/product/tumbler.jpg','Tumbler','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(32,'/assets/product/plainmug.jpg','Plain mug','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(33,'/assets/product/colormug.jpg','Color mug','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(34,'/assets/product/ganci.jpg','Acrylic Keychain','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(35,'/assets/product/onesidekeychain.jpg','One side keychain','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(36,'/assets/product/pin.jpg','Pin','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(37,'/assets/product/canvastotebag.jpg','Canvas Totebag','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08'),(38,'/assets/product/tshirt.jpg','Short T-Shirt','',1,'https://pameran.hexatechnoiu.my.id/produk',6,'2024-08-12 12:23:08','2024-08-12 12:23:08');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('d5vQeio5OPuVm0vxIPxaX5kbvseM1ziFcTcz3f0x',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1g2M3k0Sm5DaXUyanJERHcwTFNLdHkyaVBld1NkYkNtaE9QQlU5RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1723510559),('K4AugRIte9yrzNS8GwP0P6hkbyLkYnbqcXmpVCMy',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFlLVVRsZnlod3MxRWpiRjRwNEp3eUwzRWNlOXJyT1FiNHdBUVlrUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=',1723492935);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-08-13  8:06:37
