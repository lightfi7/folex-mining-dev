-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for folex
CREATE DATABASE IF NOT EXISTS `folex` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `folex`;

-- Dumping structure for table folex.coinbase_payments
CREATE TABLE IF NOT EXISTS `coinbase_payments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.coinbase_payments: ~9 rows (approximately)
DELETE FROM `coinbase_payments`;
INSERT INTO `coinbase_payments` (`id`, `public_id`, `user_id`, `coinbase_id`, `coinbase_code`, `amount_deposit`, `hashing_id`, `coin_data_id`, `energy_bought`, `is_resolved`, `timeline`, `created_at`, `updated_at`) VALUES
	(1, 'c9e00e70-4b3d-4f9b-ad00-e6d280cdaadc', 9, '1b94c9a9-9c78-4ffa-99a2-13a1561b3029', 'FYZPQHNR', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-13T11:21:04Z"}]', '2024-07-13 03:21:21', '2024-07-13 03:21:21'),
	(2, 'e90512e1-a87d-45f9-80b7-0fbda3953359', 9, '66928bf3d2a4cde2caadf1ce', '66928bf3d2a4cde2caadf1ce', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-13T14:45:15.733Z"}]', '2024-07-13 06:15:15', '2024-07-13 06:15:15'),
	(3, '6b219c21-4259-4fe5-b848-9ed7ba97f8da', 9, '66952ceacc923fe2be4e6807', '66952ceacc923fe2be4e6807', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T14:36:34.772Z"}]', '2024-07-15 06:06:35', '2024-07-15 06:06:35'),
	(4, 'bb524f82-e69b-48ec-8735-192ccf60f6da', 9, '66952d2ccc923fe2be4e6809', '66952d2ccc923fe2be4e6809', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T14:37:40.317Z"}]', '2024-07-15 06:07:40', '2024-07-15 06:07:40'),
	(5, 'adae30c4-6440-48e7-8095-430b22b03984', 9, '6695425285e128edc4a1048c', '6695425285e128edc4a1048c', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T16:07:54.250Z"}]', '2024-07-15 07:37:54', '2024-07-15 07:37:54'),
	(6, 'ef2ad07d-e833-4f5c-b79e-9dff0e2c5ef1', 9, '669545f785e128edc4a1048e', '669545f785e128edc4a1048e', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T16:23:27.270Z"}]', '2024-07-15 07:53:27', '2024-07-15 07:53:27'),
	(7, 'f4660971-1d72-4170-b884-4c9a79cdbe28', 9, '6695468585e128edc4a10490', '6695468585e128edc4a10490', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T16:25:49.949Z"}]', '2024-07-15 07:55:49', '2024-07-15 07:55:49'),
	(8, '0ef288ed-cd55-420b-9d63-67bb8f07aed7', 9, '669562f185e128edc4a10492', '669562f185e128edc4a10492', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T18:27:05.587Z"}]', '2024-07-15 09:57:06', '2024-07-15 09:57:06'),
	(9, 'c2400f2f-cacb-4076-8725-c7022b713e76', 9, '66956ba585e128edc4a10494', '66956ba585e128edc4a10494', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T19:04:13.473Z"}]', '2024-07-15 10:34:13', '2024-07-15 10:34:13'),
	(21, 'a97ccbf7-0e17-408d-b122-3bab9a9ae42b', 9, '669573fe9c08dabc1d11907f', '669573fe9c08dabc1d11907f', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T19:39:50.662Z"}]', '2024-07-15 11:09:50', '2024-07-15 11:09:50'),
	(23, '7c74b4ae-7004-4f37-9850-0ac44e0bb0cc', 9, '669577fb9c08dabc1d119086', '669577fb9c08dabc1d119086', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T19:56:51.203Z"}]', '2024-07-15 11:26:51', '2024-07-15 11:26:51'),
	(25, '521f265c-558c-44f6-a6fb-cbffd1d9e639', 9, '66957e25a49a3cd9a23933d7', '66957e25a49a3cd9a23933d7', '150.00', '1', 1, '0.090192307692308', 0, '[{"status":"NEW","time":"2024-07-15T20:23:09.506Z"}]', '2024-07-15 11:53:09', '2024-07-15 11:53:09');

-- Dumping structure for table folex.coinbase_webhooks
CREATE TABLE IF NOT EXISTS `coinbase_webhooks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.coinbase_webhooks: ~0 rows (approximately)
DELETE FROM `coinbase_webhooks`;

-- Dumping structure for table folex.coin_data
CREATE TABLE IF NOT EXISTS `coin_data` (
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

-- Dumping data for table folex.coin_data: ~4 rows (approximately)
DELETE FROM `coin_data`;
INSERT INTO `coin_data` (`id`, `hashing_id`, `is_active`, `formula`, `unit`, `coin`, `data`, `coin_display_name`, `network_hashrate`, `difficulty`, `reward`, `reward_block`, `price`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '<price> / ( ( 1 / ( ( ( (<network_hashrate> * 1000) * <reward_block> ) / ( <difficulty> * 3600 ) ) * 86400 ) ) )', 'TH/s', 'BTC', '{"id":"a195fd59ce0ebc3f9b2d99b3c396ff198bcb4a5e","coin":"BTC","name":"Bitcoin","type":"coin","algorithm":"SHA-256","network_hashrate":5.6876213656025e+20,"difficulty":81725299822043,"reward":6.4101196246686e-20,"reward_unit":"BTC","reward_block":6.25,"price":52143.148801825,"volume":28110441076.731,"updated":1708101372}', 'BTC', '5.6876213656025E+20', '81725299822043', '6.4101196246686E-20', '6.25', '52143.148801825', '2024-01-10 10:07:11', '2024-02-16 11:10:02'),
	(2, 2, 1, '( <reward_block> * (<total_hash>) * 86400 ) / (<difficulty> *  4294967296)', 'MH/s', 'BINANCE ETHW', '{"id":"a4ffb5b5b721c91643ae5e038d87d0e9ab1665dd","coin":"BINANCE ETHW","name":"Binance","type":"pool","algorithm":"Ethash","network_hashrate":-1,"difficulty":-1,"reward":4.1230416666667e-11,"reward_unit":"ETHW","reward_block":-1,"price":2.8348786236223,"volume":-1,"updated":1708102802}', 'ETHW', '-1', '-1', '4.1230416666667E-11', '-1', '2.8348786236223', '2024-01-10 10:07:11', '2024-02-16 11:20:02'),
	(3, 3, 1, '( <reward_block> * (<total_hash>) * 86400 ) / (<difficulty> *  4294967296)', 'KH/s', 'KAS', '{"id":"7ae4e0240e6cd4690300f55430f54ef5137062de","coin":"KAS","name":"Kaspa","type":"coin","algorithm":"KHeavyHash","network_hashrate":1.7007956828705e+17,"difficulty":39599735.356646,"reward":2.7688570853214e-12,"reward_unit":"KAS","reward_block":130.8127827,"price":0.14163025807031,"volume":37803064.177549,"updated":1708098864}', 'KAS', '1.7007956828705E+17', '39599735.356646', '2.7688570853214E-12', '130.8127827', '0.14163025807031', '2024-01-10 10:07:12', '2024-02-16 11:20:02'),
	(6, 5, 1, '( <reward_block> * (<total_hash>) * 86400 ) / (<difficulty> *  4294967296)', 'MH/s', '2MINERS ZEC', '{"id":"0bfeb7251ef0b2e58abca9755796f2a9258a3721","coin":"2MINERS ZEC","name":"2Miners","type":"pool","algorithm":"Equihash","network_hashrate":-1,"difficulty":-1,"reward":9.8244639085816e-9,"reward_unit":"ZEC","reward_block":-1,"price":22.6344443724,"volume":-1,"updated":1708100401}', 'ZEC', '-1', '-1', '9.8244639085816E-9', '-1', '22.6344443724', '2024-02-02 10:22:44', '2024-02-16 11:20:02');

-- Dumping structure for table folex.crypto_options
CREATE TABLE IF NOT EXISTS `crypto_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.crypto_options: ~8 rows (approximately)
DELETE FROM `crypto_options`;
INSERT INTO `crypto_options` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Bitcoin', NULL, NULL),
	(2, 'Ethereum', NULL, NULL),
	(3, 'Litecoin', NULL, NULL),
	(4, 'Bitcoin Cash', NULL, NULL),
	(5, 'USD Coin', NULL, NULL),
	(6, 'Tether', NULL, NULL),
	(7, 'Binance Coin', NULL, NULL),
	(8, 'Bitcoin Cash', NULL, NULL);

-- Dumping structure for table folex.deposit_requests
CREATE TABLE IF NOT EXISTS `deposit_requests` (
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

-- Dumping data for table folex.deposit_requests: ~0 rows (approximately)
DELETE FROM `deposit_requests`;

-- Dumping structure for table folex.email_histories
CREATE TABLE IF NOT EXISTS `email_histories` (
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

-- Dumping data for table folex.email_histories: ~0 rows (approximately)
DELETE FROM `email_histories`;

-- Dumping structure for table folex.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
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

-- Dumping data for table folex.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table folex.hashings
CREATE TABLE IF NOT EXISTS `hashings` (
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

-- Dumping data for table folex.hashings: ~4 rows (approximately)
DELETE FROM `hashings`;
INSERT INTO `hashings` (`id`, `name`, `is_active`, `price_khs`, `cost_per_kwh`, `power_consumption`, `maintenance_fee`, `min_buyable`, `max_buyable`, `created_at`, `updated_at`) VALUES
	(1, 'SHA-256', 1, 19.5, 0.67, 17.5, 15, 150, 50000, NULL, '2024-02-04 02:11:04'),
	(2, 'Ethash', 1, 1, 0.12, 0.12, 14, 2000, 15000, NULL, '2024-02-03 14:16:04'),
	(3, 'KHeavyHash', 1, 2323, 23, 233, 23, 25, 4000, NULL, '2024-01-21 11:56:39'),
	(5, 'Equihash', 1, 0.283, 0.67, 0.345, 15, 25000, 500000, '2024-02-02 10:21:00', '2024-02-02 10:21:00');

-- Dumping structure for table folex.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
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

-- Dumping data for table folex.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;

-- Dumping structure for table folex.ledgers
CREATE TABLE IF NOT EXISTS `ledgers` (
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.ledgers: ~7 rows (approximately)
DELETE FROM `ledgers`;
INSERT INTO `ledgers` (`id`, `public_id`, `user_id`, `payment_id`, `current_wallet_balance`, `amount`, `hashing_id`, `coin_data_id`, `coin_value`, `type`, `payment_method`, `coinbase_payment_id`, `stripe_payment_id`, `reference_ledger_id`, `withdraw_request_id`, `status_text`, `action_performmed_by`, `action_performmed_at`, `created_at`, `updated_at`) VALUES
	(1, 'e863669a-439d-49e6-9aba-e07b4cb27ca5', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 1, NULL, NULL, NULL, 'NEW', NULL, '2024-07-13 06:21:21', '2024-07-13 03:21:21', '2024-07-13 03:21:21'),
	(2, 'fc113bbe-fe70-483d-9b78-e3719eab8008', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 2, NULL, NULL, NULL, 'NEW', NULL, '2024-07-13 09:15:15', '2024-07-13 06:15:15', '2024-07-13 06:15:15'),
	(3, 'd245b975-1778-4d18-aea0-9667c54f7ab8', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 3, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 09:06:35', '2024-07-15 06:06:35', '2024-07-15 06:06:35'),
	(4, '7eb8c92e-5a49-4ddd-859f-71cb2afe86d8', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 4, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 09:07:40', '2024-07-15 06:07:40', '2024-07-15 06:07:40'),
	(5, '9aa26701-9ecc-4bd3-9754-a3ae2901eda3', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 5, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 10:37:54', '2024-07-15 07:37:54', '2024-07-15 07:37:54'),
	(6, '0803a7d3-d052-4c75-a789-431f83726da9', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 6, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 10:53:27', '2024-07-15 07:53:27', '2024-07-15 07:53:27'),
	(7, 'de674f19-c543-4b28-bffd-cbfeab69ff7e', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 7, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 10:55:49', '2024-07-15 07:55:49', '2024-07-15 07:55:49'),
	(8, '0ab5101e-5897-4650-ab4e-9dd5093d8a5f', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 8, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 12:57:06', '2024-07-15 09:57:06', '2024-07-15 09:57:06'),
	(9, '09d1fa61-f68f-4f22-bc09-f3028ef45255', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 9, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 13:34:13', '2024-07-15 10:34:13', '2024-07-15 10:34:13'),
	(10, '1b8d2695-8041-4074-a531-c66b941fc9ed', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 10, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 13:44:00', '2024-07-15 10:44:00', '2024-07-15 10:44:00'),
	(11, '1d812eb0-0eac-4333-81fe-a126e6efaec1', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 11, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 13:44:38', '2024-07-15 10:44:38', '2024-07-15 10:44:38'),
	(12, 'e585f09e-bb02-4e09-8a57-58e0339434e9', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 12, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 13:49:17', '2024-07-15 10:49:17', '2024-07-15 10:49:17'),
	(13, '11c8ced9-f073-4f4e-9dc8-9be888b0ce4c', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 13, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 13:50:43', '2024-07-15 10:50:43', '2024-07-15 10:50:43'),
	(14, '225a7691-afab-4ab6-b159-21e36ab04bea', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 14, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 13:52:30', '2024-07-15 10:52:30', '2024-07-15 10:52:30'),
	(15, 'b10696cf-26d1-430d-af94-3cedc5929ddd', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 15, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 13:53:56', '2024-07-15 10:53:56', '2024-07-15 10:53:56'),
	(16, 'f95547e7-bd6a-4323-8142-88546c16e3e5', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 16, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:03:58', '2024-07-15 11:03:58', '2024-07-15 11:03:58'),
	(17, 'e79e6226-dd9c-4d6c-93dd-adabb4ab4dda', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 17, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:06:17', '2024-07-15 11:06:17', '2024-07-15 11:06:17'),
	(18, '29f4d695-5e4c-4c81-9ade-ca9b41f3f037', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 18, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:07:26', '2024-07-15 11:07:26', '2024-07-15 11:07:26'),
	(19, '68d8ca99-a164-45e5-877b-0e60b3e1303a', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 19, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:07:59', '2024-07-15 11:07:59', '2024-07-15 11:07:59'),
	(20, '7f9c4f3f-9955-4c5b-a698-685b302c318f', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 20, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:08:45', '2024-07-15 11:08:45', '2024-07-15 11:08:45'),
	(21, '52e20f36-c255-49f8-b97b-0f8b14278304', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 21, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:09:50', '2024-07-15 11:09:50', '2024-07-15 11:09:50'),
	(22, 'a6e0d266-33bb-490c-9816-eb660ea1e76a', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 22, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:25:07', '2024-07-15 11:25:07', '2024-07-15 11:25:07'),
	(23, '7af2f44f-9a2f-4844-8d0d-df0b0a9d5b56', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 23, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:26:51', '2024-07-15 11:26:51', '2024-07-15 11:26:51'),
	(24, '9ca0af32-0baa-4490-a5fc-c2b5c6c09b2c', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 24, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:27:01', '2024-07-15 11:27:01', '2024-07-15 11:27:01'),
	(25, '1aed6da0-c7dc-452c-aa67-74010ff8b35a', 9, NULL, '0.00', '150.00', 1, 1, NULL, '2', '3', 25, NULL, NULL, NULL, 'NEW', NULL, '2024-07-15 14:53:09', '2024-07-15 11:53:09', '2024-07-15 11:53:09');

-- Dumping structure for table folex.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.migrations: ~62 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2020_11_25_123649_create_sessions_table', 1),
	(7, '2021_12_28_210154_create_roles_table', 1),
	(8, '2021_12_28_210953_create_email_histories_table', 1),
	(9, '2021_12_28_211838_create_settings_table', 1),
	(10, '2021_12_28_231347_create_jobs_table', 1),
	(11, '2022_01_04_083236_add_power_fields_in_settings', 1),
	(12, '2022_01_06_141504_add_settings_for_hashings', 1),
	(13, '2022_01_11_161346_add_min_max_energy_in_settings', 1),
	(14, '2022_01_11_210037_create_payments_table', 1),
	(15, '2022_01_11_210048_create_wallets_table', 1),
	(16, '2022_01_11_210112_create_ledgers_table', 1),
	(17, '2022_01_11_210156_create_hashings_table', 1),
	(18, '2022_01_11_210227_add_referred_by_column_in_users', 1),
	(19, '2022_01_11_211231_create_deposit_requests_table', 1),
	(20, '2022_01_11_211252_create_withdraw_requests_table', 1),
	(21, '2022_01_12_134821_addd_bank_columns', 1),
	(22, '2022_01_12_165442_add_energy_bought_column_in_tables', 1),
	(23, '2022_01_12_181247_add_last_wallet_updated_in_payments', 1),
	(24, '2022_01_17_162114_add_coinbase_columns_in_payment', 1),
	(25, '2022_01_17_162220_create_coinbase_payments_table', 1),
	(26, '2022_01_17_162716_add_coinbase_status_in_ledgers', 1),
	(27, '2022_01_17_163614_add_user_id_in_coinbase_payments', 1),
	(28, '2022_01_18_084711_create_coinbase_webhooks_table', 1),
	(29, '2022_01_18_084810_add_payment_type_in_deposit_requests', 1),
	(30, '2022_01_18_093613_add_payment_method_for_old_deposit_requests', 1),
	(31, '2022_01_18_094559_change_payment_method_in_ledgers', 1),
	(32, '2022_01_18_095300_add_energy_bought_in_coinbase_payments', 1),
	(33, '2022_01_18_115432_add_coinbase_payment_id_in_deposit_requests', 1),
	(34, '2022_01_19_064636_change_coinbase_timeline_status_in_ledgers', 1),
	(35, '2022_01_19_065241_create_stripe_payments_table', 1),
	(36, '2022_01_19_065614_add_stripe_payment_id_in_ledgers', 1),
	(37, '2022_01_19_070103_drop_extra_columns_from_payments', 1),
	(38, '2022_01_19_072429_add_stripe_customer_id_in_users', 1),
	(39, '2022_01_19_073924_add_is_failed_in_stripe_payments', 1),
	(40, '2022_01_19_161241_add_reference_ledger_id_in_ledgers', 1),
	(41, '2022_01_26_080935_create_coin_data_table', 1),
	(42, '2022_01_26_084450_fill_coin_data', 1),
	(43, '2022_01_26_091125_add_stipe_full_name_in_users', 1),
	(44, '2022_01_26_110528_add_coin_value_in_ledger', 1),
	(45, '2022_01_27_041455_create_user_banks_table', 1),
	(46, '2022_01_27_041525_create_user_cryptos_table', 1),
	(47, '2022_01_27_044610_create_crypto_options_table', 1),
	(48, '2022_01_27_132104_add_table_columns_in_withdraw_requests', 1),
	(49, '2022_01_27_185723_add_withdraw_requests_in_ledgers', 1),
	(50, '2022_01_31_162440_add_vat_in_settings', 1),
	(51, '2022_01_31_171847_add_vat_in_withdraw_requests_after_amount_withdraw_in_withdraw_requests', 1),
	(52, '2022_02_23_092519_addd_mail_chimp_columns_in_users', 1),
	(53, '2024_01_10_150633_truncate_coin_data', 1),
	(54, '2024_01_11_130202_add_locale_in_users', 1),
	(55, '2024_01_20_132738_merge_hasings_and_coins_in_hashings', 1),
	(56, '2024_01_20_151428_drop_settin_columns_extras', 1),
	(57, '2024_01_20_151739_add_coin_data_in_in_table', 1),
	(58, '2024_01_20_163447_add_api_columns_in_coin_data', 1),
	(59, '2024_01_20_164539_add_coin_display_name_in_coin_data', 1),
	(60, '2024_02_08_132304_add_referrl_to_user', 1),
	(61, '2024_02_08_134628_set_default_for_enable2fa', 1),
	(62, '2024_02_08_142601_create_otps_table', 1);

-- Dumping structure for table folex.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.oauth_access_tokens: ~0 rows (approximately)
DELETE FROM `oauth_access_tokens`;

-- Dumping structure for table folex.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.oauth_auth_codes: ~0 rows (approximately)
DELETE FROM `oauth_auth_codes`;

-- Dumping structure for table folex.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.oauth_clients: ~0 rows (approximately)
DELETE FROM `oauth_clients`;

-- Dumping structure for table folex.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.oauth_personal_access_clients: ~0 rows (approximately)
DELETE FROM `oauth_personal_access_clients`;

-- Dumping structure for table folex.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.oauth_refresh_tokens: ~0 rows (approximately)
DELETE FROM `oauth_refresh_tokens`;

-- Dumping structure for table folex.otps
CREATE TABLE IF NOT EXISTS `otps` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.otps: ~1 rows (approximately)
DELETE FROM `otps`;
INSERT INTO `otps` (`id`, `identifier`, `token`, `validity`, `expired`, `no_times_generated`, `no_times_attempted`, `generated_at`, `created_at`, `updated_at`) VALUES
	(7, 'admin@doc.com', '03107323', 30, 0, 1, 0, '2024-07-12 14:00:37', '2024-07-12 06:00:37', '2024-07-12 06:00:37');

-- Dumping structure for table folex.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;

-- Dumping structure for table folex.payments
CREATE TABLE IF NOT EXISTS `payments` (
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

-- Dumping data for table folex.payments: ~0 rows (approximately)
DELETE FROM `payments`;

-- Dumping structure for table folex.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
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

-- Dumping data for table folex.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table folex.ref_levels
CREATE TABLE IF NOT EXISTS `ref_levels` (
  `level` int DEFAULT NULL,
  `ref_num` int DEFAULT NULL,
  `rate` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table folex.ref_levels: ~0 rows (approximately)
DELETE FROM `ref_levels`;

-- Dumping structure for table folex.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.roles: ~3 rows (approximately)
DELETE FROM `roles`;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'superadmin', NULL, NULL),
	(2, 'admin', NULL, NULL),
	(3, 'user', NULL, NULL);

-- Dumping structure for table folex.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
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

-- Dumping data for table folex.sessions: ~2 rows (approximately)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('qsdwIMX0yVLcKSc1ezbBRPpDAf2mC24fC73jls7H', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWXd2Zk1HZVpHZU44NkxOWnBSeFh2Q1FRN0JSMnJiYjBwSFFEdDFQayI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjc0OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcGF5YnljcnlwdG8/cGlkPTUyMWYyNjVjLTU1OGMtNDRmNi1hNmZiLWNiZmZkMWQ5ZTYzOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoibG9jYWxlIjtzOjI6ImVuIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkNVBEWUhSYWZNcTJia0JVaFlOWnVHdWdWOERrNE9tdzFqc3B4Ni45YjhWVllaU0FFQ2VJcjYiO30=', 1721073223);

-- Dumping structure for table folex.settings
CREATE TABLE IF NOT EXISTS `settings` (
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

-- Dumping data for table folex.settings: ~0 rows (approximately)
DELETE FROM `settings`;
INSERT INTO `settings` (`id`, `site_logo`, `vat`, `site_name`, `account_number`, `swift_bic`, `created_at`, `updated_at`) VALUES
	(1, NULL, '21', 'CloudMinePool', '1234567890', 'abcdefg', NULL, '2024-02-11 01:45:49');

-- Dumping structure for table folex.stripe_payments
CREATE TABLE IF NOT EXISTS `stripe_payments` (
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

-- Dumping data for table folex.stripe_payments: ~0 rows (approximately)
DELETE FROM `stripe_payments`;

-- Dumping structure for table folex.users
CREATE TABLE IF NOT EXISTS `users` (
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
  `referrals_cnt` int DEFAULT '0',
  `wa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.users: ~6 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `public_id`, `first_name`, `last_name`, `email`, `password`, `mailchimp_id`, `is_mailchimp_synced`, `stripe_customer_id`, `stripe_full_name`, `two_factor_secret`, `two_factor_recovery_codes`, `avatar`, `role_id`, `referred_by`, `phone`, `address`, `country`, `city`, `state`, `zip`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `remember_token`, `locale`, `referral`, `enable_2fa`, `referrals_cnt`, `wa`) VALUES
	(1, '2ffc26ea-1a5e-4ba2-8c1e-feed3547facf', 'Super', 'Admin', 'super@cloudminepool.com', '$2y$10$0U.0I/VdI6jaqa4VNzyeNeRZpKD8ffp2zIhDehjyBtUiQ/Wy9F3qK', NULL, 0, NULL, NULL, 'O44XFNZ57LIMUPCI2A2UERDEOW6IN6MC36YWUQZYTMBJPSP5ULMKDQNJL4O7HHT7', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-09 20:59:26', NULL, '2024-02-11 01:47:27', NULL, 'WFxyBhPCtN6YXaFjGo4lvva3s7p92ky6Ec1YO4VojyM0FV45Jr3wUOK3SPCS', 'en', 'super_folex', 1, 0, NULL),
	(2, '298c8d3e-a9a9-4ae7-9aef-7603ddd11c01', 'Admin', 'Admin', 'admin@cloudminepool.com', '$2y$10$Eymz21CuDJRLPJn7laQTqe03UHCikYUJd3enZBZg2j0fcKSyl1OzS', NULL, 0, NULL, NULL, 'JN5ONCLEGJYTDJHGI3BEQ5UEVAWGCW7EDUIZ6CEQMEJISK5ZDLAK3ID7YVTG5XSU', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-10 17:19:35', NULL, '2024-02-10 17:25:18', NULL, NULL, 'en', 'admin_folex', 0, 0, NULL),
	(6, 'cryptomusha', 'Thomas', 'Lin', 'cryptomusha@gmail.com', '$2y$10$wDvgrnHQ0croMVChXwruDexgKsLQvXKb9Oer0nS/XNpOxK0UKxhwO', NULL, 0, NULL, NULL, 'DHOS5HP6HADLBIVN6CEUUDR3XITVQP2TT4G7K43HHGDEZ3YPSIC4SKRJRDZ2QXEQ', NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-10 17:18:00', '2024-02-10 17:02:32', '2024-02-10 17:18:00', NULL, NULL, 'en', '66853618d598', 0, 0, NULL),
	(7, 'test', 'test', 'test', 'test@test.com', '$2y$10$s7nrq7Hq47L4MAe46fkTaeh7F6gsLeBxGIN8vHN3iGudTBDKlJPrO', NULL, 0, NULL, NULL, 'VY7NYG7S5NRFMWXJOS4D5XONJDU6ZZBCCLPOKSL3QY24AXKD6LSELB3U44TJWDE3', NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-11 01:41:01', '2024-02-11 01:40:24', '2024-02-11 01:49:11', NULL, '0phnFhXzdhwXV1YtPgtiszniMgeJZW3YesRpGpjN0svfEJhfcj4I0luoaoJ8', 'de', 'hVP1BDfLljM', 1, 0, NULL),
	(8, 'KellyBender65864', 'oNnRpVdHLfQ', 'WaQYPAbUelqXOC', 'KellyBender65864@outlook.com', '$2y$10$BzSgjub3idlGJzX/tF508u8IYx7rsgxaZLgaKiDypl54rx491G7wW', 'f057d9b637eaea16f3707686014e5aa2', 1, NULL, NULL, 'MDGQ2KLAZN2TEXXAGY4CJEDOBFW4YZP5OH2T6X24R6YRA5H7P6PU6GC2EFE63QZH', NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-12 17:03:32', '2024-02-11 21:48:19', '2024-02-14 00:00:05', NULL, NULL, 'en', 'TB4lUik1cM4', 0, 0, NULL),
	(9, 'admin', 'ryan', 'macleod', 'admin@doc.com', '$2y$10$5PDYHRafMq2bkBUhYNZuGugV8Dk4Omw1jspx6.9b8VVYZSAECeIr6', NULL, 0, NULL, NULL, 'HR67GNR6WYUXX6CVIJFKOYGSJGPBIPEWMAYP2HP7ZCZZ456NGY3JF4JRU5XZEXMO', NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-12 17:03:31', '2024-07-12 06:00:37', '2024-07-15 11:53:09', NULL, NULL, 'en', 'yk5QdXCNpAU', 0, 0, 'TYUZWsrHJ5kccWHjiWPXwJYgAZkQydBCPv');

-- Dumping structure for table folex.user_banks
CREATE TABLE IF NOT EXISTS `user_banks` (
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

-- Dumping data for table folex.user_banks: ~0 rows (approximately)
DELETE FROM `user_banks`;
INSERT INTO `user_banks` (`id`, `public_id`, `user_id`, `account_holder_name`, `account_number`, `country`, `bank_currency`, `bank_name`, `branch_name`, `swift_bic`, `iban_number`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'a42d8f72-00e9-4a40-80a1-df9f595ec579', 7, 'Test tester', '142000', 'Angola', 'AUD', 'Test bank', '188393991', 'fhjdkskkkkskkdkd', 'Routing number', 0, '2024-02-13 03:16:50', '2024-02-13 03:16:50', NULL);

-- Dumping structure for table folex.user_codes
CREATE TABLE IF NOT EXISTS `user_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.user_codes: ~0 rows (approximately)
DELETE FROM `user_codes`;

-- Dumping structure for table folex.user_cryptos
CREATE TABLE IF NOT EXISTS `user_cryptos` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.user_cryptos: ~0 rows (approximately)
DELETE FROM `user_cryptos`;
INSERT INTO `user_cryptos` (`id`, `public_id`, `user_id`, `crypto_option_id`, `wallet_address`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '2fed48a4-f80c-4161-b9ac-39995227e59f', 9, 6, 'TE7Q4pa3HpaVhmXwpCpm2C52wu6c8KWXsj', 0, '2024-07-15 11:42:50', '2024-07-15 11:42:50', NULL);

-- Dumping structure for table folex.wallets
CREATE TABLE IF NOT EXISTS `wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table folex.wallets: ~0 rows (approximately)
DELETE FROM `wallets`;

-- Dumping structure for table folex.withdraw_requests
CREATE TABLE IF NOT EXISTS `withdraw_requests` (
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

-- Dumping data for table folex.withdraw_requests: ~0 rows (approximately)
DELETE FROM `withdraw_requests`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
