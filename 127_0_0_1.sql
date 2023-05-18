-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 08:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeno_health`
--
CREATE DATABASE IF NOT EXISTS `zeno_health` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `zeno_health`;

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drug_id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `mrp` decimal(10,4) DEFAULT 0.0000,
  `ptr` decimal(10,4) DEFAULT 0.0000,
  `expire_date` datetime DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `type` enum('ethical','generic','ayurvedic','otc','surgical','general') NOT NULL DEFAULT 'generic',
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `drug_id`, `drug_name`, `mrp`, `ptr`, `expire_date`, `barcode`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 399179, 'FINOBRATE 160MG TABLET', 115.0000, 23.4600, '0000-00-00 00:00:00', '1000130150', 'generic', 1, NULL, NULL),
(2, 103039, 'GESTOFIT 200MG CAPSULE', 280.0000, 212.8029, '0000-00-00 00:00:00', '43522056', 'ethical', 1, NULL, NULL),
(3, 425844, 'URIFACT TABLET 10 TAB', 465.0000, 156.2400, '0000-00-00 00:00:00', '39006525', 'generic', 1, NULL, NULL),
(4, 488164, 'TERBIGOOD 250 TABLET 7 TAB-GAID', 149.0000, 27.0000, '0000-00-00 00:00:00', '1000578097', 'generic', 1, NULL, NULL),
(5, 487748, 'PREDIPINE 5MG TABLET 10 TAB-GAID', 30.5000, 5.1000, '0000-00-00 00:00:00', '1000741172', 'generic', 1, NULL, NULL),
(6, 487579, 'PRAZOLEAID DSR CAPSULE 10 CAP-GAID', 130.0000, 19.5000, '0000-00-00 00:00:00', '1000665520', 'generic', 1, NULL, NULL),
(7, 489309, 'MUPIAID 5GM OINTMENT-GAID', 110.0000, 31.2000, '0000-00-00 00:00:00', '1000090121', 'generic', 1, NULL, NULL),
(8, 490944, 'LOMOGOOD CAPSULE 10 CAP-GAID', 20.0000, 7.0500, '0000-00-00 00:00:00', '1000168608', 'generic', 1, NULL, NULL),
(9, 487517, 'GOODVASTATIN 20MG TABLET 10 TAB-GAID', 154.0000, 20.4000, '0000-00-00 00:00:00', '1000692092', 'generic', 1, NULL, NULL),
(10, 488160, 'GOODPARA 650 TABLET 10 TAB-GAID', 20.0000, 9.6000, '0000-00-00 00:00:00', '1000670763', 'generic', 1, NULL, NULL),
(11, 486177, 'GOODIPINE 10MG TABLET 10 TAB-GAID', 99.0000, 16.8000, '0000-00-00 00:00:00', '1000596804', 'generic', 1, NULL, NULL),
(12, 488168, 'GOODGLIPTIN 50MG TABLET 15 TAB-GAID', 292.0000, 39.9000, '0000-00-00 00:00:00', '1000692166', 'generic', 1, NULL, NULL),
(13, 488121, 'GOODFENACOL P TABLET 10 TAB-GAID', 50.0000, 12.0000, '0000-00-00 00:00:00', '1000694381', 'generic', 1, NULL, NULL),
(14, 488154, 'GOODCONAZOLE 200MG CAPSULE 10 CAP-GAID', 255.0000, 72.6000, '0000-00-00 00:00:00', '1000628616', 'generic', 1, NULL, NULL),
(15, 487507, 'GOODCONAZOLE 100MG CAPSULE 10 CAP-GAID', 220.0000, 45.9000, '0000-00-00 00:00:00', '1000626363', 'generic', 1, NULL, NULL),
(16, 488123, 'GOODCOFOL PLUS NF CAPSULE 10 CAP-GAID', 147.0000, 33.0360, '0000-00-00 00:00:00', '1000692271', 'generic', 1, NULL, NULL),
(17, 489305, 'GOODCALTROL XT TABLET 15 TAB-GAID', 215.0000, 81.0000, '0000-00-00 00:00:00', '1000760504', 'generic', 1, NULL, NULL),
(18, 487870, 'GLIAID FORTE 2 TABLET 10 TAB-GAID', 91.0000, 17.7000, '0000-00-00 00:00:00', '1000736358', 'generic', 1, NULL, NULL),
(19, 488849, 'ESOPRAID D CAPSULE 10 CAP-GAID', 130.0000, 21.6000, '0000-00-00 00:00:00', '1000685123', 'generic', 1, NULL, NULL),
(20, 488125, 'AIDSARTAN AMH 40 TABLET 10 TAB-GAID', 94.0000, 24.0000, '0000-00-00 00:00:00', '1000642185', 'generic', 1, NULL, NULL),
(21, 487524, 'AIDSARTAN 20MG TABLET 10 TAB-GAID', 35.0000, 9.9000, '0000-00-00 00:00:00', '1000692051', 'generic', 1, NULL, NULL),
(22, 487583, 'AIDROVASTATIN 10MG TABLET 10 TAB-GAID', 110.0000, 23.7000, '0000-00-00 00:00:00', '1000677229', 'generic', 1, NULL, NULL),
(23, 231265, 'MGD3 TABLET 10 TAB', 257.0000, 200.7668, '0000-00-00 00:00:00', '1000759797', 'ethical', 1, NULL, NULL),
(24, 487954, 'PREDIPINE AT TABLET 10 TAB-GAID', 25.0000, 7.8000, '0000-00-00 00:00:00', '1000687715', 'generic', 1, NULL, NULL),
(25, 487585, 'GOODVITAMIN D3 60K CAPSULE 4 CAP-GAID', 501.0000, 16.5000, '0000-00-00 00:00:00', '1000694275', 'generic', 1, NULL, NULL),
(26, 487585, 'GOODVITAMIN D3 60K CAPSULE 4 CAP-GAID', 501.0000, 16.5000, '0000-00-00 00:00:00', '1000684923', 'generic', 1, NULL, NULL),
(27, 488126, 'GOODVASTATIN GOLD 10 CAPSULE 15 CAP-GAID', 89.0000, 35.7000, '0000-00-00 00:00:00', '1000591742', 'generic', 1, NULL, NULL),
(28, 487508, 'GOODGLIPTIN M 500 TABLET 10 TAB-GAID', 210.0000, 26.4000, '0000-00-00 00:00:00', '1000690328', 'generic', 1, NULL, NULL),
(29, 490958, 'GOODESLOR TABLET 10 TAB-GAID', 70.0000, 14.0400, '0000-00-00 00:00:00', '1000156232', 'generic', 1, NULL, NULL),
(30, 488142, 'ESOPRAID 40 TABLET 10 TAB-GAID', 91.0000, 10.5000, '0000-00-00 00:00:00', '1000606451', 'generic', 1, NULL, NULL),
(31, 487512, 'AIDSARTAN CT 12.5MG TABLET 10 TAB-GAID', 115.5000, 23.7000, '0000-00-00 00:00:00', '1000690382', 'generic', 1, NULL, NULL),
(32, 488832, 'AIDSARTAN AM TABLET 10 TAB-GAID', 80.0000, 21.0000, '0000-00-00 00:00:00', '1000729566', 'generic', 1, NULL, NULL),
(33, 488230, 'AIDLUZOLE CREAM 30GM-GAID', 255.0000, 44.1000, '0000-00-00 00:00:00', '1000705783', 'generic', 1, NULL, NULL),
(34, 488127, 'GOODVASTATIN GOLD 20 CAPSULE 15 CAP-GAID', 120.0000, 48.7500, '0000-00-00 00:00:00', '1000758406', 'generic', 1, NULL, NULL),
(35, 488127, 'GOODVASTATIN GOLD 20 CAPSULE 15 CAP-GAID', 120.0000, 48.7500, '0000-00-00 00:00:00', '1000576804', 'generic', 1, NULL, NULL),
(36, 490454, 'BILASAID 20 TABLET 10 TAB-GAID', 118.0000, 50.1930, '0000-00-00 00:00:00', '1000152084', 'generic', 1, NULL, NULL),
(37, 489358, 'AIDSARTAN BETA 25 TABLET 10 TAB-GAID', 155.0000, 25.3825, '0000-00-00 00:00:00', '1000718368', 'generic', 1, NULL, NULL),
(38, 445618, 'DISPRIN REGULAR 325MG TABLET 10 TAB', 11.2000, 9.6543, '0000-00-00 00:00:00', '29167566', 'otc', 1, NULL, NULL),
(39, 478499, 'CARTIGEN PRO TABLET 10 TAB', 650.0000, 459.0123, '0000-00-00 00:00:00', '1000760266', 'ethical', 1, NULL, NULL),
(40, 278189, 'RENERVE PLUS CAPSULE 15 CAP', 277.0000, 210.5075, '0000-00-00 00:00:00', '40345850', 'ethical', 1, NULL, NULL),
(41, 278189, 'RENERVE PLUS CAPSULE 15 CAP', 277.0000, 208.3362, '0000-00-00 00:00:00', '35249790', 'ethical', 1, NULL, NULL),
(42, 107889, 'GLYCOMET 500MG TABLET SR', 40.3200, 32.5141, '0000-00-00 00:00:00', '1000764852', 'ethical', 1, NULL, NULL),
(43, 497672, 'ROVASAID GOLD 20 CAPSULE 10 CAP-GAID', 249.0000, 45.6000, '0000-00-00 00:00:00', '1000694266', 'generic', 1, NULL, NULL),
(44, 487749, 'PREDIPINE 2.5MG TABLET 10 TAB-GAID', 17.5000, 4.2000, '0000-00-00 00:00:00', '1000084260', 'generic', 1, NULL, NULL),
(45, 488831, 'GOODSARTAN AM TABLET 10 TAB-GAID', 110.0000, 27.0000, '0000-00-00 00:00:00', '1000648427', 'generic', 1, NULL, NULL),
(46, 490940, 'GOODCLOR 12.5 TABLET 10 TAB-GAID', 75.0000, 11.6640, '0000-00-00 00:00:00', '1000162338', 'generic', 1, NULL, NULL),
(47, 490236, 'FEXOAID 120 TABLET 10 TAB-GAID', 120.0000, 26.7780, '0000-00-00 00:00:00', '1000154662', 'generic', 1, NULL, NULL),
(48, 495109, 'CILOSTAID TABLET 10 TAB-GAID', 149.0000, 27.6000, '0000-00-00 00:00:00', '1000527887', 'generic', 1, NULL, NULL),
(49, 490949, 'AIDSEMIDE PLUS TABLET 15 TAB-GAID', 75.0000, 37.2000, '0000-00-00 00:00:00', '1000162491', 'generic', 1, NULL, NULL),
(50, 489358, 'AIDSARTAN BETA 25 TABLET 10 TAB-GAID', 155.0000, 23.4300, '0000-00-00 00:00:00', '1000718368', 'generic', 1, NULL, NULL),
(51, 490463, 'LOBAID GM CREAM 15GM-GAID', 95.0000, 15.0000, '0000-00-00 00:00:00', '1000180448', 'generic', 1, NULL, NULL),
(52, 491794, 'GOODVASTATIN AV 150 CAPSULE 15 CAP-GAID', 65.0000, 25.8000, '0000-00-00 00:00:00', '1000424314', 'generic', 1, NULL, NULL),
(53, 490933, 'GOODPHYLLINE 100 CAPSULE 10 CAP-GAID', 140.0000, 20.2980, '0000-00-00 00:00:00', '1000152083', 'generic', 1, NULL, NULL),
(54, 490468, 'GOODOLOL XL 12.5 TABLET 10 TAB-GAID', 40.0000, 7.5600, '0000-00-00 00:00:00', '1000146820', 'generic', 1, NULL, NULL),
(55, 491296, 'GABTRIPTYLINEAID NT 100/10 TABLET 10 TAB-GAID', 95.0000, 44.5260, '0000-00-00 00:00:00', '1000154668', 'generic', 1, NULL, NULL),
(56, 495110, 'ETORIGOOD TH4 TABLET 10 TAB-GAID', 250.0000, 60.6000, '0000-00-00 00:00:00', '1000605079', 'generic', 1, NULL, NULL),
(57, 488848, 'AIDFENAC SP TABLET 10 TAB-GAID', 90.0000, 7.5600, '0000-00-00 00:00:00', '1000628690', 'generic', 1, NULL, NULL),
(58, 497966, 'AIDFENAC HOT GEL 30GM-GAID', 120.0000, 24.0000, '0000-00-00 00:00:00', '1000715555', 'generic', 1, NULL, NULL),
(59, 491323, 'AIDCILLIN 500 CAPSULE 10 CAP-GAID', 72.0000, 25.8000, '0000-00-00 00:00:00', '1000270106', 'generic', 1, NULL, NULL),
(60, 341225, 'TENDOCARE TABLET', 419.0000, 310.6817, '0000-00-00 00:00:00', '1000759802', 'ethical', 1, NULL, NULL),
(61, 488572, 'REMO 100MG TABLET 15 TAB', 215.0000, 156.3408, '0000-00-00 00:00:00', '1000707122', 'ethical', 1, NULL, NULL),
(62, 385537, 'ATAZIS SYRUP 100ML', 80.0000, 25.7400, '0000-00-00 00:00:00', '1000386385', 'generic', 1, NULL, NULL),
(63, 385537, 'ATAZIS SYRUP 100ML', 75.0000, 24.1313, '0000-00-00 00:00:00', '1000135323', 'generic', 1, NULL, NULL),
(64, 385537, 'ATAZIS SYRUP 100ML', 80.0000, 25.7400, '0000-00-00 00:00:00', '1000671171', 'generic', 1, NULL, NULL),
(65, 40973, 'KETZ 2% W/W CREAM', 110.0000, 20.7994, '0000-00-00 00:00:00', '1000760877', 'generic', 1, NULL, NULL),
(66, 408937, 'BIOCETAM 800MG TABLET 10 TAB', 184.9500, 37.8408, '0000-00-00 00:00:00', '1000736404', 'generic', 1, NULL, NULL),
(67, 46869, 'DERIPHYLLIN RETARD 300 TABLET', 51.7000, 37.2254, '0000-00-00 00:00:00', '1000743976', 'ethical', 1, NULL, NULL),
(68, 49249, 'DERIPHYLLIN RETARD 150 TABLET', 33.6000, 24.9984, '0000-00-00 00:00:00', '1000762989', 'ethical', 1, NULL, NULL),
(69, 32135, 'COMPLAMINA 150MG TABLET', 42.0500, 30.2803, '0000-00-00 00:00:00', '1000743974', 'ethical', 1, NULL, NULL),
(70, 399571, 'ATORVA 40MG TABLET 10 TAB', 192.7500, 143.4075, '0000-00-00 00:00:00', '1000699299', 'ethical', 1, NULL, NULL),
(71, 373209, 'ZANDU 8ML BALM', 44.0000, 36.9600, '0000-00-00 00:00:00', '1000764474', 'ayurvedic', 1, NULL, NULL),
(72, 399041, 'VISSCO KNEE CAP L', 352.0000, 177.4080, '0000-00-00 00:00:00', '26504666', 'surgical', 1, NULL, NULL),
(73, 145057, 'JALRA M 50MG/500MG TABLET 15 TAB', 325.0000, 241.7970, '0000-00-00 00:00:00', '1000760534', 'ethical', 1, NULL, NULL),
(74, 107879, 'GLYNASE MF TAB', 20.3500, 15.1449, '0000-00-00 00:00:00', '1000734199', 'ethical', 1, NULL, NULL),
(75, 107889, 'GLYCOMET 500MG TABLET SR', 40.3200, 32.5140, '0000-00-00 00:00:00', '1000764852', 'ethical', 1, NULL, NULL),
(76, 75395, 'ECOSPRIN AV 75MG CAPSULE', 60.6500, 48.9108, '0000-00-00 00:00:00', '1000742710', 'ethical', 1, NULL, NULL),
(77, 75415, 'ECOSPRIN AV 150/20 CAPSULE', 43.2500, 34.8795, '0000-00-00 00:00:00', '1000763124', 'ethical', 1, NULL, NULL),
(78, 75407, 'ECOSPRIN 75MG TABLET', 5.3300, 4.4083, '0000-00-00 00:00:00', '1000706595', 'ethical', 1, NULL, NULL),
(79, 75405, 'ECOSPRIN 150MG TABLET', 9.7400, 8.0640, '0000-00-00 00:00:00', '1000742717', 'ethical', 1, NULL, NULL),
(80, 201001, 'AMLOPIN AT TABLET', 85.5000, 63.6105, '0000-00-00 00:00:00', '1000748624', 'ethical', 1, NULL, NULL),
(81, 400483, 'SOLEARWAX EAR DROP', 75.0000, 17.5018, '0000-00-00 00:00:00', '1000722098', 'generic', 1, NULL, NULL),
(82, 401656, 'KETZ SOAP', 110.0000, 37.1976, '0000-00-00 00:00:00', '1000665171', 'generic', 1, NULL, NULL),
(83, 385593, 'FUNGDID B 15GM CREAM', 50.0000, 13.8000, '0000-00-00 00:00:00', '1000726889', 'generic', 1, NULL, NULL),
(84, 356609, 'UNIENZYME TABLET', 70.6000, 52.3488, '0000-00-00 00:00:00', '1000751290', 'ethical', 1, NULL, NULL),
(85, 402403, 'SHELCAL XT TABLET 15 TAB', 414.5500, 307.4400, '0000-00-00 00:00:00', '1000758932', 'ethical', 1, NULL, NULL),
(86, 406705, 'PRUVICT 2MG TABLET 10 TAB', 347.8000, 257.9360, '0000-00-00 00:00:00', '1000682268', 'ethical', 1, NULL, NULL),
(87, 178343, 'AZULIX MF 2 TAB', 225.0000, 163.6208, '0000-00-00 00:00:00', '1000755270', 'ethical', 1, NULL, NULL),
(88, 402576, 'CREPE BANDAGE 6CM', 190.0000, 33.6000, '0000-00-00 00:00:00', '1000686531', 'surgical', 1, NULL, NULL),
(89, 199441, 'ROSUVAS 20MG TABLET 10 TAB', 396.0000, 287.9744, '0000-00-00 00:00:00', '1000703669', 'ethical', 1, NULL, NULL),
(90, 396855, 'LACTIFIBER 10 GM/3.5 GM GRANULES 180 GM GRANULES', 415.0000, 301.7952, '0000-00-00 00:00:00', '1000755072', 'ethical', 1, NULL, NULL),
(91, 488812, 'GEMER 1MG TABLET 15 TAB', 149.0000, 108.3600, '0000-00-00 00:00:00', '1000703786', 'ethical', 1, NULL, NULL),
(92, 146981, 'KAYAM 30 TABLET', 110.0000, 75.2640, '0000-00-00 00:00:00', '1000722729', 'ayurvedic', 1, NULL, NULL),
(93, 93049, 'FLAVEDON MR 35MG TABLET', 143.9900, 107.1286, '0000-00-00 00:00:00', '1000745737', 'ethical', 1, NULL, NULL),
(94, 407721, 'DR ORTHO 60ML OIL', 158.0000, 107.4416, '0000-00-00 00:00:00', '1000697330', 'ayurvedic', 1, NULL, NULL),
(95, 152523, 'LASIX 40MG TAB 15TAB', 13.9400, 10.6347, '0000-00-00 00:00:00', '1000753000', 'ethical', 1, NULL, NULL),
(96, 488739, 'AMARYL M1 TABLET 20 TAB', 242.8400, 180.6759, '0000-00-00 00:00:00', '1000760389', 'ethical', 1, NULL, NULL),
(97, 1451, 'PALSINURON CAPSULE', 180.0000, 135.9904, '0000-00-00 00:00:00', '1000733926', 'ayurvedic', 1, NULL, NULL),
(98, 102391, 'GAVISCON PEPPERMINT 150ML SYRUP', 162.3600, 138.3984, '0000-00-00 00:00:00', '1000702581', 'ethical', 1, NULL, NULL),
(99, 485233, 'DETTOL ANTISEPTIC LIQUID 550ML', 214.0600, 184.6768, '0000-00-00 00:00:00', '1000754070', 'general', 1, NULL, NULL),
(100, 485224, 'DETTOL ANTISEPTIC LIQUID 250ML', 127.7700, 110.8912, '0000-00-00 00:00:00', '1000709265', 'general', 1, NULL, NULL),
(102, 98745632, 'dfasdf', 500.2300, 230.0000, '2024-03-05 00:00:00', 'fasdfasd', 'generic', 1, '2023-05-18 12:15:57', '2023-05-18 12:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `drug_discount_mapping`
--

CREATE TABLE `drug_discount_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drug_id` int(11) NOT NULL,
  `fixed_discount` int(11) NOT NULL DEFAULT 0,
  `percentage_discount` int(11) NOT NULL DEFAULT 0,
  `buy_one_get_one_free` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>NO, 1=>Yes',
  `single_product_greater_500` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>NO, 1=>Yes',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>inactive, 1=>active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drug_discount_mapping`
--

INSERT INTO `drug_discount_mapping` (`id`, `drug_id`, `fixed_discount`, `percentage_discount`, `buy_one_get_one_free`, `single_product_greater_500`, `status`, `created_at`, `updated_at`) VALUES
(1, 107889, 20, 0, 0, 0, 1, NULL, NULL),
(2, 278189, 0, 10, 0, 0, 1, NULL, NULL),
(3, 385537, 0, 0, 1, 0, 1, NULL, NULL),
(4, 487585, 0, 0, 0, 1, 1, NULL, NULL),
(5, 488127, 10, 0, 0, 0, 1, NULL, NULL),
(6, 489358, 0, 25, 0, 0, 1, NULL, NULL),
(7, 987456321, 25, 0, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_18_102441_create_price_rule_table', 2),
(7, '2023_05_18_103231_create_drugs_price_rule_mapping', 3),
(8, '2023_05_17_193036_create_drugs_table', 4),
(9, '2023_05_18_140754_create_drug_discount_mapping', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'testing', 't.mode@mail.com', NULL, '$2y$10$3OKaPhQ4Ukd7awy28cf/1urRWjEyh8aPJCFysqeT1wKMXJzL1N16u', NULL, '2023-05-18 02:54:33', '2023-05-18 02:54:33'),
(2, 'testing2', 't.mod2@mail.com', NULL, '$2y$10$e5dKn1OM7yToO97gDCkze..Krnds3bP2ByNDSb6Z3DVFfBGPwW8a6', NULL, '2023-05-18 11:53:07', '2023-05-18 11:53:07'),
(3, 'testing2', 't.mod3@mail.com', NULL, '$2y$10$gUwmvE/d/s6Tyx7GIbj6Xuar.qn9WizwdiTltoQ7m25dc36hMfnZO', NULL, '2023-05-18 11:54:44', '2023-05-18 11:54:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug_discount_mapping`
--
ALTER TABLE `drug_discount_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `drug_discount_mapping`
--
ALTER TABLE `drug_discount_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
