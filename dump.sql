-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: folex_db
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.20.04.1

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
-- Table structure for table `coin_data`
--

DROP TABLE IF EXISTS `coin_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coin_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `hashing_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `formula` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coin_display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network_hashrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `difficulty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_block` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin_data`
--

LOCK TABLES `coin_data` WRITE;
/*!40000 ALTER TABLE `coin_data` DISABLE KEYS */;
INSERT INTO `coin_data` VALUES (1,1,1,'<price> / ( ( 1 / ( ( ( (<network_hashrate> * 1000) * <reward_block> ) / ( <difficulty> * 3600 ) ) * 86400 ) ) )','TH/s','BTC','{\"id\":\"a195fd59ce0ebc3f9b2d99b3c396ff198bcb4a5e\",\"coin\":\"BTC\",\"name\":\"Bitcoin\",\"type\":\"coin\",\"algorithm\":\"SHA-256\",\"network_hashrate\":5.6876213656025e+20,\"difficulty\":81725299822043,\"reward\":6.4101196246686e-20,\"reward_unit\":\"BTC\",\"reward_block\":6.25,\"price\":52143.148801825,\"volume\":28110441076.731,\"updated\":1708101372}','BTC','5.6876213656025E+20','81725299822043','6.4101196246686E-20','6.25','52143.148801825','2024-01-10 10:07:11','2024-02-16 11:10:02'),(2,2,1,'( <reward_block> * (<total_hash>) * 86400 ) / (<difficulty> *  4294967296)','MH/s','BINANCE ETHW','{\"id\":\"a4ffb5b5b721c91643ae5e038d87d0e9ab1665dd\",\"coin\":\"BINANCE ETHW\",\"name\":\"Binance\",\"type\":\"pool\",\"algorithm\":\"Ethash\",\"network_hashrate\":-1,\"difficulty\":-1,\"reward\":4.1230416666667e-11,\"reward_unit\":\"ETHW\",\"reward_block\":-1,\"price\":2.8348786236223,\"volume\":-1,\"updated\":1708102802}','ETHW','-1','-1','4.1230416666667E-11','-1','2.8348786236223','2024-01-10 10:07:11','2024-02-16 11:20:02'),(3,3,1,'( <reward_block> * (<total_hash>) * 86400 ) / (<difficulty> *  4294967296)','KH/s','KAS','{\"id\":\"7ae4e0240e6cd4690300f55430f54ef5137062de\",\"coin\":\"KAS\",\"name\":\"Kaspa\",\"type\":\"coin\",\"algorithm\":\"KHeavyHash\",\"network_hashrate\":1.7007956828705e+17,\"difficulty\":39599735.356646,\"reward\":2.7688570853214e-12,\"reward_unit\":\"KAS\",\"reward_block\":130.8127827,\"price\":0.14163025807031,\"volume\":37803064.177549,\"updated\":1708098864}','KAS','1.7007956828705E+17','39599735.356646','2.7688570853214E-12','130.8127827','0.14163025807031','2024-01-10 10:07:12','2024-02-16 11:20:02'),(6,5,1,'( <reward_block> * (<total_hash>) * 86400 ) / (<difficulty> *  4294967296)','MH/s','2MINERS ZEC','{\"id\":\"0bfeb7251ef0b2e58abca9755796f2a9258a3721\",\"coin\":\"2MINERS ZEC\",\"name\":\"2Miners\",\"type\":\"pool\",\"algorithm\":\"Equihash\",\"network_hashrate\":-1,\"difficulty\":-1,\"reward\":9.8244639085816e-9,\"reward_unit\":\"ZEC\",\"reward_block\":-1,\"price\":22.6344443724,\"volume\":-1,\"updated\":1708100401}','ZEC','-1','-1','9.8244639085816E-9','-1','22.6344443724','2024-02-02 10:22:44','2024-02-16 11:20:02');
/*!40000 ALTER TABLE `coin_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coinbase_payments`
--

DROP TABLE IF EXISTS `coinbase_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coinbase_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `coinbase_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coinbase_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_deposit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashing_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin_data_id` bigint DEFAULT NULL,
  `energy_bought` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_resolved` tinyint(1) NOT NULL DEFAULT '0',
  `timeline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coinbase_payments`
--

LOCK TABLES `coinbase_payments` WRITE;
/*!40000 ALTER TABLE `coinbase_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `coinbase_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coinbase_webhooks`
--

DROP TABLE IF EXISTS `coinbase_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coinbase_webhooks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coinbase_webhooks`
--

LOCK TABLES `coinbase_webhooks` WRITE;
/*!40000 ALTER TABLE `coinbase_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `coinbase_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crypto_options`
--

DROP TABLE IF EXISTS `crypto_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crypto_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto_options`
--

LOCK TABLES `crypto_options` WRITE;
/*!40000 ALTER TABLE `crypto_options` DISABLE KEYS */;
INSERT INTO `crypto_options` VALUES (1,'Bitcoin',NULL,NULL),(2,'Ethereum',NULL,NULL),(3,'Litecoin',NULL,NULL),(4,'Bitcoin Cash',NULL,NULL),(5,'USD Coin',NULL,NULL),(6,'Tether',NULL,NULL),(7,'Binance Coin',NULL,NULL),(8,'Bitcoin Cash',NULL,NULL);
/*!40000 ALTER TABLE `crypto_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_requests`
--

DROP TABLE IF EXISTS `deposit_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `is_resolved` tinyint(1) NOT NULL DEFAULT '0',
  `is_accepted` tinyint(1) DEFAULT NULL,
  `action_performed_by` bigint DEFAULT NULL,
  `action_performed_at` datetime DEFAULT NULL,
  `amount_deposited` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashing_id` int DEFAULT NULL,
  `coin_data_id` bigint DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=card,2=bank,3=coin',
  `coinbase_payment_id` bigint DEFAULT NULL,
  `stripe_payment_id` bigint DEFAULT NULL,
  `energy_bought` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_requests`
--

LOCK TABLES `deposit_requests` WRITE;
/*!40000 ALTER TABLE `deposit_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposit_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_histories`
--

DROP TABLE IF EXISTS `email_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` bigint DEFAULT NULL,
  `to` bigint DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_histories`
--

LOCK TABLES `email_histories` WRITE;
/*!40000 ALTER TABLE `email_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `hashings`
--

DROP TABLE IF EXISTS `hashings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hashings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `price_khs` double DEFAULT NULL COMMENT '1KH/s in $',
  `cost_per_kwh` double DEFAULT NULL COMMENT 'KWh',
  `power_consumption` double DEFAULT NULL COMMENT 'w / 1KH-s',
  `maintenance_fee` double DEFAULT NULL COMMENT 'Percentage',
  `min_buyable` double DEFAULT NULL COMMENT 'KH-s',
  `max_buyable` double DEFAULT NULL COMMENT 'KH-s',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashings`
--

LOCK TABLES `hashings` WRITE;
/*!40000 ALTER TABLE `hashings` DISABLE KEYS */;
INSERT INTO `hashings` VALUES (1,'SHA-256',1,19.5,0.67,17.5,15,150,50000,NULL,'2024-02-04 02:11:04'),(2,'Ethash',1,1,0.12,0.12,14,2000,15000,NULL,'2024-02-03 14:16:04'),(3,'KHeavyHash',1,2323,23,233,23,25,4000,NULL,'2024-01-21 11:56:39'),(5,'Equihash',1,0.283,0.67,0.345,15,25000,500000,'2024-02-02 10:21:00','2024-02-02 10:21:00');
/*!40000 ALTER TABLE `hashings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `ledgers`
--

DROP TABLE IF EXISTS `ledgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ledgers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `payment_id` bigint DEFAULT NULL,
  `current_wallet_balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Wallet balance after action',
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashing_id` int DEFAULT NULL,
  `coin_data_id` bigint DEFAULT NULL,
  `coin_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=withdraw, 2=deposit, 3=referral, 4=daily_income_cron',
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=card, 2=bank, 3=coin, 4=referral',
  `coinbase_payment_id` bigint DEFAULT NULL,
  `stripe_payment_id` bigint DEFAULT NULL,
  `reference_ledger_id` bigint DEFAULT NULL,
  `withdraw_request_id` bigint DEFAULT NULL COMMENT 'Only for withdrawl',
  `status_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_performmed_by` bigint DEFAULT NULL COMMENT 'For requests only',
  `action_performmed_at` datetime DEFAULT NULL COMMENT 'For requests only',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ledgers`
--

LOCK TABLES `ledgers` WRITE;
/*!40000 ALTER TABLE `ledgers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ledgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2020_11_25_123649_create_sessions_table',1),(7,'2021_12_28_210154_create_roles_table',1),(8,'2021_12_28_210953_create_email_histories_table',1),(9,'2021_12_28_211838_create_settings_table',1),(10,'2021_12_28_231347_create_jobs_table',1),(11,'2022_01_04_083236_add_power_fields_in_settings',1),(12,'2022_01_06_141504_add_settings_for_hashings',1),(13,'2022_01_11_161346_add_min_max_energy_in_settings',1),(14,'2022_01_11_210037_create_payments_table',1),(15,'2022_01_11_210048_create_wallets_table',1),(16,'2022_01_11_210112_create_ledgers_table',1),(17,'2022_01_11_210156_create_hashings_table',1),(18,'2022_01_11_210227_add_referred_by_column_in_users',1),(19,'2022_01_11_211231_create_deposit_requests_table',1),(20,'2022_01_11_211252_create_withdraw_requests_table',1),(21,'2022_01_12_134821_addd_bank_columns',1),(22,'2022_01_12_165442_add_energy_bought_column_in_tables',1),(23,'2022_01_12_181247_add_last_wallet_updated_in_payments',1),(24,'2022_01_17_162114_add_coinbase_columns_in_payment',1),(25,'2022_01_17_162220_create_coinbase_payments_table',1),(26,'2022_01_17_162716_add_coinbase_status_in_ledgers',1),(27,'2022_01_17_163614_add_user_id_in_coinbase_payments',1),(28,'2022_01_18_084711_create_coinbase_webhooks_table',1),(29,'2022_01_18_084810_add_payment_type_in_deposit_requests',1),(30,'2022_01_18_093613_add_payment_method_for_old_deposit_requests',1),(31,'2022_01_18_094559_change_payment_method_in_ledgers',1),(32,'2022_01_18_095300_add_energy_bought_in_coinbase_payments',1),(33,'2022_01_18_115432_add_coinbase_payment_id_in_deposit_requests',1),(34,'2022_01_19_064636_change_coinbase_timeline_status_in_ledgers',1),(35,'2022_01_19_065241_create_stripe_payments_table',1),(36,'2022_01_19_065614_add_stripe_payment_id_in_ledgers',1),(37,'2022_01_19_070103_drop_extra_columns_from_payments',1),(38,'2022_01_19_072429_add_stripe_customer_id_in_users',1),(39,'2022_01_19_073924_add_is_failed_in_stripe_payments',1),(40,'2022_01_19_161241_add_reference_ledger_id_in_ledgers',1),(41,'2022_01_26_080935_create_coin_data_table',1),(42,'2022_01_26_084450_fill_coin_data',1),(43,'2022_01_26_091125_add_stipe_full_name_in_users',1),(44,'2022_01_26_110528_add_coin_value_in_ledger',1),(45,'2022_01_27_041455_create_user_banks_table',1),(46,'2022_01_27_041525_create_user_cryptos_table',1),(47,'2022_01_27_044610_create_crypto_options_table',1),(48,'2022_01_27_132104_add_table_columns_in_withdraw_requests',1),(49,'2022_01_27_185723_add_withdraw_requests_in_ledgers',1),(50,'2022_01_31_162440_add_vat_in_settings',1),(51,'2022_01_31_171847_add_vat_in_withdraw_requests_after_amount_withdraw_in_withdraw_requests',1),(52,'2022_02_23_092519_addd_mail_chimp_columns_in_users',1),(53,'2024_01_10_150633_truncate_coin_data',1),(54,'2024_01_11_130202_add_locale_in_users',1),(55,'2024_01_20_132738_merge_hasings_and_coins_in_hashings',1),(56,'2024_01_20_151428_drop_settin_columns_extras',1),(57,'2024_01_20_151739_add_coin_data_in_in_table',1),(58,'2024_01_20_163447_add_api_columns_in_coin_data',1),(59,'2024_01_20_164539_add_coin_display_name_in_coin_data',1),(60,'2024_02_08_132304_add_referrl_to_user',1),(61,'2024_02_08_134628_set_default_for_enable2fa',1),(62,'2024_02_08_142601_create_otps_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otps`
--

DROP TABLE IF EXISTS `otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otps` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` int NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  `no_times_generated` int NOT NULL DEFAULT '0',
  `no_times_attempted` int NOT NULL DEFAULT '0',
  `generated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otps`
--

LOCK TABLES `otps` WRITE;
/*!40000 ALTER TABLE `otps` DISABLE KEYS */;
INSERT INTO `otps` VALUES (6,'KellyBender65864@outlook.com','46881952',30,0,4,0,'2024-02-12 03:48:41','2024-02-11 21:48:22','2024-02-11 21:48:41');
/*!40000 ALTER TABLE `otps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `request_id` bigint DEFAULT NULL COMMENT 'if deposit request',
  `hashing_id` int DEFAULT NULL,
  `coin_data_id` bigint DEFAULT NULL,
  `last_wallet_updated` datetime DEFAULT NULL,
  `energy_bought` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=card,2=bank,3=coin',
  `coinbase_payment_id` bigint DEFAULT NULL,
  `stripe_payment_id` bigint DEFAULT NULL,
  `payment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_deposit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `auto_payment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadmin',NULL,NULL),(2,'admin',NULL,NULL),(3,'user',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `sessions` VALUES ('6vIPzMJMcf6K0ACqDmIqEfx04EJ2rTixlVQxWs25',NULL,'188.43.253.76','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVm9KNm9BRGtlRmZnTkk2Z0ZpeEQwVnA0Nmg5OTlGMm5RMmhqb21PTCI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwczovLzEzOC42OC42OC4xOTAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1708105119),('8bIA2vPDDLfjAMB87VzvQbyCrXev7tXXwH3RcxoV',NULL,'139.162.231.101','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:8.0) Gecko/20100101 Firefox/8.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZnF6eldNUFVzQmd6dDZUQVF1dlFLVkliUGRvYjJtZFlJQ0s5WXNmYyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwczovLzEzOC42OC42OC4xOTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1708103164),('n9B65sibFCtev79ER4dRSfKHDyTI86XLyi9kRyTH',NULL,'5.188.62.26','Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNVl5Y2Q5eVpqa21XT2hMcWtuYXRIeEU0Y3JLRWFKNWx2dXRrdnhhTiI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI1OiJodHRwczovL2Nsb3VkbWluZXBvb2wuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1708097141),('ugRzG7TgwGr2a3NP0uDRiqgTqywUc6PKzlQdAoP3',1,'188.43.253.76','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36','YTo3OntzOjY6Il90b2tlbiI7czo0MDoiQU5KeWhkRktnZHN4MUpuc2xuaDNBUklyVDBONE5nN3VYTjhpR1FpcSI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMyOiJodHRwczovLzEzOC42OC42OC4xOTAvMmZhL3ZlcmlmeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQwVS4wSS9WZEk2amFxYTRWTnp5ZU5lUlpwS0Q4ZmZwMnpJaERlaGp5QnRVaVEvV3k5RjNxSyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cHM6Ly8xMzguNjguNjguMTkwL2Rhc2hib2FyZCI7fX0=',1708103727),('vw3rsHRok2YliBSRocPbETvWwxZJgEHbFqmTPAx4',2,'77.91.67.201','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQUU5SU5QWHc5ZnpFNVFoSzlTMkRSbjZIT2NORGVYOWF0OEpQZ3NmRyI7czo2OiJsb2NhbGUiO3M6MjoiZW4iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwczovLzEzOC42OC42OC4xOTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRXltejIxQ3VESlJMUEpuN2xhUVRxZTAzVUhDaWtZVUpkM2VuWkJaZzJqMGZjS1N5bDFPelMiO30=',1708104643);
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
  `site_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '21',
  `site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift_bic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
INSERT INTO `settings` VALUES (1,NULL,'21','CloudMinePool','1234567890','abcdefg',NULL,'2024-02-11 01:45:49');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_payments`
--

DROP TABLE IF EXISTS `stripe_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `is_failed` tinyint(1) NOT NULL DEFAULT '0',
  `hashing_id` int DEFAULT NULL,
  `coin_data_id` bigint DEFAULT NULL,
  `energy_bought` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_tranfered_to` bigint DEFAULT NULL,
  `temp_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_profile_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_profile_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_deposit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_payments`
--

LOCK TABLES `stripe_payments` WRITE;
/*!40000 ALTER TABLE `stripe_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_banks`
--

DROP TABLE IF EXISTS `user_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_banks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `account_holder_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `account_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `branch_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift_bic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `iban_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Recent Selected = active when multiple',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_banks`
--

LOCK TABLES `user_banks` WRITE;
/*!40000 ALTER TABLE `user_banks` DISABLE KEYS */;
INSERT INTO `user_banks` VALUES (1,'a42d8f72-00e9-4a40-80a1-df9f595ec579',7,'Test tester','142000','Angola','AUD','Test bank','188393991','fhjdkskkkkskkdkd','Routing number',0,'2024-02-13 03:16:50','2024-02-13 03:16:50',NULL);
/*!40000 ALTER TABLE `user_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cryptos`
--

DROP TABLE IF EXISTS `user_cryptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_cryptos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `crypto_option_id` int DEFAULT NULL,
  `wallet_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Recent Selected = active when multiple',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cryptos`
--

LOCK TABLES `user_cryptos` WRITE;
/*!40000 ALTER TABLE `user_cryptos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_cryptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mailchimp_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_mailchimp_synced` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_customer_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stripe_full_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` bigint DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_2fa` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2ffc26ea-1a5e-4ba2-8c1e-feed3547facf','Super','Admin','super@cloudminepool.com','$2y$10$0U.0I/VdI6jaqa4VNzyeNeRZpKD8ffp2zIhDehjyBtUiQ/Wy9F3qK',NULL,0,NULL,NULL,'O44XFNZ57LIMUPCI2A2UERDEOW6IN6MC36YWUQZYTMBJPSP5ULMKDQNJL4O7HHT7',NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-09 20:59:26',NULL,'2024-02-11 01:47:27',NULL,'WFxyBhPCtN6YXaFjGo4lvva3s7p92ky6Ec1YO4VojyM0FV45Jr3wUOK3SPCS','en','super_folex',1),(2,'298c8d3e-a9a9-4ae7-9aef-7603ddd11c01','Admin','Admin','admin@cloudminepool.com','$2y$10$Eymz21CuDJRLPJn7laQTqe03UHCikYUJd3enZBZg2j0fcKSyl1OzS',NULL,0,NULL,NULL,'JN5ONCLEGJYTDJHGI3BEQ5UEVAWGCW7EDUIZ6CEQMEJISK5ZDLAK3ID7YVTG5XSU',NULL,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-10 17:19:35',NULL,'2024-02-10 17:25:18',NULL,NULL,'en','admin_folex',0),(6,'cryptomusha','Thomas','Lin','cryptomusha@gmail.com','$2y$10$wDvgrnHQ0croMVChXwruDexgKsLQvXKb9Oer0nS/XNpOxK0UKxhwO',NULL,0,NULL,NULL,'DHOS5HP6HADLBIVN6CEUUDR3XITVQP2TT4G7K43HHGDEZ3YPSIC4SKRJRDZ2QXEQ',NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-10 17:18:00','2024-02-10 17:02:32','2024-02-10 17:18:00',NULL,NULL,'en','66853618d598',0),(7,'test','test','test','test@test.com','$2y$10$s7nrq7Hq47L4MAe46fkTaeh7F6gsLeBxGIN8vHN3iGudTBDKlJPrO',NULL,0,NULL,NULL,'VY7NYG7S5NRFMWXJOS4D5XONJDU6ZZBCCLPOKSL3QY24AXKD6LSELB3U44TJWDE3',NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-11 01:41:01','2024-02-11 01:40:24','2024-02-11 01:49:11',NULL,'0phnFhXzdhwXV1YtPgtiszniMgeJZW3YesRpGpjN0svfEJhfcj4I0luoaoJ8','de','hVP1BDfLljM',1),(8,'KellyBender65864','oNnRpVdHLfQ','WaQYPAbUelqXOC','KellyBender65864@outlook.com','$2y$10$BzSgjub3idlGJzX/tF508u8IYx7rsgxaZLgaKiDypl54rx491G7wW','f057d9b637eaea16f3707686014e5aa2',1,NULL,NULL,'MDGQ2KLAZN2TEXXAGY4CJEDOBFW4YZP5OH2T6X24R6YRA5H7P6PU6GC2EFE63QZH',NULL,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-02-11 21:48:19','2024-02-14 00:00:05',NULL,NULL,'en','TB4lUik1cM4',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_requests`
--

DROP TABLE IF EXISTS `withdraw_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `is_resolved` tinyint(1) NOT NULL DEFAULT '0',
  `is_accepted` tinyint(1) DEFAULT NULL,
  `action_performed_by` bigint DEFAULT NULL,
  `action_performed_at` datetime DEFAULT NULL,
  `amount_withdraw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hashing_id` int DEFAULT NULL,
  `coin_data_id` bigint DEFAULT NULL,
  `payment_via_id` bigint DEFAULT NULL COMMENT 'if 2 then user banks else user crypto',
  `payment_method` int DEFAULT NULL COMMENT '1=card,2=bank,3=coin',
  `additional_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_requests`
--

LOCK TABLES `withdraw_requests` WRITE;
/*!40000 ALTER TABLE `withdraw_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 17:41:22
