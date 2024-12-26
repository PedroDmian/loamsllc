-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (arm64)
--
-- Host: localhost    Database: loamsllc
-- ------------------------------------------------------
-- Server version	8.0.28

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_10_29_215643_create_tickets_table',2),(7,'2024_10_30_200146_create_settings_table',3),(18,'2024_10_30_233329_create_transactions_table',4),(19,'2024_10_31_024950_create_personal_access_tokens_table',4),(20,'2024_10_31_040220_create_transactions_line_table',4),(21,'2024_11_11_184651_alter_tickets_table',5);
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
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
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
INSERT INTO `sessions` VALUES ('0Nxge6IhToQaFnapkwAD9xJqa6Ephx1W76gHMje1',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:133.0) Gecko/20100101 Firefox/133.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVm5JQ0hkQUFtN1VEbWVBQkg2RjBHQzBoTElqVzR5TU4yaEEzVENqbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHBzOi8vbG9hbXMudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1735244405),('25U9R05l27N1rjYS9aYd7zLKb1JIxDg33s1oF0bj',NULL,'127.0.0.1','Square Connect v2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiUFBwc0Y1aXE2dkRraXp1QnVySHNMSDFBWTBPZXE1M0hSUVFjVjRBbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730343150),('3ld6R3n3ajeuauM6O7N5UchOyJ2OufEpy2XTUTbq',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:132.0) Gecko/20100101 Firefox/132.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWE1VdmM1MWVtczFhYkdCZm42azJjVUF3bXhpZ2h2Q3BnNmMxU3ZaMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbG9hbXMudGVzdC9wYXJ0aWNpcGFudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1731447952),('5MJENknMinrBMaJPVKh0EzMilhpTLlVbEXUNEp22',NULL,'127.0.0.1','Square Connect v2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiR3FJc0xHNlZGQUVzeDZtYlhTNTRzdFQxWVNZdDN0aFBJbGxFcTlQRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730343144),('BYHEG9xTDTlqKhimnljQscsYZPefRELtiDLMSsSl',NULL,'127.0.0.1','Square Connect v2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiSHh3dkRYeXAwQ3RndjNGSUhmZkVtNHZPMXhnYzBJZ1lhS09WN1BxYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730343145),('cVJWcPpsxBoqd6fRWX17la5buHoOzzhjJu1oSm9J',NULL,'127.0.0.1','Square Connect v2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiVDNUaU5rdUEySUtRWnZTbXIyMFZuN2I1aEJtVlJteW9CWm5uU2lqVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730343142),('DOSpqS372U0ai6IX8kNCof0TvfJ09Dh9bRXZ4q8X',NULL,'127.0.0.1','Square Connect v2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiWldLY1B1VTRkeGFxc29GNmVCdFV2UzQycHFBckFtdEFZR0VVZ3l5UyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730343144),('eShl0UES6ygeKR9sUYRLL5Iu5LRvOp0INMDXoVIL',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/131.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiak5JRm1vMGx3a2VSQ3lRMWt2NXV6S2Y2d2JLblc1MDZ4ak95ZU1NUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzE6Imh0dHBzOi8vbG9hbXMudGVzdC9wYXltZW50X3N1Y2Nlc3MvZmIwNjAxZDctOTc3Ny00YThjLTgzMjItOTY5NzVlNWY3NmZlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyODoiaHR0cHM6Ly9sb2Ftcy50ZXN0L2Rhc2hib2FyZCI7fX0=',1730352959),('hBwKlIsxAqrkMzosuPqJySYT3RcCiR1xqNkra2uO',NULL,'127.0.0.1','Square Connect v2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGdWMGlSYldEQkRUV2owZnlUUmpVQno0SDFmOWc2aUNvbU9aNXNXUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730343143),('hoZml6Qfk1SH3Fdhx4TJIbAm7NOrS3IML27Begf3',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/131.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmlheWVhdFRNS0JCa0JwV2xNaFpIMkZzd05xejNqM3I4Y0pxUTdrSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbG9hbXMudGVzdC9wYXJ0aWNpcGFudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1730415489),('IfVrU9ReGAROMJQHjjbP21SZzcLFkG3GloEsWkxO',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/131.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoiemh6bER3MENwU2lsenhnYVZzREVxQk85N014ejFUczAzOHRBWW5QRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzE6Imh0dHBzOi8vbG9hbXMudGVzdC9wYXltZW50X3N1Y2Nlc3MvMzdlZGI1NWMtNGVhYS00NmJmLWFmMWEtNDBmN2FkODZhZWY1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730352360),('KqgKhreYa3CNdIoTHdKlPzhZGSyurTLSUMoUfqXj',NULL,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/131.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUxlWlB5dEFlRmsyYnFNaUZSVmRTRmNqWm0wc2F0T0Z0OEV0WDNJeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vbG9hbXMudGVzdC9wYXJ0aWNpcGFudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1730393675),('Kzr2CE5A3vzMtbZDa16anYTUuGiZSTnLK3WVwM6X',NULL,'127.0.0.1','Square Connect v2','YToyOntzOjY6Il90b2tlbiI7czo0MDoiYzlTOGNYcllsOU5GSE51dFVDa1ZLRVp0eEptZVhhdFMxaTBaRko4eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1730343143);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `square_is_production` tinyint(1) DEFAULT '0',
  `square_live_applicant_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square_live_access_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square_live_location_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square_sandbox_applicant_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square_sandbox_access_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `square_sandbox_location_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,2,0,'sq0idp-PrZIuyBHVbjcsmLT4YfprQ','EAAAlqgY129TbmZX_1PQXpH3mzpgXo6vSvIbqi_oylgJAk_USlnsT9JC03LIvly6','LFFFZZEN90E0J','sandbox-sq0idb-tgMVfn6tcN7HCb1MMVNZxw','EAAAl5WdbNGmRpEl3vPs53qA0OShMTbpc3WLpWebamMdIs6AnRJSOB6iDxZXKwFq','LZNHKH643YWRH',NULL,'2024-10-31 02:50:26','2024-10-31 02:50:26');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_index` bigint DEFAULT NULL,
  `num_one` int NOT NULL,
  `num_two` int NOT NULL,
  `num_three` int NOT NULL,
  `num_four` int NOT NULL,
  `num_five` int NOT NULL,
  `num_six` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1740091 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (2,1,1,13,25,10,2,14,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(3,2,1,13,35,10,2,15,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(4,3,1,13,45,10,2,16,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(5,4,1,13,55,10,2,17,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(6,5,1,13,65,10,2,18,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(7,6,1,15,23,10,2,19,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(8,7,1,15,33,10,2,20,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(9,8,1,15,43,10,2,21,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(10,9,1,15,53,10,2,22,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(11,10,1,15,63,10,2,23,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(12,11,1,23,35,10,2,24,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(13,12,1,23,45,10,2,25,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(14,13,1,23,55,10,2,1,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(15,14,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740054,15,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740055,16,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740056,17,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740057,18,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740058,19,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740059,20,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740060,21,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740061,22,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740062,23,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740063,24,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740064,25,1,23,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740066,1,1,45,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740067,2,2,43,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740068,3,3,34,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740069,4,4,2,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740070,5,5,3,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740071,6,6,46,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740072,7,7,46,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740073,8,8,43,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740074,9,9,12,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740075,10,34,46,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740076,11,43,65,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740077,12,65,55,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740078,13,32,5,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740079,14,7,6,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740080,15,67,55,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740081,16,43,5,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740082,17,67,44,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740083,18,7,34,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740084,19,6,57,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740085,20,43,79,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740086,21,43,87,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740087,22,43,68,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740088,23,54,9,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740089,24,31,8,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37'),(1740090,25,45,98,65,10,2,2,NULL,'2024-10-30 02:12:37','2024-10-30 02:12:37');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_internal_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_email` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (2,'p8WMCcpLQEfQE3QM5HqS82Tl7MHZY','dqKuCZ0M11DQFdfkUhQcQsEJEiJZY','0edcb552-8c7d-4c5d-aed1-56eba2b8dc72',200,'COMPLETED','damian@semnexus.com',1,NULL,'2024-11-13 03:14:25','2024-11-13 03:43:28'),(3,'33QsUThDipWp04JcbdpIso2RPeLZY','vNzks4fDQ1tqcP7ofAS2bA5FCwFZY','f193ed44-9421-4744-9c12-f9b2a7efb39f',400,'COMPLETED','damian@semnexus.com',1,NULL,'2024-11-13 03:46:08','2024-11-13 03:54:28');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions_line`
--

DROP TABLE IF EXISTS `transactions_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions_line` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint NOT NULL,
  `ticket_id` bigint NOT NULL,
  `game_id` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions_line`
--

LOCK TABLES `transactions_line` WRITE;
/*!40000 ALTER TABLE `transactions_line` DISABLE KEYS */;
INSERT INTO `transactions_line` VALUES (3,2,2,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(4,2,3,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(5,2,4,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(6,2,5,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(7,2,6,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(8,2,7,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(9,2,8,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(10,2,9,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(11,2,10,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(12,2,11,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(13,2,12,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(14,2,13,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(15,2,14,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(16,2,15,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(17,2,1740054,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(18,2,1740055,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(19,2,1740056,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(20,2,1740057,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(21,2,1740058,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(22,2,1740059,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(23,2,1740060,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(24,2,1740061,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(25,2,1740062,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(26,2,1740063,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(27,2,1740064,1,NULL,'2024-11-13 03:14:25','2024-11-13 03:14:25'),(28,3,1740066,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(29,3,1740067,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(30,3,1740068,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(31,3,1740069,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(32,3,1740070,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(33,3,1740071,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(34,3,1740072,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(35,3,1740073,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(36,3,1740074,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(37,3,1740075,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(38,3,1740076,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(39,3,1740077,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(40,3,1740078,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(41,3,1740079,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(42,3,1740080,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(43,3,1740081,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(44,3,1740082,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(45,3,1740083,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(46,3,1740084,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(47,3,1740085,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(48,3,1740086,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(49,3,1740087,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(50,3,1740088,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(51,3,1740089,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(52,3,1740090,1,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(53,3,2,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(54,3,3,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(55,3,4,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(56,3,5,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(57,3,6,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(58,3,7,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(59,3,8,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(60,3,9,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(61,3,10,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(62,3,11,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(63,3,12,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(64,3,13,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(65,3,14,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(66,3,15,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(67,3,1740054,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(68,3,1740055,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(69,3,1740056,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(70,3,1740057,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(71,3,1740058,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(72,3,1740059,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(73,3,1740060,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(74,3,1740061,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(75,3,1740062,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(76,3,1740063,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09'),(77,3,1740064,2,NULL,'2024-11-13 03:46:09','2024-11-13 03:46:09');
/*!40000 ALTER TABLE `transactions_line` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Test User','test@example.com','2024-10-11 03:54:48','$2y$12$NAVFxdz3a/Grgsv0iwCBKeGgWT7Nm53Zb5QdOTmMtUeXrSn8ypw/G','0WmvD13xNusWbgB8azeBRhryeBT5NSTVwEhBU69biXy1yexmWetueASeNIit','2024-10-11 03:54:48','2024-10-11 03:54:48');
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

-- Dump completed on 2024-12-26 15:02:51
