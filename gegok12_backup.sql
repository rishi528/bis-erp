-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: gegok12
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
-- Table structure for table `absent_reasons`
--

DROP TABLE IF EXISTS `absent_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `absent_reasons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absent_reasons`
--

LOCK TABLES `absent_reasons` WRITE;
/*!40000 ALTER TABLE `absent_reasons` DISABLE KEYS */;
INSERT INTO `absent_reasons` VALUES (1,'Health Issue',1,'2026-03-01 10:54:28','2026-03-01 10:54:28',NULL),(2,'Family Functions',1,'2026-03-01 10:54:28','2026-03-01 10:54:28',NULL),(3,'Personal Work',1,'2026-03-01 10:54:28','2026-03-01 10:54:28',NULL),(4,'Others',1,'2026-03-01 10:54:28','2026-03-01 10:54:28',NULL);
/*!40000 ALTER TABLE `absent_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `academic_years`
--

DROP TABLE IF EXISTS `academic_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_years` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `academic_years_school_id_foreign` (`school_id`),
  CONSTRAINT `academic_years_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_years`
--

LOCK TABLES `academic_years` WRITE;
/*!40000 ALTER TABLE `academic_years` DISABLE KEYS */;
INSERT INTO `academic_years` VALUES (1,1,'2023-2024','This is Current Academic Year','2023-06-01 00:00:00','2024-04-30 00:00:00',0,'2026-03-01 10:54:37','2026-03-01 13:31:45','2026-03-01 13:31:45'),(2,1,'2024-2025','This is Next Academic Year','2024-06-01 00:00:00','2025-04-30 00:00:00',0,'2026-03-01 10:54:37','2026-03-01 13:31:36','2026-03-01 13:31:36'),(3,1,'2026-2027','This Academic Year','2026-06-01 00:00:00','2027-05-31 00:00:00',1,'2026-03-01 11:19:29','2026-03-01 12:40:54',NULL);
/*!40000 ALTER TABLE `academic_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` int DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES (1,'addacademicyear','Academic Year Added Successfully',3,'App\\Models\\AcademicYear',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:19:29','2026-03-01 11:19:29'),(2,'editacademicyear','Academic Year Updated Successfully',1,'App\\Models\\AcademicYear',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:20:05','2026-03-01 11:20:05'),(3,'updateacademicyearstatus','Academic Year Status Updated Successfully',3,'App\\Models\\AcademicYear',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:21:06','2026-03-01 11:21:06'),(4,'importteacher','Teacher Details Imported Successfully',2,'App\\Models\\User',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:34:01','2026-03-01 11:34:01'),(5,'addsubject','Subject Added Successfully',153,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:39:11','2026-03-01 11:39:11'),(6,'addstandarddetail','Standard Details Added Successfully',1,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:40:08','2026-03-01 11:40:08'),(7,'addsubject','Subject Added Successfully',154,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:40:42','2026-03-01 11:40:42'),(8,'addstandarddetail','Standard Details Added Successfully',2,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:41:19','2026-03-01 11:41:19'),(9,'addsubject','Subject Added Successfully',155,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:41:58','2026-03-01 11:41:58'),(10,'addstandarddetail','Standard Details Added Successfully',3,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:42:23','2026-03-01 11:42:23'),(11,'addsubject','Subject Added Successfully',156,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:43:01','2026-03-01 11:43:01'),(12,'addstandarddetail','Standard Details Added Successfully',4,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:43:25','2026-03-01 11:43:25'),(13,'addsubject','Subject Added Successfully',157,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:44:01','2026-03-01 11:44:01'),(14,'addstandarddetail','Standard Details Added Successfully',5,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:44:26','2026-03-01 11:44:26'),(15,'addsubject','Subject Added Successfully',158,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:46:08','2026-03-01 11:46:08'),(16,'addstandarddetail','Standard Details Added Successfully',6,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:46:36','2026-03-01 11:46:36'),(17,'addsubject','Subject Added Successfully',159,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:47:13','2026-03-01 11:47:13'),(18,'addsubject','Subject Added Successfully',160,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:48:03','2026-03-01 11:48:03'),(19,'addstandarddetail','Standard Details Added Successfully',7,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:48:40','2026-03-01 11:48:40'),(20,'addsubject','Subject Added Successfully',161,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:50:14','2026-03-01 11:50:14'),(21,'addsubject','Subject Added Successfully',162,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:51:02','2026-03-01 11:51:02'),(22,'addsubject','Subject Added Successfully',163,'App\\Models\\Subject',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:51:42','2026-03-01 11:51:42'),(23,'addstandarddetail','Standard Details Added Successfully',8,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:53:22','2026-03-01 11:53:22'),(24,'addstandarddetail','Standard Details Added Successfully',9,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:53:51','2026-03-01 11:53:51'),(25,'addstandarddetail','Standard Details Added Successfully',10,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 11:54:18','2026-03-01 11:54:18'),(26,'updateacademicyearstatus','Academic Year Status Updated Successfully',3,'App\\Models\\AcademicYear',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 12:40:54','2026-03-01 12:40:54'),(27,'editstandarddetail','Standard Details Updated Successfully',1,'App\\Models\\StandardLink',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 13:23:38','2026-03-01 13:23:38'),(28,'exportstudent','Student Details Exported Successfully',2,'App\\Models\\User',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 13:28:08','2026-03-01 13:28:08'),(29,'deleteacademicyear','Academic Year Deleted Successfully',2,'App\\Models\\AcademicYear',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 13:31:36','2026-03-01 13:31:36'),(30,'deleteacademicyear','Academic Year Deleted Successfully',1,'App\\Models\\AcademicYear',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 13:31:46','2026-03-01 13:31:46'),(31,'addstudent','Student Added Successfully',22,'App\\Models\\User',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 13:34:56','2026-03-01 13:34:56'),(32,'exportstudent','Student Details Exported Successfully',2,'App\\Models\\User',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 13:35:54','2026-03-01 13:35:54'),(33,'downloadsampleformat','Downloaded Sample Format File Successfully',2,'App\\Models\\User',NULL,2,'App\\Models\\User','{\"ip\":\"127.0.0.1\",\"details\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/145.0.0.0 Safari\\/537.36\"}',NULL,'2026-03-01 14:03:12','2026-03-01 14:03:12');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_locations`
--

DROP TABLE IF EXISTS `address_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_locations`
--

LOCK TABLES `address_locations` WRITE;
/*!40000 ALTER TABLE `address_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admissions`
--

DROP TABLE IF EXISTS `admissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `academic_year_id` int unsigned DEFAULT NULL,
  `standard_id` int unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_place` text COLLATE utf8mb4_unicode_ci,
  `nationality` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` text COLLATE utf8mb4_unicode_ci,
  `community` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` text COLLATE utf8mb4_unicode_ci,
  `identification_marks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_last_studied` longtext COLLATE utf8mb4_unicode_ci,
  `reason_for_leaving` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_for_communication` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `siblings` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `half_yearly_mark_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_of_education` enum('CBSE','Matric','ICSE','State Board','Anglo Indian','Others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_of_language` enum('Tamil','English','Sanskrit','French') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_selection` longtext COLLATE utf8mb4_unicode_ci,
  `board_registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_qualification_id` int unsigned DEFAULT NULL,
  `father_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_income` double DEFAULT NULL,
  `father_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_qualification_id` int unsigned DEFAULT NULL,
  `mother_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_organisation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_income` double DEFAULT NULL,
  `mother_mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_with_student_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation_with_student_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medical_history` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_curricular_activities` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode_of_transport` enum('auto','car','city_bus','cycle','rickshaw','school_bus','taxi','walking') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_details` longtext COLLATE utf8mb4_unicode_ci,
  `application_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_status` enum('Draft','Approved','Pending','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int unsigned DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_group_id` int unsigned DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admissions_father_email_unique` (`father_email`),
  UNIQUE KEY `admissions_mother_email_unique` (`mother_email`),
  KEY `admissions_school_id_foreign` (`school_id`),
  KEY `admissions_academic_year_id_foreign` (`academic_year_id`),
  KEY `admissions_standard_id_foreign` (`standard_id`),
  KEY `admissions_father_qualification_id_foreign` (`father_qualification_id`),
  KEY `admissions_mother_qualification_id_foreign` (`mother_qualification_id`),
  KEY `admissions_section_id_foreign` (`section_id`),
  CONSTRAINT `admissions_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `admissions_father_qualification_id_foreign` FOREIGN KEY (`father_qualification_id`) REFERENCES `qualifications` (`id`),
  CONSTRAINT `admissions_mother_qualification_id_foreign` FOREIGN KEY (`mother_qualification_id`) REFERENCES `qualifications` (`id`),
  CONSTRAINT `admissions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `admissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  CONSTRAINT `admissions_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admissions`
--

LOCK TABLES `admissions` WRITE;
/*!40000 ALTER TABLE `admissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignment_approvals`
--

DROP TABLE IF EXISTS `assignment_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_approvals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `assignment_id` int unsigned NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','pending','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approved_by` int unsigned DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignment_approvals_assignment_id_foreign` (`assignment_id`),
  KEY `assignment_approvals_approved_by_foreign` (`approved_by`),
  CONSTRAINT `assignment_approvals_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `assignment_approvals_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_approvals`
--

LOCK TABLES `assignment_approvals` WRITE;
/*!40000 ALTER TABLE `assignment_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignment_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned NOT NULL,
  `subject_id` int unsigned NOT NULL,
  `teacher_id` int unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `assigned_date` datetime NOT NULL,
  `submission_date` datetime NOT NULL,
  `status` enum('pending','ongoing','cancel','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_school_id_foreign` (`school_id`),
  KEY `assignments_academic_year_id_foreign` (`academic_year_id`),
  KEY `assignments_standardlink_id_foreign` (`standardLink_id`),
  KEY `assignments_subject_id_foreign` (`subject_id`),
  KEY `assignments_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `assignments_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `assignments_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `assignments_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `assignments_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `assignments_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendances` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `date` datetime NOT NULL,
  `session` enum('afternoon','forenoon') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `reason_id` int unsigned DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `recorded_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attendances_school_id_foreign` (`school_id`),
  KEY `attendances_academic_year_id_foreign` (`academic_year_id`),
  KEY `attendances_standardlink_id_foreign` (`standardLink_id`),
  KEY `attendances_user_id_foreign` (`user_id`),
  KEY `attendances_reason_id_foreign` (`reason_id`),
  KEY `attendances_recorded_by_foreign` (`recorded_by`),
  CONSTRAINT `attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `attendances_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `absent_reasons` (`id`),
  CONSTRAINT `attendances_recorded_by_foreign` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`),
  CONSTRAINT `attendances_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `attendances_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentications`
--

DROP TABLE IF EXISTS `authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_on` timestamp NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authentications_user_id_foreign` (`user_id`),
  CONSTRAINT `authentications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentications`
--

LOCK TABLES `authentications` WRITE;
/*!40000 ALTER TABLE `authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `background_images`
--

DROP TABLE IF EXISTS `background_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `background_images` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `type` enum('event','noticeboard') COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `background_images_school_id_foreign` (`school_id`),
  CONSTRAINT `background_images_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `background_images`
--

LOCK TABLES `background_images` WRITE;
/*!40000 ALTER TABLE `background_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `background_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `book_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn_number` bigint NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_school_id_foreign` (`school_id`),
  KEY `books_academic_year_id_foreign` (`academic_year_id`),
  KEY `books_category_id_foreign` (`category_id`),
  CONSTRAINT `books_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `books_category` (`id`),
  CONSTRAINT `books_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,1,3,'5254748','Mollitia voluptatem nihil mollitia officia et recusandae.','Rosalyn Koelpin',9646758396784,'https://placeit/200x300',14,'2026-03-01 10:54:57','2026-03-01 10:54:57'),(2,1,1,4,'2952360','Ducimus mollitia quod et accusamus animi ut.','Prof. Riley Boyle III',9589907884995,'https://placeit/200x300',9,'2026-03-01 10:54:58','2026-03-01 10:54:58'),(3,1,1,4,'8443220','Animi vel numquam ipsum dolore.','Vicky Krajcik',8491800813228,'https://placeit/200x300',19,'2026-03-01 10:54:59','2026-03-01 10:54:59'),(4,1,1,4,'2059572','Ab quam ut omnis officiis.','Tracey Durgan',9671930517473,'https://placeit/200x300',5,'2026-03-01 10:54:59','2026-03-01 10:54:59'),(5,1,1,8,'2493283','Voluptas delectus fugit asperiores perspiciatis laborum.','Dorian Koepp',8407833228335,'https://placeit/200x300',7,'2026-03-01 10:54:59','2026-03-01 10:54:59'),(6,1,1,9,'2587310','Ex voluptatem quisquam ducimus reprehenderit perspiciatis.','Dr. Timothy Davis Sr.',5358886509717,'https://placeit/200x300',24,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(7,1,1,3,'5596314','Cupiditate distinctio quas possimus odio sunt officia.','Dr. Johnpaul Leannon Jr.',4353842960305,'https://placeit/200x300',25,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(8,1,1,2,'3474541','Est sed ea quia.','Dwight Pouros',7105346283445,'https://placeit/200x300',17,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(9,1,1,9,'3890288','Sit dolores exercitationem est quas consequatur dolorum.','Ervin Lubowitz',3753144777723,'https://placeit/200x300',21,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(10,1,1,10,'8091979','Doloribus enim omnis rerum est.','Lempi Ondricka',3402517074692,'https://placeit/200x300',19,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(11,1,1,1,'6915276','Voluptatem et aperiam aut cupiditate eum aperiam.','Magnus Borer IV',7907638043207,'https://placeit/200x300',11,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(12,1,1,3,'1293012','Sed officiis soluta fugiat.','Corrine Moen MD',705172673198,'https://placeit/200x300',13,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(13,1,1,5,'6292673','Reprehenderit modi sunt consequuntur inventore libero.','Delaney Nitzsche',3455545208959,'https://placeit/200x300',7,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(14,1,1,7,'7592402','Beatae modi nulla non neque explicabo.','Mrs. Julia Stiedemann III',4826944104804,'https://placeit/200x300',25,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(15,1,1,3,'4612233','Aut maxime qui earum vitae.','Virgie Kohler',2302984989936,'https://placeit/200x300',16,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(16,1,1,6,'5245194','Et quo porro reprehenderit voluptas expedita neque.','Liana Gibson',5837925971390,'https://placeit/200x300',11,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(17,1,1,3,'2002347','Hic nam nostrum ipsa voluptas.','Marcos Kutch',6457783641311,'https://placeit/200x300',6,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(18,1,1,2,'3432954','Cumque autem reprehenderit modi.','Dr. Madalyn O\'Hara Jr.',8182442324035,'https://placeit/200x300',18,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(19,1,1,2,'2817875','Ut itaque autem aliquid.','Keith Conn',9604099819614,'https://placeit/200x300',5,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(20,1,1,5,'4512361','Est distinctio dolores quia aut unde perferendis.','Orpha Harber',5369317536875,'https://placeit/200x300',6,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(21,1,1,6,'5569821','Quia minus omnis quia placeat.','Prof. Agustina Bartoletti PhD',6838684251890,'https://placeit/200x300',25,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(22,1,1,9,'6189073','Temporibus sint natus veniam blanditiis.','Kirsten Trantow',1868059354838,'https://placeit/200x300',10,'2026-03-01 10:55:00','2026-03-01 10:55:00'),(23,1,1,10,'5715674','Tempore vel libero non est.','Hazel Wiza',9405422972194,'https://placeit/200x300',9,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(24,1,1,5,'2357545','Consectetur consequatur consequatur neque vitae.','Dr. Don Feeney',3930131986317,'https://placeit/200x300',13,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(25,1,1,1,'3444569','Sunt expedita at qui dolores omnis.','Mr. Franco Runolfsdottir IV',2895405001787,'https://placeit/200x300',11,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(26,1,1,7,'5220092','Quisquam architecto ab atque.','Prof. Rafael Waelchi DDS',1653524768018,'https://placeit/200x300',10,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(27,1,1,3,'2913984','Ipsa fugiat sed et.','Rodrigo Konopelski',1280392797279,'https://placeit/200x300',5,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(28,1,1,7,'4486730','Ullam eligendi incidunt ad.','Brennan Johnson',4069570077924,'https://placeit/200x300',15,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(29,1,1,1,'7413809','Eos soluta facere impedit inventore autem ut.','Lavon Turner DDS',6103108632297,'https://placeit/200x300',23,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(30,1,1,3,'8331742','Quaerat sit eius sit similique ut.','Magdalena Weber',5867172876155,'https://placeit/200x300',5,'2026-03-01 10:55:01','2026-03-01 10:55:01'),(31,1,1,4,'7498518','Repellendus fuga enim qui.','Eddie Batz',8145888066044,'https://placeit/200x300',17,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(32,1,1,7,'7441041','In exercitationem excepturi adipisci consectetur perspiciatis voluptate.','Jefferey Hauck',9517054611720,'https://placeit/200x300',14,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(33,1,1,3,'6914956','Dicta ratione corporis inventore omnis.','Jazmyne Haley',1221846072412,'https://placeit/200x300',20,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(34,1,1,2,'7048493','Quia eius eum vel ratione ducimus.','Ignatius Grimes',9206391699873,'https://placeit/200x300',5,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(35,1,1,4,'1646660','Ad in officiis totam cum.','Alphonso McCullough',3917572251242,'https://placeit/200x300',23,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(36,1,1,9,'4368904','Incidunt facere sit quidem quaerat dolorum et.','Daphne Wunsch',3903321738904,'https://placeit/200x300',21,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(37,1,1,9,'7227852','Magnam nisi ut itaque quia.','Mrs. Ciara Bergstrom',3924100670529,'https://placeit/200x300',5,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(38,1,1,7,'1858448','Eum voluptas distinctio eligendi.','Giovani Keebler',1464251133501,'https://placeit/200x300',6,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(39,1,1,9,'3598308','Vel dolor laborum modi.','Monty Parisian',8188097162398,'https://placeit/200x300',20,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(40,1,1,3,'1138245','Iusto quae qui totam ut qui animi.','Ms. Idell Gusikowski',7935573811025,'https://placeit/200x300',9,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(41,1,1,5,'7759020','Similique ut eaque dolor labore.','Norberto Leannon',4142977599302,'https://placeit/200x300',20,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(42,1,1,8,'5390202','Sequi voluptas vitae fugiat quae voluptatum ut ipsam.','Aidan Herzog',1482618065470,'https://placeit/200x300',17,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(43,1,1,3,'1935921','Libero consequatur ipsum qui.','Brittany Luettgen',3161768653437,'https://placeit/200x300',16,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(44,1,1,8,'5894361','Quo tempore est dolorem.','Prof. Name Toy',5709667093787,'https://placeit/200x300',8,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(45,1,1,2,'2586816','Enim ea laborum error nihil rerum.','Dr. Jace Gutmann',2551916548035,'https://placeit/200x300',8,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(46,1,1,1,'1661460','Sit adipisci cupiditate praesentium error.','Johnathon Leuschke',6238691355114,'https://placeit/200x300',13,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(47,1,1,8,'4413481','Expedita aut reiciendis deleniti.','Dr. Viva Deckow',3280823114086,'https://placeit/200x300',10,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(48,1,1,3,'4744491','Qui quia consequatur omnis.','John Oberbrunner',911979375597,'https://placeit/200x300',7,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(49,1,1,3,'8350629','Minus tempora libero ea illum odit.','Malika Runolfsdottir',8989387634515,'https://placeit/200x300',14,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(50,1,1,5,'2564381','Tempora hic est illum ipsam ut enim.','Eddie Flatley',3721321563131,'https://placeit/200x300',19,'2026-03-01 10:55:02','2026-03-01 10:55:02'),(51,1,1,6,'1257691','Id deserunt expedita natus voluptatem et et.','Estel Abbott',3235452704993,'https://placeit/200x300',21,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(52,1,1,9,'6305339','Alias nisi dolor quidem ea quia quo.','Dr. Grayce Nader PhD',3636555347306,'https://placeit/200x300',8,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(53,1,1,5,'6415446','Sit sunt ullam nulla.','Jayda Bauch I',1932520579973,'https://placeit/200x300',11,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(54,1,1,1,'6653555','Minima aut recusandae recusandae unde.','Abagail Smitham',8260733959484,'https://placeit/200x300',7,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(55,1,1,10,'8512675','Ratione illum corrupti et aliquam cum.','Tevin Marvin',24423338021,'https://placeit/200x300',13,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(56,1,1,7,'4861612','Dolor deleniti eos commodi vel perspiciatis officiis.','Waldo Howell',3444129362262,'https://placeit/200x300',6,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(57,1,1,3,'1489482','At voluptatem distinctio voluptate amet.','Alexandria Gleichner',1053726817703,'https://placeit/200x300',7,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(58,1,1,1,'2797329','Temporibus nisi ducimus accusamus temporibus molestiae.','Forrest Ullrich',6125273034096,'https://placeit/200x300',9,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(59,1,1,8,'6269190','Qui rerum quis occaecati sed rerum.','Joshua Gulgowski',6924257995251,'https://placeit/200x300',18,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(60,1,1,7,'6085914','Eum velit vel repellendus sed quasi provident.','Prof. Lisandro Hackett DVM',69444854877,'https://placeit/200x300',17,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(61,1,1,10,'5749949','Cupiditate similique consectetur at totam.','Mr. Ervin Rohan III',4297483169942,'https://placeit/200x300',17,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(62,1,1,1,'8142932','Vitae dolorem et dolores qui recusandae.','Elton Bartoletti',5337892954056,'https://placeit/200x300',9,'2026-03-01 10:55:03','2026-03-01 10:55:03'),(63,1,1,8,'5336122','Aspernatur eum vel explicabo natus at.','Rey Pouros',8330979957305,'https://placeit/200x300',25,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(64,1,1,2,'4329315','Quos nihil porro aut sequi quo itaque.','Sonya O\'Kon',9641431901903,'https://placeit/200x300',16,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(65,1,1,4,'6367155','Ut vel et quisquam sit.','Ms. Leatha Greenholt DDS',1730571754215,'https://placeit/200x300',16,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(66,1,1,10,'1531737','Est ex eveniet voluptatem.','Miss Graciela Gorczany',4247244837511,'https://placeit/200x300',8,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(67,1,1,6,'1937660','Ratione hic incidunt non sed vel aut.','Dr. Darrell Cummerata PhD',1627493625344,'https://placeit/200x300',19,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(68,1,1,2,'7493795','Voluptatem occaecati ut molestiae quod quos nam.','Mr. Bart Marks DDS',675271363811,'https://placeit/200x300',16,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(69,1,1,7,'5985002','Architecto omnis eius nemo enim.','Dexter O\'Connell',6974902114360,'https://placeit/200x300',15,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(70,1,1,10,'6552834','Eum quia labore qui et doloribus in.','Prof. Mariano Effertz IV',2717183593783,'https://placeit/200x300',11,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(71,1,1,8,'1192836','Sed omnis libero vel.','Lisa Bednar',1230507341026,'https://placeit/200x300',16,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(72,1,1,5,'5725566','Exercitationem quas non explicabo et rerum quis eligendi.','Dr. Collin Lueilwitz PhD',5150209697428,'https://placeit/200x300',12,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(73,1,1,9,'5678527','Inventore omnis ut aliquam.','Katheryn Schmidt',6993684384600,'https://placeit/200x300',15,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(74,1,1,4,'2657425','Iusto eum atque nulla.','Luisa Schneider IV',6028584217557,'https://placeit/200x300',15,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(75,1,1,6,'1668555','Esse quia consectetur dicta.','Mrs. Aniya Anderson I',1738253314856,'https://placeit/200x300',25,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(76,1,1,2,'7648230','Quasi quidem harum nam esse et qui.','Evie Gaylord',2735754649455,'https://placeit/200x300',6,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(77,1,1,4,'4639091','Repellat a nesciunt repellat ea voluptatem distinctio.','Cale Schaden',6250577443630,'https://placeit/200x300',18,'2026-03-01 10:55:04','2026-03-01 10:55:04'),(78,1,1,1,'2359728','Ut dolorum unde est consectetur et iste.','Maynard DuBuque Sr.',9578051816280,'https://placeit/200x300',20,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(79,1,1,5,'8316502','Quasi in temporibus quia molestias ut consequatur.','Dr. Jeremie Denesik Jr.',9929005037839,'https://placeit/200x300',10,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(80,1,1,3,'1921293','Itaque voluptatibus quibusdam consequatur.','Drake Hermiston',6352981815727,'https://placeit/200x300',21,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(81,1,1,8,'4457890','Nihil inventore qui ut.','Felicita Torphy',9462204501331,'https://placeit/200x300',12,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(82,1,1,6,'8519491','Amet distinctio dolores quia.','Layla O\'Connell',6954671162007,'https://placeit/200x300',11,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(83,1,1,4,'8217490','Aut accusantium minus laborum voluptas odit.','Werner Sawayn',4043951495439,'https://placeit/200x300',16,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(84,1,1,5,'7045059','Recusandae pariatur quo saepe.','Jaquelin Howe IV',2048899736165,'https://placeit/200x300',25,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(85,1,1,3,'6801355','Distinctio soluta voluptatum asperiores.','Katherine Dickinson',1735872375930,'https://placeit/200x300',12,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(86,1,1,2,'6067218','Sed dolore fugiat provident.','Athena Lang',5114628423129,'https://placeit/200x300',18,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(87,1,1,2,'3899268','Dolorum minima earum labore quae dolor vel.','Ron Koch',5375549689104,'https://placeit/200x300',8,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(88,1,1,9,'4194876','Repudiandae et harum distinctio aut minima et.','Kelton Runte',4993476523073,'https://placeit/200x300',8,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(89,1,1,1,'2060842','Ad non quo hic hic.','Emmett Marquardt Jr.',449318307072,'https://placeit/200x300',10,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(90,1,1,9,'4299051','Aut facilis tenetur sed autem.','Lora Beier MD',8704476533964,'https://placeit/200x300',14,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(91,1,1,8,'7170921','Vitae ea quia fugiat assumenda qui alias.','Mallie Purdy',3760632186257,'https://placeit/200x300',21,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(92,1,1,1,'3952566','Voluptatem velit repudiandae doloribus commodi.','Anjali Reinger',3586372123723,'https://placeit/200x300',14,'2026-03-01 10:55:05','2026-03-01 10:55:05'),(93,1,1,9,'8648844','Molestiae consectetur sequi harum at optio.','Edison Conn',1685806707521,'https://placeit/200x300',16,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(94,1,1,7,'7125445','Tenetur animi dignissimos unde.','Sheldon Conn V',795575684181,'https://placeit/200x300',16,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(95,1,1,1,'3896466','Quia natus voluptates sed magnam voluptatibus.','Dr. Brionna Sauer I',5845279997942,'https://placeit/200x300',6,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(96,1,1,7,'5701447','Eveniet provident aut sed molestias inventore hic.','Raina Greenholt',1660642923243,'https://placeit/200x300',24,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(97,1,1,7,'5292006','Illum ad est alias vel sit.','Addison Stroman',329863604997,'https://placeit/200x300',15,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(98,1,1,8,'8602848','Ipsam itaque voluptatum autem consequatur explicabo blanditiis.','Melissa Sauer',2511311709240,'https://placeit/200x300',5,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(99,1,1,10,'7805068','Doloribus dolore qui delectus sunt doloribus quae.','Mrs. Letitia Collins III',4957919195104,'https://placeit/200x300',18,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(100,1,1,2,'8842688','Sint nulla ab praesentium blanditiis aliquam est.','Antonio Frami',3720174297217,'https://placeit/200x300',23,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(101,1,1,2,'7309912','Suscipit est qui ut voluptatem.','Margaret Jacobi',5284957359465,'https://placeit/200x300',22,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(102,1,1,3,'4858963','Qui qui ad asperiores est.','Prof. Eugenia Dickinson',1870626545488,'https://placeit/200x300',12,'2026-03-01 10:55:06','2026-03-01 10:55:06'),(103,1,1,4,'3568989','In in porro quaerat aut.','Kathlyn Yost',4583657751090,'https://placeit/200x300',7,'2026-03-01 10:55:07','2026-03-01 10:55:07'),(104,1,1,8,'8492357','Inventore natus quam aut quo quo.','Rhoda Brekke',4689126901321,'https://placeit/200x300',25,'2026-03-01 10:55:07','2026-03-01 10:55:07'),(105,1,1,4,'8058911','Deleniti eum labore fugiat sit porro.','Prof. Pearlie Schmidt V',457762339419,'https://placeit/200x300',12,'2026-03-01 10:55:07','2026-03-01 10:55:07'),(106,1,1,4,'1857296','Illum nemo eius asperiores laboriosam porro ullam.','Danyka Bruen PhD',4730662303633,'https://placeit/200x300',12,'2026-03-01 10:55:07','2026-03-01 10:55:07'),(107,1,1,1,'7469145','Nam et aut fugiat aut non voluptate.','Jackeline Hilpert',1498064138583,'https://placeit/200x300',14,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(108,1,1,2,'6186790','Placeat odit suscipit sint.','Tina Bradtke',5648937200831,'https://placeit/200x300',11,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(109,1,1,1,'7918914','Laboriosam perspiciatis asperiores aut iure.','Jennie D\'Amore Sr.',8810021029285,'https://placeit/200x300',23,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(110,1,1,3,'8097699','Reiciendis dicta adipisci suscipit.','Mr. Jabari Schinner',13179894844,'https://placeit/200x300',25,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(111,1,1,1,'7717946','Repellendus dicta excepturi dolorem maiores.','Prof. Carlie Heidenreich',3876278847695,'https://placeit/200x300',13,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(112,1,1,6,'7543854','Hic omnis unde eaque.','Ned Satterfield',6753441784230,'https://placeit/200x300',14,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(113,1,1,9,'2877173','Sit aspernatur sit excepturi tenetur sapiente.','Prof. Jeff Stracke II',5595414724352,'https://placeit/200x300',14,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(114,1,1,5,'5544223','Et aut quasi nihil.','Garth Schowalter',5969090045900,'https://placeit/200x300',25,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(115,1,1,5,'7991076','Maiores aut cumque illum nihil.','Lucienne Wiegand',3081671310411,'https://placeit/200x300',9,'2026-03-01 10:55:08','2026-03-01 10:55:08'),(116,1,1,3,'5938716','Facere quasi voluptates in.','Herminio Pacocha',5924974779364,'https://placeit/200x300',24,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(117,1,1,8,'4446394','Ullam molestiae nesciunt dignissimos consequatur doloribus autem.','Kevin Willms Sr.',6553946870564,'https://placeit/200x300',17,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(118,1,1,3,'7651069','Molestias fugiat fuga maxime.','Forest Mayert',225626233704,'https://placeit/200x300',18,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(119,1,1,5,'3992021','Cumque aut et dolor repellat.','Karen Hamill Jr.',3485265116449,'https://placeit/200x300',13,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(120,1,1,6,'3387553','Quia aliquam aperiam ut quos aut omnis eos.','Kennedy Howe',6003970814602,'https://placeit/200x300',16,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(121,1,1,10,'3811647','Et corporis quo facilis commodi aperiam et.','Lindsay Sawayn',4167553187322,'https://placeit/200x300',22,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(122,1,1,3,'3040949','Ut est praesentium ullam itaque voluptatem laudantium.','Sim Halvorson',701171695766,'https://placeit/200x300',22,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(123,1,1,3,'3219434','Quisquam est voluptatem explicabo blanditiis esse.','Delmer Walsh',6331569116043,'https://placeit/200x300',6,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(124,1,1,3,'8859085','Doloremque consequatur et asperiores porro.','Prof. Jamil Moore',9553265294086,'https://placeit/200x300',24,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(125,1,1,9,'3242266','Deserunt soluta qui asperiores aut ex est.','Lewis Reinger',9713991155475,'https://placeit/200x300',25,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(126,1,1,10,'8222677','Ut voluptatibus expedita nesciunt.','Rhett Hudson',3457475839562,'https://placeit/200x300',21,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(127,1,1,10,'4511594','Sed non sed nesciunt blanditiis omnis.','Graham Skiles',1803698342693,'https://placeit/200x300',15,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(128,1,1,7,'5861102','Optio earum et non porro consequatur.','Rollin Durgan',2572132781020,'https://placeit/200x300',16,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(129,1,1,10,'8465265','Omnis eos consequatur sit eaque mollitia.','Prof. Sage Cartwright',6918628225955,'https://placeit/200x300',23,'2026-03-01 10:55:09','2026-03-01 10:55:09'),(130,1,1,10,'4141398','Veniam exercitationem commodi mollitia velit libero nemo.','Prof. Horace Cruickshank',2476609176367,'https://placeit/200x300',16,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(131,1,1,1,'7319280','Aut explicabo dicta omnis harum labore.','Mrs. Tess Roberts',847570345304,'https://placeit/200x300',24,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(132,1,1,7,'1539710','Laudantium nostrum rerum id aut enim ipsum.','Alta Sanford',8374078551460,'https://placeit/200x300',10,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(133,1,1,4,'3208935','Accusantium aut odit sunt.','Prof. Charlie Beer',9523629426101,'https://placeit/200x300',7,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(134,1,1,5,'7271594','Laudantium ut ut quia sed in totam.','Mr. Lenny Beatty PhD',8205695144141,'https://placeit/200x300',17,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(135,1,1,1,'1416873','Iure perferendis voluptatum assumenda.','Ms. Asha Douglas V',5489265753640,'https://placeit/200x300',17,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(136,1,1,8,'4667668','Fuga sint excepturi eaque quam non facilis.','Lillian Collins',5544132977915,'https://placeit/200x300',20,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(137,1,1,1,'7594522','Dolor ipsam deleniti a excepturi quo voluptatem.','Kristian Roberts',9722156301527,'https://placeit/200x300',15,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(138,1,1,3,'1753600','Ut ipsam velit aspernatur.','Tiana Wiegand',5165820828120,'https://placeit/200x300',15,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(139,1,1,4,'7513928','Quis repudiandae ut quia sunt voluptate temporibus.','Mylene Ward',3002338509184,'https://placeit/200x300',19,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(140,1,1,5,'8398658','Quis beatae laboriosam est itaque aperiam.','Prof. Freeman Hessel MD',6677657499651,'https://placeit/200x300',24,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(141,1,1,2,'2199823','Rerum consequatur in et placeat aut.','Rae Satterfield',3231492923370,'https://placeit/200x300',6,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(142,1,1,3,'7453727','Et sit aut fuga.','Kylie Blanda',5646339262884,'https://placeit/200x300',14,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(143,1,1,8,'7412402','Et non ut rerum sit aperiam voluptates.','Prof. Chadrick Hyatt',2304082938472,'https://placeit/200x300',5,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(144,1,1,1,'6462237','Voluptas sed corrupti et iste tenetur.','Randy Donnelly',4604087899173,'https://placeit/200x300',11,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(145,1,1,3,'4987519','Quibusdam corrupti eligendi distinctio iusto.','Mr. Preston Lockman',3479920433606,'https://placeit/200x300',6,'2026-03-01 10:55:10','2026-03-01 10:55:10'),(146,1,1,7,'3971550','Beatae voluptatem vero esse.','Dr. Josiane Nienow DVM',4655967564889,'https://placeit/200x300',23,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(147,1,1,3,'4783383','Voluptatem alias fuga tempore est.','Crawford Lang',7129508222387,'https://placeit/200x300',8,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(148,1,1,7,'3497970','Odit ducimus non cum ducimus.','Jermaine Miller',687032821256,'https://placeit/200x300',21,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(149,1,1,5,'4637549','Minus eaque voluptatum et.','Savanah Waelchi MD',3085215578985,'https://placeit/200x300',13,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(150,1,1,4,'8312648','Qui exercitationem repellendus laborum vitae quis.','Jammie Bashirian MD',8350258219665,'https://placeit/200x300',20,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(151,1,1,2,'4280522','Omnis vero commodi ab illo quam ut aperiam.','Mr. Deron Leffler',6267496811129,'https://placeit/200x300',17,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(152,1,1,10,'7389661','Ipsa quidem iure occaecati vero voluptas animi.','Torrance Ratke',7391330760744,'https://placeit/200x300',19,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(153,1,1,3,'1118745','Fuga vel blanditiis quaerat illum et sunt.','Charity Williamson',5626875105098,'https://placeit/200x300',9,'2026-03-01 10:55:11','2026-03-01 10:55:11'),(154,1,1,6,'1361496','Maxime molestiae et porro sunt voluptatibus.','Nadia Baumbach',4298023211725,'https://placeit/200x300',7,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(155,1,1,5,'7226076','Excepturi distinctio consequatur veritatis ducimus.','Bo Mraz',3145260016709,'https://placeit/200x300',23,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(156,1,1,4,'2410084','Ullam placeat rerum delectus consequatur maiores et.','Prof. Ophelia Braun',3848230896607,'https://placeit/200x300',10,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(157,1,1,9,'4260019','Qui et quos sit deleniti.','Alexandria Rogahn',1852930657538,'https://placeit/200x300',5,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(158,1,1,5,'2250769','Animi tempore vitae quia eligendi.','Yasmine Purdy',1727563844948,'https://placeit/200x300',17,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(159,1,1,3,'5708222','Perferendis et consequatur natus ea possimus.','Aylin Walsh',2711450778040,'https://placeit/200x300',16,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(160,1,1,6,'3862439','Officia beatae omnis maiores ut aut.','Aiyana Lueilwitz',6494016205001,'https://placeit/200x300',22,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(161,1,1,8,'4681354','Perspiciatis provident qui aperiam.','Rosalyn Orn',371704915465,'https://placeit/200x300',25,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(162,1,1,9,'3017607','Similique officiis corrupti rerum ullam.','Brooks O\'Keefe',4708431099643,'https://placeit/200x300',15,'2026-03-01 10:55:12','2026-03-01 10:55:12'),(163,1,1,2,'5468413','Excepturi aut consequatur alias aperiam magnam.','Wyman Luettgen',4696164379388,'https://placeit/200x300',14,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(164,1,1,5,'8217372','Qui nihil alias velit ex.','Bartholome Toy',1517724735518,'https://placeit/200x300',11,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(165,1,1,5,'4024180','Necessitatibus omnis adipisci quia repellat alias et.','Katheryn Welch',2164745063947,'https://placeit/200x300',7,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(166,1,1,4,'1298375','Ea ut est placeat nobis.','Remington Jones',8964089316679,'https://placeit/200x300',22,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(167,1,1,4,'3826473','Natus eveniet sed sed.','Helga Schoen',8826779700321,'https://placeit/200x300',20,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(168,1,1,4,'6636398','Excepturi hic magnam nam.','Mr. Joaquin Cummerata Sr.',5316178765753,'https://placeit/200x300',22,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(169,1,1,3,'6774991','Natus tempore harum sed.','Naomi Heidenreich',7572183182741,'https://placeit/200x300',14,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(170,1,1,1,'7811051','Enim sit magni aut minus.','Hazle Botsford',5111366204249,'https://placeit/200x300',24,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(171,1,1,4,'8299910','Quidem fuga labore aspernatur.','Providenci Gerlach',7838278975385,'https://placeit/200x300',11,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(172,1,1,6,'3781841','Quibusdam molestiae quidem atque consectetur dicta.','Geraldine Koch II',6754116050438,'https://placeit/200x300',9,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(173,1,1,7,'6026239','Et quis aut ut quas eos.','Mr. Bertha Kassulke I',4673517874998,'https://placeit/200x300',5,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(174,1,1,4,'7987217','Dolores fuga temporibus ipsum sed velit expedita.','Milford Dietrich',3472717391462,'https://placeit/200x300',24,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(175,1,1,8,'6220622','Quas nihil aperiam distinctio.','Rasheed Kris',5175379587959,'https://placeit/200x300',13,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(176,1,1,2,'8704302','Rerum magni dolorem cum corporis.','Meagan Collier DDS',9012912029278,'https://placeit/200x300',7,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(177,1,1,1,'6656280','Delectus deleniti accusamus molestias.','Mckenna Corkery PhD',5204450843223,'https://placeit/200x300',19,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(178,1,1,6,'6556891','Culpa mollitia eum qui ducimus.','Myrtle Fadel',2293392819291,'https://placeit/200x300',25,'2026-03-01 10:55:13','2026-03-01 10:55:13'),(179,1,1,5,'6766871','Vero sit sunt voluptatum odit porro cupiditate.','Leta Schumm',7906195247882,'https://placeit/200x300',7,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(180,1,1,5,'6176874','Quia ullam eius maxime.','Leif Mills',2345053469045,'https://placeit/200x300',17,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(181,1,1,9,'1771191','Incidunt est et sit architecto eos corrupti.','Bobbie Braun',5919038035364,'https://placeit/200x300',6,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(182,1,1,8,'8870522','Qui distinctio quasi nihil ad.','Heaven Hill',2263765564738,'https://placeit/200x300',15,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(183,1,1,3,'6667305','Consequatur et rerum quia ut.','Melisa Ratke',1817035560282,'https://placeit/200x300',8,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(184,1,1,1,'6510879','Porro autem reprehenderit cumque voluptatem.','Ebony Hackett',6593528621412,'https://placeit/200x300',14,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(185,1,1,7,'8732092','Occaecati voluptates corporis qui eligendi error hic.','Prof. Rowland Bahringer',4342697576731,'https://placeit/200x300',20,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(186,1,1,1,'2823924','Neque animi et ex dolor qui laborum.','Zelma Strosin',9708604232025,'https://placeit/200x300',13,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(187,1,1,10,'6018090','Eum et cum iusto.','Weldon Schmitt',3872974570103,'https://placeit/200x300',18,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(188,1,1,9,'2595223','Repellendus et velit consequatur ipsum.','Blanche Wunsch',1995612778111,'https://placeit/200x300',21,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(189,1,1,10,'3009577','Necessitatibus occaecati et non.','Dr. Jonatan Schneider Jr.',4158452119361,'https://placeit/200x300',11,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(190,1,1,7,'1393283','Eveniet consequuntur dicta magnam facilis.','Wilfrid Glover',8289232403885,'https://placeit/200x300',22,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(191,1,1,4,'4425719','Et architecto doloremque eligendi voluptatem quaerat expedita.','Dr. Geovanni Ferry PhD',7033688316821,'https://placeit/200x300',7,'2026-03-01 10:55:14','2026-03-01 10:55:14'),(192,1,1,4,'3928694','Eum id rerum culpa quas voluptas.','Prof. Herminia Ziemann',710479075811,'https://placeit/200x300',13,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(193,1,1,8,'2914259','Iste alias non veniam aut.','Tia Stracke',9962908647507,'https://placeit/200x300',11,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(194,1,1,7,'8104530','Veniam corporis ut quo laborum id accusamus.','Fredy Smith',7825042883267,'https://placeit/200x300',17,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(195,1,1,10,'7440236','Quae et quia sunt.','Mr. Bartholome Raynor PhD',3007763944371,'https://placeit/200x300',12,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(196,1,1,8,'8869436','Aut quia aut sequi omnis.','Issac Haag',9213979473466,'https://placeit/200x300',8,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(197,1,1,6,'3364609','Nam omnis animi dolor eum eligendi.','Maxie Upton',34366687117,'https://placeit/200x300',24,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(198,1,1,5,'4412623','Repudiandae delectus aspernatur illum.','Dr. Toni Parisian',8231088504582,'https://placeit/200x300',13,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(199,1,1,1,'4976911','In veritatis aut molestiae ducimus.','Dax Veum',4066783157450,'https://placeit/200x300',16,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(200,1,1,7,'2569021','Dolorem exercitationem excepturi vero sed placeat.','Lucinda Hegmann II',7512497169717,'https://placeit/200x300',12,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(201,1,1,6,'5446373','Vel et aliquid id qui maiores pariatur.','Miss Meredith Shields',2380960220808,'https://placeit/200x300',24,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(202,1,1,7,'2742025','Sint accusamus quia sint illum.','Sincere Gleason',6900699747283,'https://placeit/200x300',8,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(203,1,1,8,'5906749','Unde illum dignissimos quia cum.','Mrs. Lilyan Bauch PhD',1651121353545,'https://placeit/200x300',11,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(204,1,1,10,'3721281','Voluptas aut esse voluptatem.','Mara Lesch',3106626904467,'https://placeit/200x300',21,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(205,1,1,1,'8750749','Provident ea voluptatem vel quis odio.','Cory Larkin',9260410177728,'https://placeit/200x300',19,'2026-03-01 10:55:15','2026-03-01 10:55:15'),(206,1,1,6,'2280958','Impedit deleniti voluptatem error odit tenetur minus.','Carlee Mraz',7855510368859,'https://placeit/200x300',15,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(207,1,1,2,'8779135','Facere veniam quia perspiciatis atque ullam.','Mr. Wilford Muller MD',6011078122154,'https://placeit/200x300',17,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(208,1,1,6,'2295281','Ex ea quidem officia iure.','Prof. Glennie VonRueden',5762578998503,'https://placeit/200x300',11,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(209,1,1,1,'3334091','Explicabo inventore saepe quia corrupti eaque.','Cleta Eichmann',4871141509884,'https://placeit/200x300',13,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(210,1,1,1,'3761562','Eum suscipit ut nostrum nostrum consectetur.','Samson Dare',3257963633944,'https://placeit/200x300',18,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(211,1,1,3,'4446931','Aut magnam blanditiis voluptates est aut pariatur.','Dr. Layne Feil',9811334259955,'https://placeit/200x300',24,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(212,1,1,10,'3758818','Vero voluptate ea sint rerum ut rerum.','Dr. Lauriane Kuhic',3666211640274,'https://placeit/200x300',16,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(213,1,1,2,'5763068','Dolores sunt harum porro aperiam deleniti rerum.','Mellie Kunze',2309647108536,'https://placeit/200x300',13,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(214,1,1,9,'6858567','Voluptas dolor dolore ut hic dolorem.','Kristofer Jerde Sr.',4065306361961,'https://placeit/200x300',12,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(215,1,1,2,'7657190','Repellendus et ut est.','Justyn D\'Amore',213410100509,'https://placeit/200x300',18,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(216,1,1,4,'8428618','Voluptatem fuga similique sit eaque pariatur necessitatibus.','Maud Reichert',6553867264022,'https://placeit/200x300',6,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(217,1,1,4,'5718282','Architecto sed ea nam debitis voluptatem voluptas.','Adaline Abernathy III',7553893456926,'https://placeit/200x300',8,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(218,1,1,8,'1814817','Incidunt autem quis cumque consequuntur eum nemo.','Breanne Jacobi IV',5708328118043,'https://placeit/200x300',16,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(219,1,1,2,'3134149','Molestias nemo corrupti iure recusandae ut aut.','Felipa Beahan',728429147396,'https://placeit/200x300',8,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(220,1,1,8,'8474646','Impedit et suscipit quas nihil tenetur perspiciatis.','Miss Leilani Kub',2053604802066,'https://placeit/200x300',25,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(221,1,1,5,'3961324','Quis assumenda quidem recusandae voluptas sint numquam.','Abigayle Stark',7928101700380,'https://placeit/200x300',22,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(222,1,1,7,'1961055','Deleniti cum accusantium ipsam sed omnis.','Katelyn Lubowitz',6665855551745,'https://placeit/200x300',11,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(223,1,1,1,'7691495','Magni beatae aperiam minima.','Jean Shanahan',913887444860,'https://placeit/200x300',25,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(224,1,1,3,'2408265','Sunt repudiandae eum alias sequi ducimus autem.','Sammy Block PhD',4472422750003,'https://placeit/200x300',8,'2026-03-01 10:55:16','2026-03-01 10:55:16'),(225,1,1,3,'5821286','Repudiandae maxime assumenda beatae accusamus odio iste.','Ms. Frida Koch',5789895731415,'https://placeit/200x300',9,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(226,1,1,2,'2475032','Nihil recusandae vero sunt velit quaerat saepe.','Mrs. Christelle Bayer',4607211004542,'https://placeit/200x300',15,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(227,1,1,4,'1203587','Enim earum et laboriosam architecto ut.','Bridie Baumbach',1979604878348,'https://placeit/200x300',24,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(228,1,1,8,'1676901','Hic magni dolor tenetur recusandae.','Prof. Marcellus Kirlin',1788562913486,'https://placeit/200x300',16,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(229,1,1,7,'5054788','In aut dicta facere mollitia.','Rene Barton',993766767877,'https://placeit/200x300',7,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(230,1,1,8,'7717071','Maiores voluptas nam excepturi.','Dale Thiel',502683301172,'https://placeit/200x300',16,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(231,1,1,6,'7539740','Et ut autem nihil est.','Therese Christiansen',1219421775629,'https://placeit/200x300',17,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(232,1,1,2,'7340904','Vero alias unde id.','Aurore Pfeffer',5470348817977,'https://placeit/200x300',20,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(233,1,1,9,'7438499','Asperiores dolor minima dolor dolorem vel.','Austyn Schoen',6292990330586,'https://placeit/200x300',11,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(234,1,1,2,'7008887','Laborum unde eveniet dignissimos accusantium ut laborum.','Jamey Altenwerth',338868933391,'https://placeit/200x300',17,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(235,1,1,9,'1213531','Et enim ex ducimus non.','Mr. Leonardo Torp',9529623841186,'https://placeit/200x300',12,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(236,1,1,7,'8600809','Ut qui magnam deserunt explicabo qui nisi.','Alfredo Konopelski DDS',2550323319092,'https://placeit/200x300',13,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(237,1,1,7,'5209774','Consequuntur qui consectetur soluta dicta et molestiae.','Madyson Gerlach',1744613657402,'https://placeit/200x300',19,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(238,1,1,7,'7674586','Saepe iure nobis et.','Antonina Zulauf',6903296196751,'https://placeit/200x300',8,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(239,1,1,3,'8399389','Maxime tempore natus repellendus asperiores.','Darrell Shanahan',5960007255436,'https://placeit/200x300',14,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(240,1,1,6,'6483414','Delectus vel voluptate molestiae animi temporibus.','Aiden Pfeffer',9166594205700,'https://placeit/200x300',9,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(241,1,1,10,'8133876','Ad recusandae quia corrupti.','Mr. Bernhard Rau',4274504533456,'https://placeit/200x300',8,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(242,1,1,1,'4385069','Nemo voluptatem amet est.','Ms. Janiya Langworth',8448297430209,'https://placeit/200x300',8,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(243,1,1,1,'6552275','Iusto ut aut quis facilis ratione.','Ernest Marks',7538046774874,'https://placeit/200x300',21,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(244,1,1,2,'3550415','Numquam ut fugit fugit qui voluptatem esse.','Gregoria Dietrich',2642563477424,'https://placeit/200x300',15,'2026-03-01 10:55:17','2026-03-01 10:55:17'),(245,1,1,10,'8124900','Rerum maxime dolores sed quasi.','Keanu Littel Jr.',2842762209424,'https://placeit/200x300',14,'2026-03-01 10:55:18','2026-03-01 10:55:18'),(246,1,1,4,'6156916','Enim eveniet unde quia officiis.','William McClure II',9550533173005,'https://placeit/200x300',20,'2026-03-01 10:55:18','2026-03-01 10:55:18'),(247,1,1,4,'2662082','Ut possimus voluptates qui est quo.','Celine Beahan',5935435900777,'https://placeit/200x300',17,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(248,1,1,9,'2128495','Cum aut tempora eum.','Marielle Wyman',9675262665734,'https://placeit/200x300',16,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(249,1,1,7,'4421299','Quo dolor et nisi aut iusto quo.','King Keebler',291317035490,'https://placeit/200x300',20,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(250,1,1,1,'7292502','Aut eligendi sed dolores.','Leonardo Kuphal Jr.',5225100574687,'https://placeit/200x300',10,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(251,1,1,1,'5723412','Nobis soluta ut laboriosam debitis.','Dr. Joaquin Jenkins II',5262819658772,'https://placeit/200x300',25,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(252,1,1,1,'6238606','Laboriosam voluptatem consequuntur ducimus quae non id.','Prof. Zechariah Abernathy PhD',8249279634376,'https://placeit/200x300',23,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(253,1,1,7,'1353542','Tempora voluptas sequi non aut consectetur enim.','Dr. Haven Terry II',7135841472136,'https://placeit/200x300',23,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(254,1,1,3,'8517244','Error nesciunt sed eveniet necessitatibus laborum.','Mr. Craig Walker DVM',4487999011686,'https://placeit/200x300',12,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(255,1,1,10,'2368343','Qui maiores minus soluta quidem aliquid dolorum.','Mrs. Teagan Schumm Jr.',5501304106719,'https://placeit/200x300',6,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(256,1,1,8,'3266410','Hic recusandae tempora omnis aliquid tenetur.','Lazaro Hand',8184754568640,'https://placeit/200x300',10,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(257,1,1,7,'5008029','Est ut adipisci libero quaerat qui.','Prof. Amiya Kihn II',8635528012147,'https://placeit/200x300',22,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(258,1,1,8,'3615061','Velit quia et totam et.','Mrs. Valentine Lind Sr.',7995623050804,'https://placeit/200x300',7,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(259,1,1,8,'1867030','Dolore accusamus explicabo magnam sit accusantium aliquid.','Daryl Schimmel',4966657824061,'https://placeit/200x300',16,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(260,1,1,8,'3429309','Sit sit explicabo qui reiciendis ullam.','Lisa Hane',1376604164561,'https://placeit/200x300',18,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(261,1,1,6,'2042512','Est voluptatum asperiores fugiat iure eius minus.','Mireille Durgan',7151451797896,'https://placeit/200x300',19,'2026-03-01 10:55:19','2026-03-01 10:55:19'),(262,1,1,5,'8593352','Cum similique accusantium assumenda eveniet magnam repellat.','Mr. Emiliano Kilback II',2246191923423,'https://placeit/200x300',10,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(263,1,1,6,'3482115','Quisquam laudantium et qui.','Hettie Hackett',8763055187271,'https://placeit/200x300',13,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(264,1,1,8,'6765134','Omnis dolor sunt doloremque.','Prof. Constantin Wisozk',4980474423788,'https://placeit/200x300',12,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(265,1,1,8,'5750728','Voluptatem distinctio nobis aut est.','Jalon Bahringer',5465531711941,'https://placeit/200x300',18,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(266,1,1,6,'2576729','Aut minima earum quia aut.','Tomas Wyman',3739579547056,'https://placeit/200x300',11,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(267,1,1,6,'3475038','Perspiciatis autem saepe rerum.','Ally Nicolas',1548637599966,'https://placeit/200x300',20,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(268,1,1,2,'2746495','Tempore ad aut modi quae rem.','Halie Lebsack IV',8017726647046,'https://placeit/200x300',24,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(269,1,1,2,'8250421','Fuga sed pariatur et quae.','Karlee Jerde',5221982681178,'https://placeit/200x300',11,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(270,1,1,2,'3756639','Dolores sed omnis illo accusamus voluptas veritatis et.','Laura Rempel',8853699768643,'https://placeit/200x300',14,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(271,1,1,4,'8379237','Adipisci architecto autem exercitationem id.','Missouri Gottlieb',275001605060,'https://placeit/200x300',14,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(272,1,1,8,'7220754','Beatae tempora eum explicabo nobis.','Damian Ledner',257091295734,'https://placeit/200x300',19,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(273,1,1,9,'3719963','Suscipit nisi temporibus libero sapiente.','Mr. Edmond Cormier II',8959719487102,'https://placeit/200x300',16,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(274,1,1,9,'8092438','Dolor et eligendi qui iure vel aperiam.','Mrs. Marcelle Hauck',9298045419838,'https://placeit/200x300',12,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(275,1,1,2,'8243254','Facere in natus qui saepe.','Opal Cruickshank I',5354525736834,'https://placeit/200x300',25,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(276,1,1,8,'5276421','Id atque molestiae odio dolores sit.','Yoshiko Bernhard',5467626620138,'https://placeit/200x300',20,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(277,1,1,1,'3617499','Quisquam non earum id.','Dr. Garnett Beer',2665782379324,'https://placeit/200x300',10,'2026-03-01 10:55:20','2026-03-01 10:55:20'),(278,1,1,9,'8120273','Facilis iusto dignissimos quibusdam dolores voluptas.','Lora Harris',2191232804684,'https://placeit/200x300',8,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(279,1,1,7,'3750605','Minus temporibus fuga ratione maxime.','Marc Schuster',5738385965274,'https://placeit/200x300',8,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(280,1,1,9,'7610756','Sed aut sed iste voluptatem et similique perferendis.','Prof. Elisa Thompson V',2561041110984,'https://placeit/200x300',20,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(281,1,1,10,'5927156','Tempora dolorum totam corporis praesentium unde saepe.','Prof. Estelle Stamm',7325243393423,'https://placeit/200x300',7,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(282,1,1,9,'6615891','Nemo impedit quia ut ut molestiae sunt.','Madisen Langosh PhD',9286418872014,'https://placeit/200x300',8,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(283,1,1,3,'7833227','Quas et rem tenetur.','Domenica Schneider',192418130186,'https://placeit/200x300',22,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(284,1,1,6,'7309606','Qui odit ad dignissimos provident.','Mr. Hershel Mann',7620420110306,'https://placeit/200x300',19,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(285,1,1,4,'2989676','Fuga velit magni explicabo iure.','Jazmyne Oberbrunner',8665808360163,'https://placeit/200x300',17,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(286,1,1,6,'6525237','Id sequi et iure quaerat modi error.','Dr. Abigayle Borer',6638440653001,'https://placeit/200x300',6,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(287,1,1,7,'1279352','Sunt recusandae dolor quod.','Dane Casper',2190514558512,'https://placeit/200x300',11,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(288,1,1,10,'6730697','Omnis voluptatem illum inventore tempore inventore.','Dominic Gottlieb',1039023618212,'https://placeit/200x300',8,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(289,1,1,9,'6259106','Tenetur consequatur corrupti quaerat quia officia architecto.','Alice Spinka',5358792494398,'https://placeit/200x300',18,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(290,1,1,8,'8759598','Aut autem fugit consequatur voluptate.','Cletus Lubowitz',2537805759485,'https://placeit/200x300',12,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(291,1,1,7,'8813777','Eaque vel quia distinctio ut nihil.','Kathryn Batz',7476702621011,'https://placeit/200x300',19,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(292,1,1,8,'7443087','Quod eligendi debitis laudantium blanditiis.','Blanche Lehner',6128170325069,'https://placeit/200x300',14,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(293,1,1,9,'1548653','Et cupiditate excepturi praesentium.','Dr. Clifton Jaskolski PhD',7839861440754,'https://placeit/200x300',18,'2026-03-01 10:55:21','2026-03-01 10:55:21'),(294,1,1,9,'5286075','Consequatur autem quasi et.','Dr. Nicola Weimann I',1005255790873,'https://placeit/200x300',12,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(295,1,1,10,'1133082','Aut assumenda quia et soluta laborum.','Bernita Lakin',5415017860410,'https://placeit/200x300',25,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(296,1,1,5,'4224215','Accusantium reiciendis rem voluptas ducimus rerum esse.','Lizeth Kiehn',1049843375004,'https://placeit/200x300',6,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(297,1,1,2,'2124329','Et consequuntur rerum eligendi pariatur.','Mrs. Dina Jacobi IV',1138936170180,'https://placeit/200x300',14,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(298,1,1,10,'5094942','Non id earum itaque.','Janiya Lesch',699857637363,'https://placeit/200x300',5,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(299,1,1,8,'5191696','Aliquid in dolore placeat quae odit adipisci.','Prof. Lacey Koepp',4418005195991,'https://placeit/200x300',20,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(300,1,1,3,'5180663','Voluptatum et expedita accusantium.','Prof. Braden Toy',5422782382450,'https://placeit/200x300',23,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(301,1,1,9,'1905725','Distinctio soluta dolorem accusamus qui consequatur.','Ray Tromp',4359562334068,'https://placeit/200x300',7,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(302,1,1,1,'8809964','Facere voluptates omnis dicta quas vitae consequatur.','Ryder Emmerich',5038120242791,'https://placeit/200x300',5,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(303,1,1,1,'5945788','Quia impedit aut ipsam.','Clara Champlin',3403029107519,'https://placeit/200x300',12,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(304,1,1,6,'2855920','Sunt aut laudantium optio id veritatis.','Miss Rita Runolfsson IV',8313489489542,'https://placeit/200x300',23,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(305,1,1,9,'8258616','Blanditiis sequi aut veniam consequatur blanditiis accusamus.','Prof. Fleta Rippin',7810528875409,'https://placeit/200x300',12,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(306,1,1,9,'2303035','Animi ut libero dignissimos.','Dr. Austyn Bruen',4665126227302,'https://placeit/200x300',25,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(307,1,1,2,'8469081','Beatae incidunt aperiam quo consectetur.','Kasandra Rosenbaum',8411312667768,'https://placeit/200x300',19,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(308,1,1,5,'5916030','Optio quae dolor aut.','Merritt Funk',2648797640955,'https://placeit/200x300',24,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(309,1,1,10,'7869247','Sit eos voluptas eligendi.','Prof. Everardo Lemke',2529708086737,'https://placeit/200x300',10,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(310,1,1,6,'2349256','Molestiae rerum corrupti quaerat expedita est.','Octavia Reichel I',96985758074,'https://placeit/200x300',16,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(311,1,1,5,'6337451','Omnis ab facere aliquam cupiditate labore molestiae.','Tod Altenwerth',7007093348012,'https://placeit/200x300',22,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(312,1,1,6,'2147817','Optio voluptas mollitia quaerat.','Destin Witting III',2533882637586,'https://placeit/200x300',13,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(313,1,1,1,'2958542','Non dolorem impedit dolore nam impedit debitis.','Dr. Harmony Dibbert',5905066105391,'https://placeit/200x300',15,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(314,1,1,1,'6694160','Quis repellat aut sunt corrupti saepe amet.','Ms. Melody Kuhic',8673406916651,'https://placeit/200x300',17,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(315,1,1,2,'3588694','Quam commodi dolore repellendus nihil voluptatem.','Rico Harris II',3416063569489,'https://placeit/200x300',14,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(316,1,1,10,'8458922','Incidunt aut labore reprehenderit laudantium sint.','Cynthia Cartwright',5335869631252,'https://placeit/200x300',18,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(317,1,1,8,'7811442','Laboriosam dolorem illo porro.','Garry Weimann',1248587334326,'https://placeit/200x300',18,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(318,1,1,2,'1767794','Quibusdam ut ut eveniet molestiae.','Daphne Feil III',7220050672641,'https://placeit/200x300',12,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(319,1,1,3,'7721679','Quis doloremque quos accusantium.','Jazlyn Streich',7079661289072,'https://placeit/200x300',16,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(320,1,1,9,'3595495','Quibusdam dolorem sapiente qui eos.','Mya West',4678859096077,'https://placeit/200x300',22,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(321,1,1,7,'3878754','Quia eveniet voluptatem esse sunt eos earum est.','Marquis Lesch',9638013821650,'https://placeit/200x300',20,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(322,1,1,2,'7029310','In unde odio enim minus dolores.','Timmothy Bogan',9967587927865,'https://placeit/200x300',17,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(323,1,1,10,'6842075','Dolores molestiae et et numquam ab accusamus.','Gianni Armstrong',8319019928727,'https://placeit/200x300',21,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(324,1,1,1,'2356073','Reprehenderit nihil quaerat reprehenderit deleniti.','Miss Karina Dietrich',6359996451711,'https://placeit/200x300',25,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(325,1,1,1,'2461353','Enim quis nisi expedita.','Ms. Pearlie Willms',396193022586,'https://placeit/200x300',12,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(326,1,1,1,'5109483','Ea earum nobis nulla quis.','Kimberly Moore',7375627601811,'https://placeit/200x300',10,'2026-03-01 10:55:22','2026-03-01 10:55:22'),(327,1,1,4,'6330414','Qui laudantium repellendus ipsam qui quaerat non id.','Marc Nikolaus DVM',8222768185740,'https://placeit/200x300',25,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(328,1,1,6,'6217304','Qui vitae officiis sed eveniet suscipit atque.','Eda Beier',8364595911854,'https://placeit/200x300',6,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(329,1,1,1,'4043233','Unde eligendi quas quae fugit optio ut.','Marlee Walsh',6903720716050,'https://placeit/200x300',7,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(330,1,1,2,'4677839','Debitis quisquam distinctio assumenda doloribus perspiciatis est.','Prof. Federico Goldner',2122561917530,'https://placeit/200x300',9,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(331,1,1,7,'8232179','Quod amet dolore consequatur enim est minus.','Frank Marvin',9635594767612,'https://placeit/200x300',19,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(332,1,1,5,'4454440','Iure eum nam ut est unde et.','Jaylin Koelpin III',9112462654200,'https://placeit/200x300',16,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(333,1,1,1,'5449987','Ut sed aut unde laboriosam.','Joseph Sporer',6642930206905,'https://placeit/200x300',7,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(334,1,1,9,'3987427','Voluptas error doloremque alias dolores.','Ottis Morar',2526258437453,'https://placeit/200x300',6,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(335,1,1,6,'7747565','Debitis omnis maxime provident facere non rerum.','Alexa Corkery',7769623354619,'https://placeit/200x300',16,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(336,1,1,1,'6941499','Facilis et eius qui.','Theresa Friesen',389540368833,'https://placeit/200x300',7,'2026-03-01 10:55:23','2026-03-01 10:55:23'),(337,1,1,6,'5689965','Officiis vitae itaque placeat.','Ronny Howell',8557379730974,'https://placeit/200x300',25,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(338,1,1,8,'2934803','Omnis aut sit possimus qui optio quod.','Aisha Runolfsdottir',7801109437147,'https://placeit/200x300',19,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(339,1,1,8,'1840147','Odio laudantium deserunt dolore.','Kitty Herzog',6716803937972,'https://placeit/200x300',11,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(340,1,1,6,'7446959','Quasi odio nam eum iusto sunt.','Katarina Harber',9133602482293,'https://placeit/200x300',16,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(341,1,1,5,'6432732','Eaque ratione eum doloribus similique.','Shannon Blick',6089147981971,'https://placeit/200x300',24,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(342,1,1,5,'8458366','In libero tempora at omnis.','Carroll Bashirian',2626823150203,'https://placeit/200x300',14,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(343,1,1,8,'5641441','Qui et sapiente voluptatem aut.','Dr. Donny Hettinger Jr.',6612521090664,'https://placeit/200x300',14,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(344,1,1,4,'2183862','Sunt doloremque atque ipsa veniam.','Stuart Torp',2567578975584,'https://placeit/200x300',15,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(345,1,1,10,'1621192','Velit atque aut nihil nobis est.','Mr. Bertrand Wilkinson',971907213582,'https://placeit/200x300',23,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(346,1,1,1,'5063892','Dolor explicabo totam molestias culpa culpa.','Deja Emard',2879665970953,'https://placeit/200x300',11,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(347,1,1,10,'7929664','Aliquid fugit distinctio distinctio asperiores itaque placeat.','Hermina Padberg',1382726382769,'https://placeit/200x300',22,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(348,1,1,10,'8364611','Omnis voluptate cum tempora sunt.','Aubrey Welch',2683885684794,'https://placeit/200x300',8,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(349,1,1,6,'5077358','Rem dolores et aut cumque aut ea.','Thomas Bayer',9607936195322,'https://placeit/200x300',15,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(350,1,1,5,'4322001','Omnis enim quisquam dicta repudiandae sunt.','Miss Aida Bosco',2592289338700,'https://placeit/200x300',19,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(351,1,1,6,'6921395','Earum sed voluptatem officia.','Aylin Langworth',5150466842432,'https://placeit/200x300',25,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(352,1,1,6,'1311130','Autem deserunt dolorem sequi vel nulla.','Mr. Kirk Mosciski DVM',937732155916,'https://placeit/200x300',24,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(353,1,1,3,'5371708','Ullam qui totam possimus ratione vel et.','Prof. Allen Eichmann MD',9417418176578,'https://placeit/200x300',12,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(354,1,1,1,'3861911','Debitis consectetur aut aperiam voluptatum vel sit.','Dr. Tommie Crist III',9938156389889,'https://placeit/200x300',9,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(355,1,1,4,'4369421','Illo architecto amet soluta.','Hadley Rice IV',4129653121897,'https://placeit/200x300',10,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(356,1,1,9,'5392086','Est nostrum ut corrupti eum praesentium.','Prof. Luciano Armstrong DDS',3402850951247,'https://placeit/200x300',13,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(357,1,1,6,'7259934','Maiores odio voluptatem cum.','Kim Haag',180568056166,'https://placeit/200x300',11,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(358,1,1,4,'4121593','Officiis numquam in rerum qui enim consequatur.','Idell Rau',8435998539775,'https://placeit/200x300',24,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(359,1,1,2,'4546325','Sit assumenda eos sit rerum corporis.','Maximus Prosacco',4680271487883,'https://placeit/200x300',22,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(360,1,1,3,'7484927','Omnis non eveniet aut veritatis esse et.','Kiana Runte',1368401257355,'https://placeit/200x300',19,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(361,1,1,8,'6322205','Asperiores exercitationem eligendi velit.','Dr. Mohammad Yundt III',6082215194693,'https://placeit/200x300',11,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(362,1,1,10,'2411767','Dolorem qui qui et nobis.','Miss Nikki Kirlin',5327086933325,'https://placeit/200x300',15,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(363,1,1,9,'6693483','Nostrum quod iusto nostrum iusto ea sequi.','Rahsaan Greenholt',1523939568452,'https://placeit/200x300',19,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(364,1,1,3,'5042067','Ipsum aut maiores quae et.','Ms. Gladyce Haley DVM',1126671611082,'https://placeit/200x300',20,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(365,1,1,1,'4215662','Harum reiciendis libero et atque.','Linnie Bergstrom',8473924850532,'https://placeit/200x300',9,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(366,1,1,5,'1671328','At laudantium nobis neque.','Prof. Mario Wiza DDS',4961595086052,'https://placeit/200x300',15,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(367,1,1,7,'6730366','Id occaecati quidem impedit voluptas voluptatum voluptatem.','Stefanie Bernhard',2426598980070,'https://placeit/200x300',5,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(368,1,1,4,'5403520','Praesentium maxime cupiditate est.','Bert Lemke Sr.',7011930512658,'https://placeit/200x300',14,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(369,1,1,9,'2264222','Quasi repellendus facere odio omnis.','Malachi Davis',6440582905586,'https://placeit/200x300',24,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(370,1,1,8,'6567870','Dolore aut quisquam quo nihil ut.','Ms. Zelda Grant',7041888909873,'https://placeit/200x300',18,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(371,1,1,4,'1496170','Ipsum aliquid quos quia voluptatibus.','Maci Raynor',9087815281405,'https://placeit/200x300',9,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(372,1,1,2,'8194928','Provident eos quia esse totam eos quas.','Luciano Schroeder',3977443180408,'https://placeit/200x300',14,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(373,1,1,1,'8720808','Repudiandae fugiat fugiat nemo dolorem sint.','Rodolfo Dickinson PhD',416416609971,'https://placeit/200x300',22,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(374,1,1,2,'4084567','Adipisci excepturi fugit beatae corrupti consequuntur.','Audra Adams Sr.',5336519145365,'https://placeit/200x300',8,'2026-03-01 10:55:24','2026-03-01 10:55:24'),(375,1,1,1,'7819522','Culpa ea quod voluptatem dolores dolor reiciendis.','Idella Goldner',4562697322361,'https://placeit/200x300',5,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(376,1,1,8,'3549219','Sapiente quod rerum atque enim.','Esta White',2565814287835,'https://placeit/200x300',6,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(377,1,1,5,'2311074','Ipsam enim nesciunt laborum distinctio ex.','Darrick Gibson DDS',45212116835,'https://placeit/200x300',10,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(378,1,1,6,'3144569','Iure recusandae quasi vero aut eum nihil.','Savanah Hartmann',5494534266356,'https://placeit/200x300',15,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(379,1,1,10,'6180495','Maxime qui quaerat et consequuntur voluptas.','Devon Streich',773836206334,'https://placeit/200x300',25,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(380,1,1,5,'8361542','Dolores consequatur sed laboriosam.','Lesley Sawayn DVM',4567944932539,'https://placeit/200x300',13,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(381,1,1,9,'8011638','Ad temporibus laboriosam et omnis.','Amina Ondricka',9522820670771,'https://placeit/200x300',13,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(382,1,1,2,'2124131','Est vel at error alias mollitia.','Jerrold Quitzon III',3343412669913,'https://placeit/200x300',15,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(383,1,1,8,'1189265','Doloremque consectetur nesciunt dolor.','Rubie Huels',2941113009796,'https://placeit/200x300',13,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(384,1,1,7,'2291611','Est adipisci esse molestias est nesciunt minus nostrum.','Dr. Hermina Kohler IV',557044420214,'https://placeit/200x300',21,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(385,1,1,5,'6816264','Minima et facere deserunt tempora aperiam.','Prof. Tad Heathcote III',8789609345126,'https://placeit/200x300',13,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(386,1,1,8,'8605409','Occaecati explicabo ab autem praesentium quia in rem.','Sterling Stokes',9723718164741,'https://placeit/200x300',24,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(387,1,1,9,'1758824','Necessitatibus consequatur eveniet qui eaque odio ut.','Delmer Braun',4789771702912,'https://placeit/200x300',15,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(388,1,1,10,'8513312','Assumenda quod omnis est.','Alvina Tillman',1564564745610,'https://placeit/200x300',8,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(389,1,1,7,'5700241','Tenetur accusantium earum vel cupiditate.','Sylvester Gerlach',1990317422567,'https://placeit/200x300',12,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(390,1,1,2,'3103449','Quia illo beatae nisi voluptatem.','Prof. Triston Heidenreich I',3874229842775,'https://placeit/200x300',19,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(391,1,1,1,'1168625','Unde debitis et distinctio molestiae omnis assumenda.','Louvenia Kshlerin Jr.',8488063821787,'https://placeit/200x300',25,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(392,1,1,6,'1103351','Molestiae voluptatibus omnis corporis explicabo nemo.','Maggie Ward',2485151031642,'https://placeit/200x300',24,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(393,1,1,4,'6195033','Aut est esse ducimus illum.','Mr. Theron Kerluke',8464428399382,'https://placeit/200x300',10,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(394,1,1,10,'4829844','Beatae et sint est voluptas.','Dr. Nils Douglas III',3427561829500,'https://placeit/200x300',17,'2026-03-01 10:55:25','2026-03-01 10:55:25'),(395,1,1,1,'2003572','Quasi sunt vitae dolores iste magnam.','Enid Murray',4438333003409,'https://placeit/200x300',20,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(396,1,1,1,'1682649','Velit aut reprehenderit ut dolore cupiditate est.','Walton Smith',4399811508864,'https://placeit/200x300',24,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(397,1,1,10,'6339237','Aut possimus ab distinctio quos eos voluptas.','Orie Stoltenberg',8169505838555,'https://placeit/200x300',17,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(398,1,1,2,'3402946','Esse beatae error dicta occaecati ex.','Keira Stamm',3102669341207,'https://placeit/200x300',17,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(399,1,1,6,'1323962','Maxime quod eaque perspiciatis.','Barney Quigley',8926280892277,'https://placeit/200x300',22,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(400,1,1,7,'4335552','Neque non ducimus eos eos voluptate est.','Eliseo Wilkinson',9798861043458,'https://placeit/200x300',9,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(401,1,1,7,'8261366','Eius repellat animi deleniti tenetur aliquam.','Kiarra Cruickshank',2415401791064,'https://placeit/200x300',12,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(402,1,1,3,'3501322','Beatae aut quo itaque.','Dean Quitzon',1512737753511,'https://placeit/200x300',9,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(403,1,1,8,'5349475','Enim in optio dignissimos laborum sequi est aut.','Dr. Gabriella Gislason MD',4934575340567,'https://placeit/200x300',13,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(404,1,1,1,'2495968','Assumenda laboriosam suscipit et consequatur quia.','Percy Purdy',1398840185124,'https://placeit/200x300',5,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(405,1,1,1,'1251127','Impedit sint possimus eos excepturi.','Frida Wiegand',293300227233,'https://placeit/200x300',10,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(406,1,1,10,'5502574','Expedita quisquam in corrupti corporis maiores.','Elsie Spencer',4751096870195,'https://placeit/200x300',13,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(407,1,1,6,'4940884','Temporibus fugit doloribus ad velit.','Miss Sabina Cronin Jr.',7150706682352,'https://placeit/200x300',20,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(408,1,1,7,'4672511','Ipsum laudantium dolorum quia tenetur reiciendis explicabo.','Vidal Denesik V',4527937055867,'https://placeit/200x300',9,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(409,1,1,7,'2895608','Id quidem itaque rerum magnam ut.','Dr. Bernadette Ritchie',6949658960950,'https://placeit/200x300',16,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(410,1,1,8,'2767650','Consectetur eum quis accusantium minima et.','Irving Morar',6760884236165,'https://placeit/200x300',17,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(411,1,1,7,'4238235','Quam rerum omnis natus sint.','Kay Beatty',8898425661980,'https://placeit/200x300',16,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(412,1,1,1,'2726766','Laboriosam dolor enim laborum sed sit animi.','Jarred Labadie III',5547876609166,'https://placeit/200x300',24,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(413,1,1,10,'3515764','Incidunt eligendi enim molestiae.','Clay Gleason',5672864004811,'https://placeit/200x300',16,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(414,1,1,2,'5792864','Natus temporibus et ipsum voluptas.','Winnifred Rolfson',5991216384808,'https://placeit/200x300',14,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(415,1,1,1,'5707216','Deleniti beatae optio voluptatem soluta et sint.','Dr. Stevie Ritchie',5008057693614,'https://placeit/200x300',13,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(416,1,1,1,'8127933','Delectus et labore aspernatur ipsam.','Margarita Parisian',2935124618481,'https://placeit/200x300',6,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(417,1,1,7,'5778476','Delectus perferendis eum totam deserunt.','Bryon Terry',8863498720865,'https://placeit/200x300',7,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(418,1,1,4,'7326410','Cum quia iusto libero placeat molestiae qui.','Salvador McGlynn Jr.',9832913519703,'https://placeit/200x300',12,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(419,1,1,2,'6912753','Illo et qui aut vitae quaerat.','Camden Mayert',7334248535981,'https://placeit/200x300',8,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(420,1,1,2,'7766809','Sed quidem quia eum sunt accusamus.','Blanche Hilpert',3110565075119,'https://placeit/200x300',25,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(421,1,1,4,'3696884','Quia ab vitae adipisci.','Unique Hahn',1255404561827,'https://placeit/200x300',22,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(422,1,1,7,'2421161','Sequi beatae est et placeat.','Alisha Wiegand',8964768193331,'https://placeit/200x300',20,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(423,1,1,2,'7376817','Modi similique officia at.','Juvenal Abernathy V',7547497126729,'https://placeit/200x300',12,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(424,1,1,5,'5815694','Quae reprehenderit consequuntur quae dolores.','Mrs. Eleanore Thompson',4576327971997,'https://placeit/200x300',14,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(425,1,1,7,'1786731','Aut odit est tempore excepturi quia eum.','Charles Balistreri',7099801240855,'https://placeit/200x300',24,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(426,1,1,7,'4740480','Doloribus qui totam est dignissimos.','Miss Odessa Strosin',783127773902,'https://placeit/200x300',5,'2026-03-01 10:55:26','2026-03-01 10:55:26'),(427,1,1,8,'5832536','Delectus alias harum est ducimus mollitia.','Willie Strosin II',6520242623958,'https://placeit/200x300',22,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(428,1,1,2,'2392144','Omnis atque numquam et quia.','Timmothy Jones',9871137483841,'https://placeit/200x300',13,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(429,1,1,2,'1314601','Non ea dolorem vero blanditiis aperiam numquam.','Edna Quitzon',97743401423,'https://placeit/200x300',13,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(430,1,1,6,'5586646','Sit reprehenderit aut rem.','Buddy Gorczany',3339785496607,'https://placeit/200x300',10,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(431,1,1,2,'3291623','Perferendis consectetur rerum reprehenderit.','Stephania West I',6792799234998,'https://placeit/200x300',24,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(432,1,1,7,'5634763','Odio a officiis beatae.','Prof. Alfred Gottlieb',8676265696887,'https://placeit/200x300',8,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(433,1,1,10,'7872739','Vitae nam et deserunt quasi quia tempore.','Lyric McLaughlin V',5278585289812,'https://placeit/200x300',13,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(434,1,1,7,'1746331','Rerum explicabo at odio distinctio illo cumque.','Kitty Pfannerstill',7780032991011,'https://placeit/200x300',21,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(435,1,1,4,'3056928','Sunt repellendus quia est impedit eum.','Demetrius Predovic',1135067073700,'https://placeit/200x300',13,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(436,1,1,9,'6449199','Inventore quia aut fugiat necessitatibus consequatur.','Aida Bednar',3431159153724,'https://placeit/200x300',18,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(437,1,1,4,'3466107','Nostrum delectus dolor ut aut minus qui.','Dr. Izabella Lang',3699418906676,'https://placeit/200x300',16,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(438,1,1,8,'7451834','Maxime dolorem praesentium deserunt quo.','Miss Tyra Erdman',9565003499004,'https://placeit/200x300',18,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(439,1,1,6,'2339202','Eum quibusdam aperiam corporis placeat.','Miss Cordie Brown MD',1572051942862,'https://placeit/200x300',6,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(440,1,1,3,'8376642','Nisi sed beatae repellendus qui aperiam.','Alexander Zemlak',9680613632334,'https://placeit/200x300',11,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(441,1,1,10,'3087012','Accusantium minus veniam occaecati.','Mrs. Bella Farrell',4605673256264,'https://placeit/200x300',12,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(442,1,1,6,'6069671','Adipisci enim dolorem velit reiciendis molestias id.','Lawson Langworth',131465688837,'https://placeit/200x300',24,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(443,1,1,3,'6416385','Natus odit doloremque temporibus sit ad.','Rashad Howe',3040011389340,'https://placeit/200x300',6,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(444,1,1,10,'8863179','Quibusdam non autem occaecati quas dignissimos vero.','Cora Crooks Jr.',6558909094841,'https://placeit/200x300',7,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(445,1,1,9,'7942524','Cum perferendis voluptatem distinctio sit perspiciatis.','Florine Parker V',1828260441307,'https://placeit/200x300',7,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(446,1,1,6,'2014401','Nemo necessitatibus quaerat id.','Mrs. Emmy Gulgowski III',4948728956956,'https://placeit/200x300',5,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(447,1,1,1,'5006727','Ad earum vitae ut sint necessitatibus est.','Malika Koepp',2166536193543,'https://placeit/200x300',8,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(448,1,1,5,'3269645','Sed ut ut repudiandae doloremque.','Mr. Madisen Walter',5640676196109,'https://placeit/200x300',7,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(449,1,1,2,'6808844','Qui illum omnis odit sunt sapiente est.','Raphael Bruen',492852454061,'https://placeit/200x300',19,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(450,1,1,5,'8430136','Nihil ullam ullam esse sed.','Jakayla Boyer',4406691908698,'https://placeit/200x300',20,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(451,1,1,5,'5848046','Ipsam sunt omnis fuga soluta quibusdam perspiciatis.','Brain Anderson',8769876774225,'https://placeit/200x300',18,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(452,1,1,3,'8620594','Ipsum est impedit vel.','Zelda Prosacco',1087626169884,'https://placeit/200x300',17,'2026-03-01 10:55:27','2026-03-01 10:55:27'),(453,1,1,10,'8074905','Eaque autem delectus maxime.','Abelardo Reichert',6821784815413,'https://placeit/200x300',14,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(454,1,1,10,'7809460','Qui beatae magni et neque facere et.','Dr. Neoma Hartmann',6092471444890,'https://placeit/200x300',11,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(455,1,1,7,'5163660','Repudiandae nesciunt voluptas eveniet.','Miss Marlen McGlynn I',6670569759745,'https://placeit/200x300',22,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(456,1,1,7,'4633635','Autem reiciendis nihil molestiae rerum suscipit voluptatem.','Prof. Nicholas Reynolds',1573558243858,'https://placeit/200x300',17,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(457,1,1,9,'7749406','Animi et autem rerum excepturi quia.','Kirsten Volkman',2605349330993,'https://placeit/200x300',9,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(458,1,1,9,'1698845','Labore velit quasi ipsa ducimus.','Hunter Bode',9960336414609,'https://placeit/200x300',21,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(459,1,1,8,'7408604','Totam voluptates molestiae occaecati et quis reprehenderit voluptatem.','Bennett Heathcote II',9293153615233,'https://placeit/200x300',15,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(460,1,1,3,'5840340','Exercitationem vero quo quam.','Darrell Bogisich',2173918302851,'https://placeit/200x300',10,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(461,1,1,3,'8459118','Sequi optio quidem ut.','Mrs. Sasha Padberg DVM',4405005528706,'https://placeit/200x300',25,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(462,1,1,3,'7689849','Et ut quisquam voluptate et enim.','Carolyn Thiel PhD',1448536051636,'https://placeit/200x300',7,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(463,1,1,7,'1465582','Ratione laborum ex est non.','Devonte O\'Keefe',8746715465100,'https://placeit/200x300',5,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(464,1,1,3,'1554274','Ducimus et illo sequi quia voluptatem mollitia.','Colten Jast II',4694889711193,'https://placeit/200x300',20,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(465,1,1,6,'1957692','Beatae dolores sed eius.','Bernard Sanford',5433530323045,'https://placeit/200x300',9,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(466,1,1,2,'8731282','Assumenda tempora harum placeat modi alias consequuntur.','Mr. Amari Thompson',913377494177,'https://placeit/200x300',6,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(467,1,1,3,'3591261','Ut sit dolor iste inventore odit.','Ms. Madilyn Cronin',4258882731611,'https://placeit/200x300',15,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(468,1,1,6,'4061674','Et optio reiciendis deserunt.','Orion Stracke',7461368985898,'https://placeit/200x300',5,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(469,1,1,2,'7286761','Corrupti aliquid alias occaecati fugit quae.','Bryon Waelchi III',83406261633,'https://placeit/200x300',12,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(470,1,1,3,'8051541','Vitae nostrum velit sed autem.','Sim Smitham',3227736178200,'https://placeit/200x300',17,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(471,1,1,4,'2644401','Voluptatum hic quae dignissimos quasi.','Garett Rohan',2398839601856,'https://placeit/200x300',13,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(472,1,1,6,'6767116','Distinctio maxime dolor harum qui.','Chyna Ebert',3977407863613,'https://placeit/200x300',18,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(473,1,1,10,'2310310','Neque asperiores doloremque porro molestias fuga.','Jimmy Bergstrom',1539652046078,'https://placeit/200x300',14,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(474,1,1,3,'2627389','Esse sunt nemo aut excepturi tempora.','Emmett Morissette',3620388366986,'https://placeit/200x300',24,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(475,1,1,5,'3480407','Consectetur quia dolor est dignissimos esse sint.','Kira Becker',878294729989,'https://placeit/200x300',12,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(476,1,1,2,'2146362','Sunt possimus tempora repellat explicabo.','Liliane Pacocha DVM',4476105497735,'https://placeit/200x300',19,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(477,1,1,9,'6900001','Possimus iusto est libero consequatur earum.','Colton Purdy',9641619911205,'https://placeit/200x300',5,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(478,1,1,6,'6439023','Velit dignissimos enim iste ratione et esse.','Arne Stracke I',1398660897290,'https://placeit/200x300',13,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(479,1,1,8,'6619477','Qui in libero qui mollitia.','Eula Boyer',8673872487006,'https://placeit/200x300',5,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(480,1,1,5,'1231593','Accusantium placeat consequuntur laudantium ea quia consequatur.','Mrs. Luella Hegmann',8353581382846,'https://placeit/200x300',25,'2026-03-01 10:55:28','2026-03-01 10:55:28'),(481,1,1,10,'7446536','Voluptate facere consequuntur consequatur.','Flavie Swaniawski',7786255681807,'https://placeit/200x300',17,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(482,1,1,6,'5561657','Animi fuga inventore non tempora eveniet inventore.','Adan Larkin',9913425613704,'https://placeit/200x300',16,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(483,1,1,9,'4156159','Pariatur vel ut nostrum qui sit laboriosam.','Dr. Ilene Legros',5578697890525,'https://placeit/200x300',22,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(484,1,1,9,'1113151','Aspernatur dignissimos rerum amet eligendi.','Lew Pollich',2858899422131,'https://placeit/200x300',8,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(485,1,1,5,'5862980','Natus quia minus enim.','Eula Mraz DVM',4752793071670,'https://placeit/200x300',15,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(486,1,1,3,'2701914','Totam eos facilis maxime.','Gustave Olson',4308801873844,'https://placeit/200x300',10,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(487,1,1,4,'6906710','Praesentium quo earum maiores non.','Gerda Hoeger IV',1458502235076,'https://placeit/200x300',10,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(488,1,1,9,'6378120','Quo veritatis non consectetur velit modi.','Dr. Taryn Heaney Sr.',4470533616393,'https://placeit/200x300',15,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(489,1,1,2,'1672077','Quas accusamus ut omnis quisquam.','Etha White',318531888418,'https://placeit/200x300',13,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(490,1,1,5,'4031166','Consequatur saepe voluptatem minus necessitatibus.','Berenice Schmidt',4483161031513,'https://placeit/200x300',12,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(491,1,1,8,'3507816','Assumenda in rem dolore maiores.','Eleonore Steuber',9224240326817,'https://placeit/200x300',8,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(492,1,1,7,'2614171','Consequatur eos sit amet.','Taylor Toy',7708155157848,'https://placeit/200x300',11,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(493,1,1,4,'2795370','Maiores recusandae delectus voluptates facere.','Mr. Grayson Kuhic DVM',4924126312884,'https://placeit/200x300',23,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(494,1,1,7,'4989103','Quaerat suscipit magni harum qui dicta.','Jerald Botsford',816987174357,'https://placeit/200x300',11,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(495,1,1,1,'5951502','Nostrum dicta enim quidem.','Dr. Isabell Mayer MD',9978091681907,'https://placeit/200x300',17,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(496,1,1,6,'4672858','Non beatae consequatur non odit in.','Lois Pacocha',7389163768730,'https://placeit/200x300',18,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(497,1,1,1,'4463755','Sunt ea et nemo.','Candice Little',3004157635365,'https://placeit/200x300',14,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(498,1,1,2,'1955354','Dolorem quia deserunt facere.','Keshawn Reinger',1252347089609,'https://placeit/200x300',19,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(499,1,1,5,'3234111','Atque quidem sit veritatis reprehenderit voluptatibus.','Prof. Theron Simonis II',4379887503710,'https://placeit/200x300',24,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(500,1,1,6,'3952470','Laborum voluptate minus voluptates sit sit iusto.','Miss Athena Ziemann',7443791399855,'https://placeit/200x300',16,'2026-03-01 10:55:29','2026-03-01 10:55:29'),(501,1,1,9,'2778120','Deserunt et neque rem.','Wilford Jacobs',751380341268,'https://placeit/200x300',12,'2026-03-01 10:55:30','2026-03-01 10:55:30'),(502,1,1,10,'4262406','Officiis esse autem consequatur nisi aut veritatis.','Johann Eichmann',7183851533552,'https://placeit/200x300',19,'2026-03-01 10:55:30','2026-03-01 10:55:30'),(503,1,1,8,'8525921','Maiores quia fugit fugiat.','Marco Rowe',72992844672,'https://placeit/200x300',13,'2026-03-01 10:55:30','2026-03-01 10:55:30'),(504,1,1,2,'4594168','Exercitationem ipsum unde pariatur fugiat.','Aleen Gottlieb',5671526496308,'https://placeit/200x300',14,'2026-03-01 10:55:30','2026-03-01 10:55:30'),(505,1,1,9,'5907837','Fugit aut sit odit laudantium ut.','Miss Felicia Gleichner II',1212576194901,'https://placeit/200x300',6,'2026-03-01 10:55:30','2026-03-01 10:55:30'),(506,1,1,3,'5428841','Fugit deserunt pariatur modi iusto.','Dr. Diana Zemlak',2173375222907,'https://placeit/200x300',16,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(507,1,1,5,'5983354','Quam autem ipsa sint a totam.','Ms. Susana Hammes',5291411670011,'https://placeit/200x300',15,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(508,1,1,8,'4365357','Nisi vitae eius porro quod porro tempora.','Amir Windler',5599483228971,'https://placeit/200x300',23,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(509,1,1,5,'2921484','Eveniet aspernatur quo sed placeat nihil ut.','Berry Parker',2618944115186,'https://placeit/200x300',11,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(510,1,1,7,'8810303','Provident dolorem fugiat laboriosam aliquam.','Dr. Jacinthe Nicolas',1237481079440,'https://placeit/200x300',5,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(511,1,1,5,'1338502','Excepturi id in consequatur necessitatibus nihil aspernatur.','Danielle Gutkowski',8509833095723,'https://placeit/200x300',24,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(512,1,1,5,'6568082','Cupiditate rerum rem rerum.','Tyrel Dooley PhD',4795500434139,'https://placeit/200x300',10,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(513,1,1,5,'5699772','Maiores necessitatibus ut eveniet ab consequatur occaecati.','Moriah Gaylord V',3968457927479,'https://placeit/200x300',7,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(514,1,1,5,'2510762','Consequuntur ut libero sapiente et aperiam.','Dr. Alivia Okuneva',1157803695076,'https://placeit/200x300',23,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(515,1,1,9,'5142839','Et autem id eum quis voluptate quos.','Dr. Maureen Thompson III',2282915023512,'https://placeit/200x300',19,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(516,1,1,9,'3095845','Corporis qui dolorum aliquid.','Rosemarie Baumbach MD',8158355647295,'https://placeit/200x300',15,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(517,1,1,9,'2800613','Nihil iste et cumque quae perferendis quia.','Marty Bosco',6259590502690,'https://placeit/200x300',10,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(518,1,1,5,'1473193','Qui occaecati saepe quia commodi qui fuga.','Miss Nella Price Jr.',3949410035776,'https://placeit/200x300',18,'2026-03-01 10:55:31','2026-03-01 10:55:31'),(519,1,1,1,'5937413','Temporibus esse molestiae similique in.','Carlos Mills V',9825509313175,'https://placeit/200x300',14,'2026-03-01 10:55:32','2026-03-01 10:55:32'),(520,1,1,9,'8666623','Rerum magni explicabo sit cum veritatis.','Miss Catalina Blanda',6900629570639,'https://placeit/200x300',23,'2026-03-01 10:55:32','2026-03-01 10:55:32'),(521,1,1,4,'6522740','Est rerum id possimus recusandae officiis pariatur.','Rosalinda Kirlin',5681781756345,'https://placeit/200x300',20,'2026-03-01 10:55:32','2026-03-01 10:55:32'),(522,1,1,8,'3324974','Fuga quisquam numquam enim consequatur.','Miss Sabrina Rolfson Sr.',3861965197139,'https://placeit/200x300',11,'2026-03-01 10:55:32','2026-03-01 10:55:32'),(523,1,1,4,'5230693','Reprehenderit velit totam et a commodi est.','Dr. Fiona Crona',1103767259755,'https://placeit/200x300',17,'2026-03-01 10:55:32','2026-03-01 10:55:32'),(524,1,1,6,'6272153','Alias dolorem provident delectus.','Tressa Hayes',6225637395686,'https://placeit/200x300',24,'2026-03-01 10:55:32','2026-03-01 10:55:32'),(525,1,1,5,'8345012','Ut ut ipsum voluptas deleniti consequuntur velit.','Prof. Geovanni Barrows',3696387282299,'https://placeit/200x300',18,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(526,1,1,6,'8325890','Quae excepturi nostrum aut sint dolores.','Mr. Westley Gislason I',7570604828537,'https://placeit/200x300',20,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(527,1,1,8,'1545634','Corrupti fugit est blanditiis tempore velit dolores non.','Bradly Trantow',9657784730312,'https://placeit/200x300',5,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(528,1,1,5,'7964663','Ut alias in accusamus.','Jonatan Jones',9495404023518,'https://placeit/200x300',7,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(529,1,1,2,'5376105','Aspernatur quis ut est voluptatem nulla aut.','Richmond Prosacco Sr.',7207881900266,'https://placeit/200x300',25,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(530,1,1,4,'8261070','Voluptates saepe ea quis in velit.','Mr. Lucius Jacobson Jr.',9945040805066,'https://placeit/200x300',9,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(531,1,1,2,'7665953','Soluta quis quos consequatur enim eos sed.','Destiney Zemlak',3381325968969,'https://placeit/200x300',11,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(532,1,1,9,'5650165','Praesentium ut delectus enim nemo.','Prof. Grover Sipes',2285634694803,'https://placeit/200x300',13,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(533,1,1,3,'6892666','Nisi esse accusantium tempore.','Roy Yundt IV',4345250548015,'https://placeit/200x300',6,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(534,1,1,5,'8599622','Aut qui sunt ipsum omnis.','Dina Harber PhD',2957568708856,'https://placeit/200x300',23,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(535,1,1,3,'6511182','Libero quis et voluptas odit et.','Gay Pfeffer',2550126873784,'https://placeit/200x300',24,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(536,1,1,5,'6033919','Excepturi velit praesentium non accusantium excepturi.','Kiara Kertzmann',7765293084221,'https://placeit/200x300',24,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(537,1,1,9,'8046428','Error velit sed dolores.','Lera Zboncak',460189958507,'https://placeit/200x300',6,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(538,1,1,2,'7127558','Autem expedita officia nostrum voluptate.','Prof. Duncan O\'Hara V',5891978985155,'https://placeit/200x300',6,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(539,1,1,7,'2369398','Aut quae sunt neque assumenda totam et.','Marshall Purdy MD',7628695993549,'https://placeit/200x300',16,'2026-03-01 10:55:33','2026-03-01 10:55:33'),(540,1,1,8,'3328339','Aut quis iusto sed.','Mrs. Cathrine Hill I',8994849805914,'https://placeit/200x300',7,'2026-03-01 10:55:34','2026-03-01 10:55:34'),(541,1,1,2,'3756834','Rerum debitis temporibus ipsam architecto.','Ms. Alexa Kirlin IV',1239706248693,'https://placeit/200x300',22,'2026-03-01 10:55:34','2026-03-01 10:55:34'),(542,1,1,9,'4831860','Ut molestias unde dolores.','Dr. Jorge Botsford',6716950635202,'https://placeit/200x300',14,'2026-03-01 10:55:34','2026-03-01 10:55:34'),(543,1,1,9,'4116735','Voluptate non odio voluptas.','Prof. Gracie Toy',2265456424697,'https://placeit/200x300',19,'2026-03-01 10:55:34','2026-03-01 10:55:34'),(544,1,1,10,'2868670','Et illum aut praesentium.','Benedict Berge',9015395284103,'https://placeit/200x300',15,'2026-03-01 10:55:34','2026-03-01 10:55:34'),(545,1,1,2,'6024352','Facilis eaque voluptates odit.','Ms. Skyla Schowalter II',8371719263850,'https://placeit/200x300',13,'2026-03-01 10:55:34','2026-03-01 10:55:34'),(546,1,1,10,'7054402','Voluptas neque sed consequuntur fugit accusantium dolore.','Freida Wolff PhD',3600736468807,'https://placeit/200x300',19,'2026-03-01 10:55:34','2026-03-01 10:55:34'),(547,1,1,2,'5150683','Doloribus dolorem sit fugiat et.','Oceane Littel',5920883212527,'https://placeit/200x300',6,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(548,1,1,5,'1255221','Sapiente est labore exercitationem qui.','Lyda Weimann',2766094326249,'https://placeit/200x300',24,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(549,1,1,2,'4406722','Quam molestiae blanditiis blanditiis officiis eum.','Wilma Schulist',7159205667211,'https://placeit/200x300',12,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(550,1,1,1,'3048929','Aliquam quia molestias quisquam.','Hellen Rath Sr.',7023414344686,'https://placeit/200x300',17,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(551,1,1,4,'7245900','Sed et ut nam dolorum.','Marcos Maggio',6066658167698,'https://placeit/200x300',13,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(552,1,1,2,'4022704','Aspernatur optio impedit ut molestias.','Godfrey Keebler',4066943551425,'https://placeit/200x300',17,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(553,1,1,2,'4909671','Ratione id maxime in rerum.','Miss Emelie Schuster',5173977964738,'https://placeit/200x300',10,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(554,1,1,5,'3729556','Nobis aut voluptatem aspernatur aut dignissimos molestias.','Melyna Pouros',7991206089971,'https://placeit/200x300',18,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(555,1,1,2,'6293136','Atque vero distinctio voluptatem similique dolor itaque officia.','Chauncey Cronin',671407221468,'https://placeit/200x300',9,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(556,1,1,5,'5268854','Dolorem delectus a laudantium est id.','Dr. Annabelle Wehner',407264611186,'https://placeit/200x300',15,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(557,1,1,3,'8888803','Ut ut praesentium minus.','Dr. Jalyn Kiehn',3198319374930,'https://placeit/200x300',9,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(558,1,1,3,'5885684','Sunt voluptatem totam ut ut eveniet.','Demetrius Vandervort',1603932583956,'https://placeit/200x300',5,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(559,1,1,4,'1188633','Ipsum architecto dolores numquam omnis ut.','Troy Sporer',3282939012805,'https://placeit/200x300',16,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(560,1,1,7,'3519438','Totam nam fuga illum hic ab laborum.','Casimir Nicolas',5933066813770,'https://placeit/200x300',13,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(561,1,1,7,'4802300','Culpa natus odit dolorem et occaecati.','German Powlowski',6314918782878,'https://placeit/200x300',22,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(562,1,1,5,'2013762','Ut libero et qui et possimus aliquid.','Dr. Maximus Haley III',7606563128774,'https://placeit/200x300',21,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(563,1,1,10,'2578039','Odio enim rerum dicta facilis.','Bertrand Marquardt',878946607016,'https://placeit/200x300',25,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(564,1,1,2,'2899278','Quaerat qui reiciendis nihil veritatis.','Mrs. Rose Stark',9620252604743,'https://placeit/200x300',16,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(565,1,1,6,'6204495','Incidunt deserunt et eum eum velit recusandae.','Eugene Bashirian IV',30131550655,'https://placeit/200x300',12,'2026-03-01 10:55:35','2026-03-01 10:55:35'),(566,1,1,7,'8040333','Id suscipit totam assumenda.','Eldred Klein',6395195626642,'https://placeit/200x300',19,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(567,1,1,6,'1223202','Consequatur dolorem et dolores exercitationem eligendi corrupti.','Evelyn Schroeder',1482359004806,'https://placeit/200x300',12,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(568,1,1,1,'8313866','Velit impedit hic amet ipsam alias.','Jordi Lubowitz',459931815182,'https://placeit/200x300',24,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(569,1,1,3,'2377737','Voluptatem dolores qui numquam et commodi.','Edythe Stokes',687951139661,'https://placeit/200x300',22,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(570,1,1,4,'2863810','Blanditiis molestiae error quasi dolores voluptas quos.','Rodrick Little',6566685405980,'https://placeit/200x300',9,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(571,1,1,3,'4524941','Quam nemo harum tempore molestiae.','Jovanny Erdman V',8182252474319,'https://placeit/200x300',18,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(572,1,1,4,'2976317','Facilis iusto velit pariatur ut iusto nesciunt.','Dr. Bridget Wiegand Jr.',6972140855236,'https://placeit/200x300',24,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(573,1,1,2,'6587208','Minus eligendi quaerat odio et non.','Dr. Shanny Hamill III',3964562235744,'https://placeit/200x300',15,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(574,1,1,2,'4311535','Cum sint at quas provident.','Josiane Renner',2390872985146,'https://placeit/200x300',24,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(575,1,1,9,'2276865','Et alias aut odio.','Cathryn Lesch',789481147045,'https://placeit/200x300',10,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(576,1,1,5,'1494438','Iusto vel voluptas aut.','Germaine Cummings',2890143651416,'https://placeit/200x300',14,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(577,1,1,3,'3666250','Dolores dignissimos distinctio deserunt nemo est laboriosam.','Prof. Kariane Spinka MD',8297788150290,'https://placeit/200x300',25,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(578,1,1,5,'6798176','Veniam quasi hic odit.','Opal Quitzon V',5728087925256,'https://placeit/200x300',20,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(579,1,1,4,'4064825','Molestiae neque placeat eos.','Bennett Kovacek',4170442333205,'https://placeit/200x300',23,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(580,1,1,3,'2290834','Aut sint porro modi qui.','Tania Bechtelar',2279385855644,'https://placeit/200x300',9,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(581,1,1,3,'7153829','Adipisci et ut et deserunt.','Giuseppe Green',4043136143704,'https://placeit/200x300',17,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(582,1,1,3,'5309763','Perferendis est et eos sequi exercitationem quo.','Lea Jaskolski',329870125720,'https://placeit/200x300',19,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(583,1,1,3,'5973758','Eum accusamus asperiores deserunt.','Isadore Pfannerstill',6732266226439,'https://placeit/200x300',10,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(584,1,1,10,'7413268','Aut nostrum eveniet sunt enim et.','Karina Harris IV',7609689821215,'https://placeit/200x300',15,'2026-03-01 10:55:36','2026-03-01 10:55:36'),(585,1,1,7,'4610448','Esse possimus adipisci deserunt debitis qui.','Mercedes Walker',1058799085578,'https://placeit/200x300',5,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(586,1,1,7,'4805688','A ut pariatur quo.','Hilma McCullough V',2438552198780,'https://placeit/200x300',16,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(587,1,1,8,'4908365','Id labore magni numquam.','Dr. Antonietta Cremin',9732669370798,'https://placeit/200x300',19,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(588,1,1,9,'4930411','Sint dolores dolor velit hic.','Sylvia Dietrich IV',6919580977623,'https://placeit/200x300',12,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(589,1,1,4,'6669115','Ratione occaecati ducimus autem quia.','Alicia Nicolas',9809908181931,'https://placeit/200x300',22,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(590,1,1,3,'3831214','Aut possimus ut aliquam ducimus sequi rem.','Miss Clarabelle Prosacco',4853622368623,'https://placeit/200x300',14,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(591,1,1,4,'4661078','Exercitationem voluptatum saepe ullam fugiat et.','Kaya Simonis',5223139141481,'https://placeit/200x300',14,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(592,1,1,10,'3052538','Fuga et enim quasi.','Guadalupe Wisozk',3704945965505,'https://placeit/200x300',6,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(593,1,1,6,'2610025','Qui eos ab est.','Brannon Berge',6445835409439,'https://placeit/200x300',8,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(594,1,1,7,'2656163','Sapiente maiores sed explicabo debitis.','Zetta Jenkins',7894383399737,'https://placeit/200x300',24,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(595,1,1,3,'7157394','Hic molestiae aspernatur sit.','Prof. Paolo O\'Reilly I',9563179003377,'https://placeit/200x300',5,'2026-03-01 10:55:37','2026-03-01 10:55:37'),(596,1,1,8,'6458846','Voluptatem recusandae consequatur nostrum.','Dr. Colt Daugherty',8179751705495,'https://placeit/200x300',11,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(597,1,1,7,'4997585','A cumque a voluptas harum.','Dr. Emilia Jaskolski DDS',2770852986231,'https://placeit/200x300',12,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(598,1,1,4,'2542907','Ea perferendis porro iusto tenetur cupiditate.','Wilhelm Hammes',5429966933835,'https://placeit/200x300',20,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(599,1,1,2,'2561563','Qui deleniti quidem libero perspiciatis.','Dr. Hershel Hackett',5217218451318,'https://placeit/200x300',16,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(600,1,1,6,'6511853','Aut temporibus cum voluptatem.','Prof. Makenna Ward',1361730862344,'https://placeit/200x300',23,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(601,1,1,4,'2963730','Molestiae sunt dolorem minus totam a accusamus.','Lily Bailey Jr.',3248720150125,'https://placeit/200x300',7,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(602,1,1,5,'5498812','Maiores natus accusamus velit nam.','Damion Toy',9136940612407,'https://placeit/200x300',14,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(603,1,1,2,'5700578','Voluptas consequatur nam aut non eos.','Prof. Elias Lindgren',2341709807049,'https://placeit/200x300',20,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(604,1,1,2,'3145790','Id fugiat doloribus tenetur.','Billie Wisoky',767628862464,'https://placeit/200x300',21,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(605,1,1,4,'7280635','Totam fugit non iusto quia voluptatem quo.','Mr. Soledad Mayert MD',7434882713490,'https://placeit/200x300',16,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(606,1,1,8,'6358966','Amet illum est placeat.','Dr. Marcelino Sipes DDS',1610091122056,'https://placeit/200x300',20,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(607,1,1,9,'2585246','Vel dignissimos vero ut repellendus.','Alexandrea O\'Kon',732061447318,'https://placeit/200x300',5,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(608,1,1,9,'7450189','Sequi ad esse provident incidunt nesciunt.','Dr. Lane Daniel I',2154837670238,'https://placeit/200x300',10,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(609,1,1,3,'3892987','At sit esse ut.','Tremaine Hane',9266359647902,'https://placeit/200x300',24,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(610,1,1,2,'2105673','Sit laudantium quaerat aliquid velit maiores.','Mona Gerlach',6162302525088,'https://placeit/200x300',21,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(611,1,1,2,'8284842','Est suscipit iusto ut voluptatum aut mollitia.','Dr. Katelynn Bogisich IV',8627091064517,'https://placeit/200x300',18,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(612,1,1,9,'6523484','Officia est molestias animi.','Webster Lehner',2630518560994,'https://placeit/200x300',22,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(613,1,1,9,'7213316','Magni consectetur repellat aut nobis voluptatibus libero.','Ms. Madaline Carroll',4690655517327,'https://placeit/200x300',13,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(614,1,1,7,'7868162','Facilis tempore non id rerum consequatur.','Raquel Denesik',2299874351860,'https://placeit/200x300',20,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(615,1,1,9,'2402138','Sed molestiae vitae aut quae et.','Emelie Ward',9001871809502,'https://placeit/200x300',10,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(616,1,1,3,'3653912','Quo debitis pariatur voluptatibus quia.','Karli Durgan',6144145762097,'https://placeit/200x300',18,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(617,1,1,4,'4771393','Qui deleniti voluptatum tempora dolores recusandae.','Waylon Brakus',9677186683986,'https://placeit/200x300',11,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(618,1,1,3,'3252845','Explicabo neque autem excepturi.','Dr. Rudy Kutch',2682324890932,'https://placeit/200x300',19,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(619,1,1,5,'4695879','Veritatis et accusantium nisi.','Glennie Kessler',1569681950732,'https://placeit/200x300',6,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(620,1,1,1,'2345304','Quia excepturi odit quisquam eius porro soluta.','Gunner Grimes',5882185870372,'https://placeit/200x300',6,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(621,1,1,2,'5972011','Autem quaerat veniam sed qui accusamus voluptatibus.','Koby Morar',1999188600128,'https://placeit/200x300',24,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(622,1,1,5,'6116575','Facilis labore aliquam ipsam ducimus omnis quis.','Dr. Bettie Cruickshank',4344776255650,'https://placeit/200x300',23,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(623,1,1,10,'8665099','Ut officia et dolor laborum distinctio aperiam.','Anthony Walsh',5988028899606,'https://placeit/200x300',9,'2026-03-01 10:55:38','2026-03-01 10:55:38'),(624,1,1,10,'4037543','Eligendi aut ipsum libero omnis sit ipsa.','Marian Price I',7360613641285,'https://placeit/200x300',15,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(625,1,1,6,'6491493','Tenetur ut excepturi perferendis blanditiis quis eum.','Susan Ernser',3676754345789,'https://placeit/200x300',23,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(626,1,1,10,'1775531','Inventore nihil modi aliquid beatae vel.','Adrain Sipes',4622089006368,'https://placeit/200x300',7,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(627,1,1,3,'4640045','Labore ipsum sapiente doloribus suscipit beatae dolores.','Ryley Rice',2532119758360,'https://placeit/200x300',10,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(628,1,1,5,'5501686','Sint ut voluptas sint aspernatur sequi quo.','Tyree O\'Conner',2780437592153,'https://placeit/200x300',8,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(629,1,1,10,'8595760','Alias occaecati enim dolor incidunt expedita.','Miracle Walker',7429880500906,'https://placeit/200x300',12,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(630,1,1,2,'7621151','Earum voluptates libero minima ut eum ex.','Dr. Ezra Ritchie I',8298174495605,'https://placeit/200x300',14,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(631,1,1,10,'7553855','Eaque dolor sed debitis incidunt.','Clotilde Bogan',4992907009988,'https://placeit/200x300',23,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(632,1,1,2,'3338185','Consequuntur velit beatae omnis eum.','Gilbert Wiegand',7412641266524,'https://placeit/200x300',9,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(633,1,1,5,'8004195','Harum occaecati saepe quia.','Elena Prohaska DVM',8539053951530,'https://placeit/200x300',16,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(634,1,1,6,'1226807','Aliquam praesentium laborum sunt temporibus et alias nihil.','Blanca Paucek DDS',4149515148435,'https://placeit/200x300',11,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(635,1,1,3,'5998567','Voluptatibus ut quia corrupti soluta.','Rhett Jenkins',4501804296089,'https://placeit/200x300',22,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(636,1,1,5,'4867292','Est et facilis nobis.','Alysha Gaylord',4047436382481,'https://placeit/200x300',9,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(637,1,1,2,'8466598','Sunt magnam id placeat culpa quia enim.','Dr. Christine Bailey II',6506111939481,'https://placeit/200x300',23,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(638,1,1,6,'2356407','Aperiam est culpa amet incidunt perferendis voluptates.','Jena Kuvalis',3034454749878,'https://placeit/200x300',16,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(639,1,1,10,'1968780','Corrupti esse nihil et quia.','Leonor Beahan DDS',2485989967496,'https://placeit/200x300',20,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(640,1,1,10,'2986112','Sed assumenda aut molestias.','Savannah Rolfson I',2694482833287,'https://placeit/200x300',20,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(641,1,1,2,'8746362','Porro debitis dignissimos aut expedita.','Janis Daniel',7950332074305,'https://placeit/200x300',5,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(642,1,1,5,'5271143','Voluptatem qui blanditiis vero consectetur.','Bailee Dickens',8162530492815,'https://placeit/200x300',19,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(643,1,1,7,'5115327','Fugit velit et sed et error molestiae.','Mr. Quinn Crist',8255841110551,'https://placeit/200x300',13,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(644,1,1,8,'8579002','Laborum ut quod doloremque nihil sequi nihil.','Miss Vita Turcotte',5041220577854,'https://placeit/200x300',6,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(645,1,1,4,'4998003','Eaque odit autem provident mollitia.','Kelli Connelly',7186870426515,'https://placeit/200x300',14,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(646,1,1,1,'7987696','Explicabo officiis id ex.','Juston Osinski',9856190641988,'https://placeit/200x300',14,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(647,1,1,5,'1536470','Sint inventore perferendis possimus in omnis voluptatibus.','Brody Steuber',3216503715908,'https://placeit/200x300',15,'2026-03-01 10:55:39','2026-03-01 10:55:39'),(648,1,1,10,'1578402','Id optio vitae mollitia autem.','Miss Lelia Gaylord I',2857261046258,'https://placeit/200x300',17,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(649,1,1,2,'8231992','Et magni mollitia excepturi ex necessitatibus.','Prof. Melba Dach',8487224230765,'https://placeit/200x300',18,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(650,1,1,9,'2113956','Voluptatem quaerat consequuntur labore exercitationem.','Susana Kub',1521644574003,'https://placeit/200x300',9,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(651,1,1,8,'5295824','Iste aut est eum.','Miss Gail Gulgowski Sr.',3515928312595,'https://placeit/200x300',12,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(652,1,1,7,'3707769','Atque id qui et deleniti rerum aperiam.','Myrtice Fadel',9019993605483,'https://placeit/200x300',13,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(653,1,1,8,'7607317','Non unde atque excepturi quibusdam est.','Tanner Hegmann IV',1348112735571,'https://placeit/200x300',15,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(654,1,1,5,'8540309','Impedit modi vel commodi.','Samara Graham II',8151453047530,'https://placeit/200x300',24,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(655,1,1,7,'5984093','Nemo suscipit blanditiis quia.','Ms. Gretchen Runte',3608330516207,'https://placeit/200x300',13,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(656,1,1,5,'2048008','Velit rem voluptatum maxime.','Garett Rice Sr.',1155503644820,'https://placeit/200x300',24,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(657,1,1,3,'7735919','Nihil ratione atque et fugiat molestias.','Jeff Weissnat',4174102180505,'https://placeit/200x300',21,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(658,1,1,2,'6566742','Alias quod et est vero libero.','Miss Ofelia Robel',8070574607389,'https://placeit/200x300',15,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(659,1,1,10,'2442284','Vero voluptatem dolores enim fuga.','Boris Turner',771454868187,'https://placeit/200x300',16,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(660,1,1,10,'3477415','Nostrum reiciendis quis dolorem.','Marie Hill',5005110482802,'https://placeit/200x300',25,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(661,1,1,2,'5336373','Exercitationem similique deleniti vel.','Bulah Rolfson',2187946172102,'https://placeit/200x300',24,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(662,1,1,5,'7874564','Autem et eos eos ipsam.','Dr. Leo Borer III',248909040110,'https://placeit/200x300',17,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(663,1,1,1,'2111658','Cum soluta officia autem repellat sit eligendi.','Henry Murazik',2596846903707,'https://placeit/200x300',25,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(664,1,1,8,'5311791','Facere nihil praesentium repellendus.','Dr. Joshua Predovic I',754157960914,'https://placeit/200x300',19,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(665,1,1,3,'5303401','Ut officiis vel quod facere aut.','Cordelia Dietrich',345709755999,'https://placeit/200x300',14,'2026-03-01 10:55:40','2026-03-01 10:55:40'),(666,1,1,10,'5693084','Aspernatur ea cupiditate aliquid sit atque tenetur.','Mya Glover II',1094096820665,'https://placeit/200x300',14,'2026-03-01 10:55:41','2026-03-01 10:55:41'),(667,1,1,8,'3418553','Maxime impedit exercitationem laudantium doloremque debitis.','Parker Okuneva',6489156241187,'https://placeit/200x300',21,'2026-03-01 10:55:41','2026-03-01 10:55:41'),(668,1,1,5,'3039407','Enim est sequi ea in deleniti.','Ila Fisher II',7743957931661,'https://placeit/200x300',8,'2026-03-01 10:55:41','2026-03-01 10:55:41'),(669,1,1,6,'5587743','In ea ducimus sapiente totam nemo.','Dr. Murray Botsford III',9404632022460,'https://placeit/200x300',11,'2026-03-01 10:55:41','2026-03-01 10:55:41'),(670,1,1,9,'8755894','Et quis aut sit illo.','Enrico Lakin',1168112993142,'https://placeit/200x300',9,'2026-03-01 10:55:42','2026-03-01 10:55:42'),(671,1,1,10,'4172081','Non qui nulla voluptas.','Jo Collins DVM',304623529833,'https://placeit/200x300',19,'2026-03-01 10:55:42','2026-03-01 10:55:42'),(672,1,1,5,'1357005','Suscipit placeat ipsa ipsum et.','Nelson Parker',3876484942825,'https://placeit/200x300',12,'2026-03-01 10:55:42','2026-03-01 10:55:42'),(673,1,1,3,'1580925','Odio reprehenderit provident reprehenderit.','Miss Tess Jakubowski',2923005180073,'https://placeit/200x300',16,'2026-03-01 10:55:42','2026-03-01 10:55:42'),(674,1,1,1,'8296698','Aut aut porro assumenda expedita.','Prof. Americo Tremblay',8245328860765,'https://placeit/200x300',10,'2026-03-01 10:55:42','2026-03-01 10:55:42'),(675,1,1,8,'3547404','Dignissimos necessitatibus sed delectus perferendis nihil id.','Myron Rogahn',7495313829265,'https://placeit/200x300',15,'2026-03-01 10:55:42','2026-03-01 10:55:42'),(676,1,1,7,'7728629','Saepe voluptas iusto saepe.','Providenci Littel',6311774955972,'https://placeit/200x300',16,'2026-03-01 10:55:42','2026-03-01 10:55:42'),(677,1,1,2,'5133902','Perferendis dolores reiciendis quis vero.','Prof. Eleonore Weber',4623244596687,'https://placeit/200x300',23,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(678,1,1,3,'3686739','Reprehenderit eos eos accusantium doloremque.','Marisa Huels',6900597924779,'https://placeit/200x300',17,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(679,1,1,7,'6598287','Pariatur et mollitia eius aspernatur.','Mrs. Esperanza Schneider',2340735798888,'https://placeit/200x300',15,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(680,1,1,1,'2910410','Soluta eveniet placeat nihil.','Randi Gleason',3701387885033,'https://placeit/200x300',18,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(681,1,1,2,'1988833','Ipsa accusantium incidunt possimus voluptatibus ut enim.','Pasquale Huel',8821382939175,'https://placeit/200x300',23,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(682,1,1,2,'4290969','Eius et molestias aut ut beatae.','Ana O\'Reilly',8482875492449,'https://placeit/200x300',10,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(683,1,1,9,'2259275','Illo corporis corporis et natus in.','Reba Rippin',9831512315396,'https://placeit/200x300',11,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(684,1,1,4,'1561711','Ipsum sed cupiditate qui officia quo.','Octavia Leuschke',2868112438726,'https://placeit/200x300',23,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(685,1,1,4,'1717011','Nisi voluptatem quo et blanditiis velit.','Fidel Tromp',9017852081683,'https://placeit/200x300',15,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(686,1,1,4,'2056485','Eaque cumque nulla fugit.','Reece Konopelski',7102665585045,'https://placeit/200x300',20,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(687,1,1,4,'6881918','Quo voluptas suscipit laboriosam.','Loma Leffler',6510768554980,'https://placeit/200x300',16,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(688,1,1,5,'8409189','Et itaque ut laudantium eos recusandae.','Prof. D\'angelo Roob Sr.',7651421329787,'https://placeit/200x300',18,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(689,1,1,2,'2655086','Et omnis dolor impedit.','Guiseppe Predovic',3619149528596,'https://placeit/200x300',16,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(690,1,1,6,'6122237','A eos repellendus maxime in laboriosam.','Clarabelle Lehner',5111576970316,'https://placeit/200x300',10,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(691,1,1,2,'1137888','Quos aspernatur quis tenetur.','Demarcus Huel',52542680059,'https://placeit/200x300',20,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(692,1,1,6,'2844700','Modi eius magni sit ipsum eum qui.','Eliane Schulist',5476581522265,'https://placeit/200x300',6,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(693,1,1,10,'7995862','Reiciendis sint accusantium architecto optio nesciunt.','Prof. Jennyfer Moen IV',2112688070256,'https://placeit/200x300',11,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(694,1,1,5,'4233675','Suscipit qui et consequatur vel.','Orrin Jacobson',4805746305305,'https://placeit/200x300',13,'2026-03-01 10:55:43','2026-03-01 10:55:43'),(695,1,1,2,'3224342','Architecto laudantium vitae sint.','Kaelyn Runte',9974864826704,'https://placeit/200x300',17,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(696,1,1,3,'5259114','At voluptates unde est id sint molestiae.','Madonna Hagenes IV',6633610995141,'https://placeit/200x300',11,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(697,1,1,3,'1901190','Provident quis est dolore provident labore.','Loy Emard DVM',1422167018084,'https://placeit/200x300',16,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(698,1,1,8,'1977001','Inventore dolores itaque et.','Destiny Ryan',8573483855228,'https://placeit/200x300',13,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(699,1,1,3,'4113869','Deserunt velit a et officia.','Barry Schumm',6407176724596,'https://placeit/200x300',7,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(700,1,1,10,'2018790','Numquam architecto totam excepturi voluptatum.','Cassandre Moore',8076346846390,'https://placeit/200x300',5,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(701,1,1,3,'7264692','Dolorum omnis quaerat quibusdam nemo aut quam.','Andres Pfeffer V',1457086471429,'https://placeit/200x300',20,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(702,1,1,9,'8830946','Possimus non eligendi quia veniam.','Carolyne Mertz',9894422892753,'https://placeit/200x300',16,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(703,1,1,9,'8305641','Dolorem ipsum in ea.','Kianna Upton',1025838973196,'https://placeit/200x300',25,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(704,1,1,5,'5702668','Nostrum dignissimos voluptatum illo consequatur.','Elda Mills',9930371191674,'https://placeit/200x300',12,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(705,1,1,2,'6313796','Illum corporis repellat culpa vel corporis assumenda.','Monserrate Stiedemann',8112806938677,'https://placeit/200x300',8,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(706,1,1,8,'4056474','Consequatur odio voluptatem doloribus quibusdam aut quam.','Prof. Bailee Kozey III',1502218641475,'https://placeit/200x300',10,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(707,1,1,1,'3975084','Quos iure ipsam enim quo delectus.','Dr. Kaylee Swaniawski',8253481349645,'https://placeit/200x300',7,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(708,1,1,10,'6942380','Eos dolor sed sunt impedit.','Torrey Nicolas',7626596669617,'https://placeit/200x300',17,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(709,1,1,8,'2284773','Dignissimos nesciunt sit minima eum maxime quae quasi.','Rosella Halvorson',545260492665,'https://placeit/200x300',22,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(710,1,1,6,'5113672','Nihil qui animi aut amet vero dolorum.','Gudrun Wilderman',1232310860565,'https://placeit/200x300',20,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(711,1,1,6,'3179026','Rerum nihil id porro culpa corrupti quia.','Gardner Konopelski',2642670976445,'https://placeit/200x300',18,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(712,1,1,6,'4281963','Nisi quas repudiandae exercitationem dicta.','King Bergstrom',2384482939972,'https://placeit/200x300',14,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(713,1,1,3,'2872839','Non et impedit aut id.','Maiya Little',2465857953509,'https://placeit/200x300',7,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(714,1,1,8,'7450512','Perspiciatis et laboriosam error fugiat dolores omnis.','Sigmund Kessler',7873795789206,'https://placeit/200x300',6,'2026-03-01 10:55:44','2026-03-01 10:55:44'),(715,1,1,3,'6458026','Hic quia sit nisi adipisci fugit.','Julie Pagac',9069938335623,'https://placeit/200x300',7,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(716,1,1,9,'4690778','Distinctio ut ratione eum eligendi sit.','Mark Schmeler V',5937172943307,'https://placeit/200x300',9,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(717,1,1,1,'1505170','Molestias iure quibusdam repellat.','Dillan Beahan',712717818518,'https://placeit/200x300',6,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(718,1,1,4,'8054024','Animi adipisci laboriosam ea.','Mrs. Shania Harris PhD',9421482726911,'https://placeit/200x300',7,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(719,1,1,6,'3913841','Et vero aut sint.','Sandra Kuhlman DVM',2732803615355,'https://placeit/200x300',17,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(720,1,1,3,'6330164','Facilis ea ut consequatur.','Noemy Rolfson',2968024771451,'https://placeit/200x300',20,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(721,1,1,2,'7254904','Soluta sunt sint est.','Ms. Felicia Heller MD',4311800384044,'https://placeit/200x300',12,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(722,1,1,7,'2038240','Nemo dicta nemo dolores facere error impedit.','Lisandro Okuneva',7746466855541,'https://placeit/200x300',8,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(723,1,1,1,'8448109','Ullam doloribus officia sint nihil tempore error.','Tobin Kovacek',6088338252524,'https://placeit/200x300',22,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(724,1,1,10,'5530734','Nihil repudiandae ab magni et quia.','Kelvin Hegmann',3952401543075,'https://placeit/200x300',17,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(725,1,1,3,'5849432','Assumenda voluptate assumenda non facilis quidem.','Deondre Wintheiser',5879940924357,'https://placeit/200x300',17,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(726,1,1,9,'4642147','Eum rerum et ea molestiae rerum facere.','Prof. Litzy Hermann IV',4884534488536,'https://placeit/200x300',22,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(727,1,1,2,'8547733','Dolorem molestias ea magni doloribus.','Avis Osinski',1765247350682,'https://placeit/200x300',24,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(728,1,1,1,'7990655','Sit qui tempore sint deleniti consequatur.','Prof. Demetris Von',6940922134817,'https://placeit/200x300',25,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(729,1,1,5,'5838554','Mollitia et magnam rem tenetur.','Savannah Armstrong',5313098232068,'https://placeit/200x300',20,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(730,1,1,2,'4725770','Iste iure perferendis esse doloribus aperiam.','Gavin Feeney',1810617570228,'https://placeit/200x300',6,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(731,1,1,2,'3220185','Magni delectus consequatur doloremque.','Nick Jones',3200298609962,'https://placeit/200x300',7,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(732,1,1,8,'7633060','Fugiat veniam voluptas ipsam.','Tom Jerde',1128160513303,'https://placeit/200x300',23,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(733,1,1,5,'2361930','Amet in possimus voluptas et minus sed.','Kari Hudson',7385999851141,'https://placeit/200x300',17,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(734,1,1,2,'8668815','Qui et ea magni itaque et ipsam.','Mrs. Malika Runolfsdottir DDS',5689650784017,'https://placeit/200x300',21,'2026-03-01 10:55:45','2026-03-01 10:55:45'),(735,1,1,4,'5524033','Officia mollitia dolores eos inventore repudiandae.','Ms. Camylle Hodkiewicz V',3021715939,'https://placeit/200x300',6,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(736,1,1,4,'6953449','Aut dolor et beatae.','Camron Jacobi',9742283620636,'https://placeit/200x300',21,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(737,1,1,4,'3189658','Quia quibusdam consequatur et possimus vel iure.','Miss Chloe Walsh',2425317655022,'https://placeit/200x300',22,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(738,1,1,6,'4093361','Ipsa qui inventore enim.','Ola Kshlerin',9308305006699,'https://placeit/200x300',9,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(739,1,1,9,'7702950','Earum dolores architecto mollitia quas rem.','Mr. Tyler Rau PhD',7118684614055,'https://placeit/200x300',5,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(740,1,1,6,'2801934','Maxime illo voluptas magni.','Wilmer Cronin',7131490458712,'https://placeit/200x300',19,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(741,1,1,6,'5178453','Iusto neque aut non aspernatur amet.','Luz Hilpert',3161304821184,'https://placeit/200x300',17,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(742,1,1,5,'7918202','Debitis consequatur magni laudantium voluptatibus occaecati.','Dr. Imogene Robel DDS',3327371422246,'https://placeit/200x300',21,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(743,1,1,3,'7406312','Dolores aut qui dolorem.','Antwon Hoppe',5384892751628,'https://placeit/200x300',21,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(744,1,1,1,'7553068','Facere sunt quia impedit minima.','Prof. Ivory Gulgowski MD',4876791931559,'https://placeit/200x300',17,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(745,1,1,1,'8556716','Nisi in qui et culpa.','Brendan Lakin',9907550505355,'https://placeit/200x300',16,'2026-03-01 10:55:46','2026-03-01 10:55:46'),(746,1,1,7,'7636700','Eligendi nulla est repudiandae.','Ludie Corkery',4735062728512,'https://placeit/200x300',23,'2026-03-01 10:55:47','2026-03-01 10:55:47'),(747,1,1,4,'4191149','Minima blanditiis ex et.','Bryce Brakus',7899073482577,'https://placeit/200x300',5,'2026-03-01 10:55:47','2026-03-01 10:55:47'),(748,1,1,7,'8491548','Ducimus quia eligendi possimus cum ipsa.','Mr. Arnaldo Zulauf',6632630487681,'https://placeit/200x300',12,'2026-03-01 10:55:47','2026-03-01 10:55:47'),(749,1,1,7,'2255977','Quia aut qui architecto voluptatem natus.','Prof. Ebba Collins',8168123772838,'https://placeit/200x300',5,'2026-03-01 10:55:48','2026-03-01 10:55:48'),(750,1,1,2,'6723000','Ipsam rerum voluptatibus aspernatur aliquam quae laudantium.','Laron Runolfsdottir',3180084346960,'https://placeit/200x300',13,'2026-03-01 10:55:48','2026-03-01 10:55:48'),(751,1,1,6,'1813102','Eum modi molestiae nesciunt accusantium officiis ducimus.','Lurline Nader',5811986504735,'https://placeit/200x300',19,'2026-03-01 10:55:48','2026-03-01 10:55:48'),(752,1,1,6,'5751105','Ut perspiciatis sint quibusdam.','Prof. Chance Reichert III',7314275954375,'https://placeit/200x300',19,'2026-03-01 10:55:49','2026-03-01 10:55:49'),(753,1,1,10,'3286852','Ratione iure non beatae nam et eveniet.','Evelyn Pollich',4091941273642,'https://placeit/200x300',21,'2026-03-01 10:55:49','2026-03-01 10:55:49'),(754,1,1,6,'2522739','Fugiat eos dolorum totam sit autem.','Prof. Mazie Kling II',7493408487895,'https://placeit/200x300',25,'2026-03-01 10:55:49','2026-03-01 10:55:49'),(755,1,1,6,'4849973','Qui at dolorum quibusdam.','Clifford Pouros',5417844890196,'https://placeit/200x300',17,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(756,1,1,9,'1741843','Praesentium consequatur doloribus accusantium.','Evert Powlowski V',9089841401628,'https://placeit/200x300',25,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(757,1,1,9,'6514680','Sequi veritatis libero vero et recusandae et.','Camila Ward',2850408370308,'https://placeit/200x300',5,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(758,1,1,3,'7335334','Dolor enim modi molestias facilis totam voluptatem.','Santina Hauck MD',6105020985482,'https://placeit/200x300',23,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(759,1,1,2,'2669525','Eos unde placeat placeat sunt.','Sallie Mante',407251315387,'https://placeit/200x300',8,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(760,1,1,4,'1451614','Qui esse veritatis quia repellendus.','Paul Schroeder',8093179381119,'https://placeit/200x300',5,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(761,1,1,1,'1484813','Ut mollitia at eos nobis.','Aiyana Becker V',497713899791,'https://placeit/200x300',23,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(762,1,1,1,'1544344','Aut harum et iure.','Sandy Larson',7880286739107,'https://placeit/200x300',24,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(763,1,1,1,'2492742','Sit hic fugit id.','Miss Selena Bode V',8931236161161,'https://placeit/200x300',14,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(764,1,1,9,'2741514','Reiciendis quisquam distinctio laborum sit laudantium ut.','Linwood Feest',7573455799230,'https://placeit/200x300',24,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(765,1,1,2,'3510925','Ut asperiores suscipit dolor numquam optio voluptas.','Abner Jerde',4102185259924,'https://placeit/200x300',9,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(766,1,1,3,'7794788','Similique qui exercitationem quae.','Dr. Frankie Metz V',8551557280619,'https://placeit/200x300',23,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(767,1,1,6,'6520618','Sit optio maiores molestiae officia magnam.','Maxie Kiehn',7673687139894,'https://placeit/200x300',12,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(768,1,1,6,'4595606','Perspiciatis voluptatum ducimus odio labore.','Jerrod Champlin',8014256672982,'https://placeit/200x300',15,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(769,1,1,4,'4914809','Velit ex natus qui ut.','Asha Zieme',9129384445953,'https://placeit/200x300',13,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(770,1,1,1,'2723681','Et saepe est quas similique.','Prof. Tyshawn Dietrich IV',140690185912,'https://placeit/200x300',17,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(771,1,1,7,'6296366','Inventore eaque et exercitationem amet enim quia.','Jennings Schamberger',5253298713267,'https://placeit/200x300',16,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(772,1,1,5,'8370528','Sit ullam aperiam incidunt cumque asperiores.','Jensen Hahn DDS',4183977414844,'https://placeit/200x300',21,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(773,1,1,5,'7818063','Velit reprehenderit qui rem id minus quo.','Vidal Steuber',175129940671,'https://placeit/200x300',18,'2026-03-01 10:55:50','2026-03-01 10:55:50'),(774,1,1,3,'4510535','Est sit temporibus maiores esse voluptates consequatur.','Beryl Bogan',1578079838422,'https://placeit/200x300',7,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(775,1,1,9,'4816184','Dicta quod temporibus enim libero non soluta.','Dr. Sven Kunde',9336238497376,'https://placeit/200x300',23,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(776,1,1,3,'7990839','Earum pariatur pariatur soluta quo eius minima.','Dr. Bonita O\'Reilly Jr.',8860410332137,'https://placeit/200x300',15,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(777,1,1,7,'1489571','Qui in aut doloremque.','Mrs. Makayla Stracke MD',9388536205788,'https://placeit/200x300',14,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(778,1,1,7,'2879735','Neque nihil et qui dolor ipsa tempore.','Alessia Towne',6601476010155,'https://placeit/200x300',22,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(779,1,1,4,'6310223','Ullam esse officiis id quas vitae.','Aiyana Russel MD',1402291190504,'https://placeit/200x300',5,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(780,1,1,5,'7321238','Et laudantium dolorum qui aspernatur asperiores animi.','Elliott Buckridge',5702681509746,'https://placeit/200x300',6,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(781,1,1,2,'4859297','Molestias qui illum eos omnis.','Anissa Wisozk',5448293186738,'https://placeit/200x300',22,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(782,1,1,2,'4630601','Provident quibusdam debitis voluptate.','Mr. Buford Sawayn PhD',9536760265270,'https://placeit/200x300',17,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(783,1,1,3,'7635246','Architecto tempore sunt perspiciatis.','Mrs. Lily Anderson',9209494523984,'https://placeit/200x300',9,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(784,1,1,3,'5990244','Possimus eos labore et quos sed.','Blanca Howell',1264381867839,'https://placeit/200x300',13,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(785,1,1,5,'5339176','Doloribus molestias voluptates consequatur commodi.','Prof. Zane D\'Amore',3866127478613,'https://placeit/200x300',8,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(786,1,1,8,'7116391','At et quia sed.','Demetris Gutmann',8092477761739,'https://placeit/200x300',19,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(787,1,1,1,'6145757','Blanditiis iusto sit architecto necessitatibus ut.','Amparo Carter',9396116474387,'https://placeit/200x300',23,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(788,1,1,8,'8278422','Doloremque fuga molestiae consequuntur est.','Amanda Mertz',467890697220,'https://placeit/200x300',15,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(789,1,1,9,'4950273','Vel laudantium modi voluptatem incidunt.','Maribel Hegmann',1517599320949,'https://placeit/200x300',13,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(790,1,1,2,'2103477','Sed reiciendis culpa suscipit.','Santiago Lindgren',3937993794746,'https://placeit/200x300',23,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(791,1,1,2,'2876347','Blanditiis ex facere perferendis possimus recusandae eos.','Prof. Dena Davis',6449742928953,'https://placeit/200x300',24,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(792,1,1,2,'5015839','Hic ullam sit libero numquam velit.','Chelsey Wintheiser',5692556955375,'https://placeit/200x300',19,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(793,1,1,4,'5185835','Cumque quia quia accusamus.','Mr. Flavio Tillman DDS',7854113823567,'https://placeit/200x300',8,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(794,1,1,1,'6748515','Dignissimos sunt velit qui tempora autem odio.','Sam McCullough III',3119456939479,'https://placeit/200x300',20,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(795,1,1,3,'5308733','Quia consequatur nulla voluptatem.','Mr. Santos Daugherty V',3330910997068,'https://placeit/200x300',18,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(796,1,1,9,'8443098','Perferendis illum expedita reprehenderit enim.','Christ Lehner',4843291740660,'https://placeit/200x300',19,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(797,1,1,2,'4313868','Incidunt provident explicabo et possimus deserunt illum.','Twila Herzog',419135547739,'https://placeit/200x300',5,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(798,1,1,8,'2787443','Unde occaecati culpa et in.','Reed Hayes V',4422334400060,'https://placeit/200x300',5,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(799,1,1,8,'1947979','Voluptatibus molestiae aut repudiandae hic.','Mr. Tobin Rath',4166200377987,'https://placeit/200x300',19,'2026-03-01 10:55:51','2026-03-01 10:55:51'),(800,1,1,4,'2819676','Quis harum deleniti sunt magnam.','Dayton Mosciski',623539444222,'https://placeit/200x300',18,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(801,1,1,10,'5789775','Aut voluptatum illo nisi.','Eusebio Renner',8722335334552,'https://placeit/200x300',11,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(802,1,1,1,'8196969','Culpa nobis temporibus aspernatur ipsa.','Prof. Giovanny Fay',1852256511668,'https://placeit/200x300',14,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(803,1,1,4,'7886890','Voluptas est nisi est ullam doloremque possimus.','Dr. Emilia Anderson',7565546851088,'https://placeit/200x300',23,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(804,1,1,6,'3462388','Ut itaque voluptas aliquid quos.','Dr. Daren Mayert',8462193749975,'https://placeit/200x300',25,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(805,1,1,3,'6621902','Est non cumque modi.','Miss Leslie Towne',4564207194260,'https://placeit/200x300',10,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(806,1,1,3,'4394086','Impedit libero quaerat dolorem.','Prof. Kyler Kohler DDS',5942697387475,'https://placeit/200x300',12,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(807,1,1,5,'8149623','Earum et enim sed doloremque officiis deleniti.','Delmer McClure',1451102411895,'https://placeit/200x300',23,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(808,1,1,6,'6413966','Dolore eos ipsa consequatur.','Alycia Koepp',548979867809,'https://placeit/200x300',24,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(809,1,1,6,'7314052','Nobis ab quo facilis ut voluptate iste.','Jamaal Becker',504931461157,'https://placeit/200x300',17,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(810,1,1,8,'2712420','Commodi saepe sit velit velit.','Dr. Isac Streich DDS',8356558340573,'https://placeit/200x300',19,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(811,1,1,9,'3426596','Enim rerum iste sapiente aliquid facilis.','Kevin Brekke',2494928940391,'https://placeit/200x300',5,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(812,1,1,6,'2133709','Autem aut est omnis.','Shaylee Hahn',3170298154239,'https://placeit/200x300',9,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(813,1,1,9,'3933165','Non consectetur magnam ut impedit totam odio.','Miss Demetris Franecki PhD',7183554562859,'https://placeit/200x300',18,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(814,1,1,3,'8467873','Aliquam molestiae officiis aut reprehenderit.','Dr. Therese Hyatt I',5388840746575,'https://placeit/200x300',18,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(815,1,1,5,'1300485','Sed corporis nesciunt explicabo.','Prof. Lillian Hackett',6695030377150,'https://placeit/200x300',9,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(816,1,1,4,'7153459','Eos debitis temporibus distinctio.','Kade Brown II',9848493518500,'https://placeit/200x300',13,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(817,1,1,10,'5421930','Repudiandae temporibus reprehenderit et ut et.','Marlon Hickle',9435782642918,'https://placeit/200x300',22,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(818,1,1,4,'4206629','Non alias asperiores voluptas nulla.','Mr. Gerhard Dickens',4287935025643,'https://placeit/200x300',10,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(819,1,1,2,'7755131','Dolorum dolores aut voluptas perspiciatis et porro.','Carmel Zulauf',9487131027280,'https://placeit/200x300',8,'2026-03-01 10:55:52','2026-03-01 10:55:52'),(820,1,1,5,'7558816','Dolor a magnam magni enim.','Mrs. Arlene Greenfelder I',7818549278650,'https://placeit/200x300',6,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(821,1,1,2,'2805360','Odit omnis molestiae ducimus ut voluptatem hic.','Dr. Bethel Johns Sr.',3518029869289,'https://placeit/200x300',23,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(822,1,1,1,'7655667','Consequatur voluptatem deleniti voluptas corrupti.','Francisco Schmidt',8330500023851,'https://placeit/200x300',25,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(823,1,1,9,'4382906','Recusandae eos dolore commodi.','Mr. Hilbert Metz',1532211004601,'https://placeit/200x300',5,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(824,1,1,2,'2563930','Consequatur aut itaque reiciendis quis suscipit.','Mr. Manley Wehner',2123599586521,'https://placeit/200x300',11,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(825,1,1,1,'5667005','Maxime quos et at expedita non blanditiis.','Antonetta Conroy',2792613629706,'https://placeit/200x300',17,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(826,1,1,3,'1346247','Voluptas ullam sint odit voluptas omnis quos.','Miss Alanis Predovic Sr.',8212750954379,'https://placeit/200x300',23,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(827,1,1,3,'1186276','Temporibus facilis consequatur consequatur quam molestiae.','Soledad Wilderman',1554080980237,'https://placeit/200x300',6,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(828,1,1,7,'6328722','Et laborum amet architecto et voluptate quod.','Keanu Hudson',2103308667017,'https://placeit/200x300',22,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(829,1,1,7,'1864211','Nemo et et eum non omnis.','Herman Aufderhar',9850837142845,'https://placeit/200x300',9,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(830,1,1,5,'7766759','Nostrum iusto nesciunt ut repellendus.','Ms. Catherine Stracke',4275468078441,'https://placeit/200x300',24,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(831,1,1,5,'8379915','Et cumque et aut eaque voluptas.','Yasmin Kilback',9484743516607,'https://placeit/200x300',9,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(832,1,1,1,'6318587','Dolores sunt expedita ullam quam voluptatem.','Destany Schmeler',7658950123879,'https://placeit/200x300',15,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(833,1,1,2,'4290687','Ex et corporis rerum.','Dr. Morris Jacobson Sr.',9105409213202,'https://placeit/200x300',10,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(834,1,1,10,'8744840','Aliquam ea soluta libero corrupti.','Rhianna Wiegand',2246819778572,'https://placeit/200x300',20,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(835,1,1,2,'7993183','Animi inventore debitis aut eaque sed voluptatem.','Tina Fahey PhD',3394506627586,'https://placeit/200x300',13,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(836,1,1,6,'4114507','Quam ea laudantium nemo ipsum.','Germaine Koch',7230592803502,'https://placeit/200x300',15,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(837,1,1,2,'4184734','Est est facere ex quae at voluptatem.','Caitlyn Rosenbaum',1210199234967,'https://placeit/200x300',11,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(838,1,1,3,'1828718','Laborum sunt aut dignissimos quidem voluptatem consequatur.','Dr. Gonzalo Fisher DVM',4883913881586,'https://placeit/200x300',20,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(839,1,1,3,'7122338','Unde qui non iusto maiores.','Mr. Trent Jacobson DDS',3947438401931,'https://placeit/200x300',5,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(840,1,1,8,'5778760','Quas blanditiis voluptates voluptatem possimus id quos.','Chasity Reichert MD',9308955345780,'https://placeit/200x300',9,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(841,1,1,1,'2186688','Culpa officia illo voluptate reprehenderit.','Shaylee Feest',7403078105685,'https://placeit/200x300',13,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(842,1,1,9,'1104404','Ut alias molestiae provident voluptas hic.','Unique Paucek',7111456925618,'https://placeit/200x300',19,'2026-03-01 10:55:53','2026-03-01 10:55:53'),(843,1,1,1,'2268480','Rerum quaerat aperiam expedita aut quae.','Karl Mayer',7613447849731,'https://placeit/200x300',11,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(844,1,1,4,'1290745','Voluptatum quibusdam cum sit nihil nulla.','Madaline Rice',6764635532018,'https://placeit/200x300',6,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(845,1,1,2,'1595881','Enim rerum sunt facere quasi.','Mr. Kole Feest II',9238516985240,'https://placeit/200x300',19,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(846,1,1,2,'5395725','Ab autem sit nemo.','Ludwig Rodriguez',1617594407628,'https://placeit/200x300',19,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(847,1,1,6,'8362550','Hic nobis cum laboriosam omnis.','Ansley Moore',1326784945252,'https://placeit/200x300',16,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(848,1,1,10,'2847729','Dignissimos consequatur exercitationem blanditiis.','Gust Goodwin',8771723959464,'https://placeit/200x300',5,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(849,1,1,6,'7696260','Natus officia placeat consequatur quasi et fugiat.','Khalil Greenfelder',4378622600851,'https://placeit/200x300',17,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(850,1,1,1,'1693145','Veritatis aut ipsum ducimus sint quia.','Moriah Monahan DDS',5536946050632,'https://placeit/200x300',8,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(851,1,1,9,'6143714','Quisquam expedita quia quod in animi distinctio.','Ada Mayert',2786043191186,'https://placeit/200x300',17,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(852,1,1,7,'5635124','Perferendis vero adipisci at et asperiores minus.','Brad Stehr DDS',7414583397922,'https://placeit/200x300',11,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(853,1,1,5,'4099063','Delectus est dolor adipisci.','Elaina Kuphal',9382710413518,'https://placeit/200x300',23,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(854,1,1,10,'2142919','Quod distinctio quidem possimus.','Sophie Renner',4298091906011,'https://placeit/200x300',13,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(855,1,1,7,'6134082','Aut omnis in quia.','Eino Gleichner',2416051122802,'https://placeit/200x300',18,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(856,1,1,3,'2900448','Quasi ut enim vel consequatur.','Ms. Marisa Russel',170769915393,'https://placeit/200x300',8,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(857,1,1,2,'5707055','In delectus consequatur a cupiditate architecto.','Prof. King Howell',7119606824323,'https://placeit/200x300',9,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(858,1,1,9,'1223378','Aut excepturi quia dolorem explicabo.','Prof. Bruce Hermann III',7061931545698,'https://placeit/200x300',20,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(859,1,1,4,'8674767','Maxime nulla sapiente distinctio qui architecto.','Carley Blick MD',2983006081007,'https://placeit/200x300',21,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(860,1,1,8,'1422512','Occaecati qui placeat eius.','Adah Emard DVM',5676994949325,'https://placeit/200x300',8,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(861,1,1,10,'6825824','Et tempora harum enim dolores.','Kamille Kuhn Jr.',3720018089763,'https://placeit/200x300',13,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(862,1,1,5,'5053573','Voluptates voluptates eum modi ratione.','Helmer Schuppe',512143380791,'https://placeit/200x300',20,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(863,1,1,6,'6087650','Dolor exercitationem ullam non reiciendis similique sint.','Ms. Miracle Klein',7597403118416,'https://placeit/200x300',24,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(864,1,1,8,'2485788','Occaecati eveniet aut enim molestias quisquam.','Antoinette Orn III',5880906991757,'https://placeit/200x300',23,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(865,1,1,3,'2587922','Exercitationem laborum doloremque accusamus nesciunt expedita.','Kathleen Reinger',6994085531099,'https://placeit/200x300',24,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(866,1,1,5,'7834450','Placeat non cupiditate eligendi.','Alexzander Deckow',9660213388237,'https://placeit/200x300',25,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(867,1,1,7,'6273338','Rem assumenda beatae et maxime.','Tess Renner',5906299815873,'https://placeit/200x300',19,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(868,1,1,9,'1775200','Assumenda ab tempore rerum earum libero quibusdam eos.','Mrs. Naomie Leuschke DVM',1486766118323,'https://placeit/200x300',9,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(869,1,1,8,'2752552','Laboriosam molestiae eum possimus non doloribus.','Miss Annetta Oberbrunner PhD',3251530063998,'https://placeit/200x300',8,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(870,1,1,7,'3685681','Accusamus ipsa eligendi accusamus ad quae quia.','Zella Will',6360472551900,'https://placeit/200x300',8,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(871,1,1,6,'5699277','Nulla rerum consequuntur et.','Mrs. Josefa Gorczany',9246011379174,'https://placeit/200x300',7,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(872,1,1,3,'2547228','Vero a doloribus dignissimos repudiandae amet in.','Chelsie Waelchi',3082870953287,'https://placeit/200x300',7,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(873,1,1,9,'5579623','Vel quia adipisci eligendi.','Prof. Vallie West',1634780716449,'https://placeit/200x300',15,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(874,1,1,7,'2660211','Iure voluptatibus qui fugiat ut ipsum.','Emelia Goyette',6954054569294,'https://placeit/200x300',23,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(875,1,1,8,'3988337','Ab eligendi quis et occaecati.','Thora Kshlerin',5201502776270,'https://placeit/200x300',11,'2026-03-01 10:55:54','2026-03-01 10:55:54'),(876,1,1,9,'2569401','A quia culpa dolorem quos.','Carter Zulauf',1659099778308,'https://placeit/200x300',14,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(877,1,1,8,'1219749','Distinctio sit aut ut.','Neoma Rau DDS',9159832327456,'https://placeit/200x300',11,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(878,1,1,5,'2798589','Accusamus ipsum omnis a non natus.','Freddy Steuber',9245943772749,'https://placeit/200x300',18,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(879,1,1,2,'4179802','Pariatur asperiores commodi quo eveniet optio porro.','Sandra Grimes III',738504889363,'https://placeit/200x300',18,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(880,1,1,7,'6028627','Iure ut alias aperiam et et.','Herminia Koch',7639822054019,'https://placeit/200x300',12,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(881,1,1,1,'3478166','Voluptas nihil aut dolor.','Mrs. Eve Gaylord Jr.',804762984642,'https://placeit/200x300',11,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(882,1,1,3,'8631060','Dolor rerum voluptatibus ipsum assumenda.','Kevin Okuneva',7682004776889,'https://placeit/200x300',23,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(883,1,1,2,'7542190','Tenetur excepturi excepturi facere id.','Keagan Treutel',4119710440269,'https://placeit/200x300',6,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(884,1,1,5,'2207502','Mollitia dolor minus animi veritatis.','Lola Klocko',6621472763268,'https://placeit/200x300',21,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(885,1,1,4,'7849149','Similique debitis modi sunt accusamus sunt.','Prof. Ellis Lubowitz',7442101933192,'https://placeit/200x300',18,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(886,1,1,5,'5608736','Sapiente qui qui suscipit nostrum culpa.','Prof. Norma Howell',5151736418715,'https://placeit/200x300',25,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(887,1,1,4,'2839692','Ullam inventore voluptatibus dolores eligendi magnam et.','Jovanny Auer',1371631172671,'https://placeit/200x300',6,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(888,1,1,5,'1138134','Consequatur explicabo illo sint consequatur assumenda in.','Kianna Bosco DVM',7513450758252,'https://placeit/200x300',23,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(889,1,1,10,'7363527','Aut consequatur qui at.','Marilou Crooks',2279396948144,'https://placeit/200x300',8,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(890,1,1,4,'5608298','Temporibus neque dolorem vitae.','Enos Turner',4283609723822,'https://placeit/200x300',9,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(891,1,1,5,'5577974','Corrupti ipsa quisquam accusamus.','Ms. Ida Gerlach',2869527607097,'https://placeit/200x300',14,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(892,1,1,7,'2137863','Quas dicta dolorem commodi corrupti vel.','Korey Olson',1418299349615,'https://placeit/200x300',10,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(893,1,1,7,'7902287','Dolores unde quis quia ea delectus.','Prof. Santos Kihn IV',9642161363139,'https://placeit/200x300',24,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(894,1,1,8,'5397414','Alias ratione soluta vel facere qui quos.','Mr. Aric Fahey',5517630561757,'https://placeit/200x300',16,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(895,1,1,5,'2837495','Minus accusamus maxime sint modi voluptatibus et.','Gaetano Hirthe',2870614444396,'https://placeit/200x300',11,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(896,1,1,5,'6473492','Iure sunt natus cum voluptas ducimus.','Arlo Johnson',9715468758738,'https://placeit/200x300',5,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(897,1,1,2,'4296983','Quo rerum ea aliquam.','Lukas Lehner',7378605653147,'https://placeit/200x300',12,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(898,1,1,10,'3706120','Mollitia sunt omnis sint.','Miss Elisa Becker',4992190401179,'https://placeit/200x300',10,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(899,1,1,6,'7149587','Dicta voluptatem et qui.','Ms. Rahsaan Towne',3923766517858,'https://placeit/200x300',8,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(900,1,1,3,'4824163','Voluptas id veniam itaque distinctio soluta.','Jules Hickle IV',4908907952209,'https://placeit/200x300',24,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(901,1,1,10,'2533630','Corporis dignissimos omnis rerum.','Dereck Graham MD',6981724349535,'https://placeit/200x300',12,'2026-03-01 10:55:55','2026-03-01 10:55:55'),(902,1,1,5,'5240029','Sint voluptatem sint autem vel.','Verona Rempel Sr.',3618958757524,'https://placeit/200x300',16,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(903,1,1,6,'7260288','Maxime illum suscipit rem.','Haskell Klocko',1050737375710,'https://placeit/200x300',5,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(904,1,1,2,'7487359','Suscipit id odio modi molestiae sed.','Tad Bahringer',3873375792125,'https://placeit/200x300',5,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(905,1,1,5,'3621668','Perferendis similique sed adipisci distinctio.','Kale Schinner',551967533594,'https://placeit/200x300',11,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(906,1,1,6,'7448682','Sequi sint reiciendis aperiam quo suscipit.','Francesco Marvin',6511304744872,'https://placeit/200x300',7,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(907,1,1,9,'3808758','Placeat quia consequatur commodi.','Charley Quigley',5856287996940,'https://placeit/200x300',8,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(908,1,1,3,'2239254','Laborum possimus qui ut mollitia.','Murphy Schaden',4973636565822,'https://placeit/200x300',21,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(909,1,1,6,'7826953','Vitae error sed repellendus.','Leopoldo Gusikowski',1080326681205,'https://placeit/200x300',10,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(910,1,1,3,'2330290','Mollitia dolorem ratione voluptatem totam.','Glen Trantow',2945325203836,'https://placeit/200x300',9,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(911,1,1,5,'3288607','Explicabo quia sit saepe.','Leonie Kunde I',2628712347015,'https://placeit/200x300',8,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(912,1,1,7,'6941998','Tempora rerum vel assumenda nemo eos minus.','Kendrick McGlynn',9162269270844,'https://placeit/200x300',13,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(913,1,1,6,'7845379','Autem a assumenda dolore.','Allison Jakubowski',8166198928457,'https://placeit/200x300',18,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(914,1,1,6,'6663816','Aperiam est aut odio.','Cecelia Erdman MD',4702074059729,'https://placeit/200x300',21,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(915,1,1,5,'3361611','Voluptatem suscipit excepturi id.','Aliyah Jast',2002001876422,'https://placeit/200x300',20,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(916,1,1,10,'6240285','Et repellendus animi minus exercitationem.','Dylan Marks',1637666424704,'https://placeit/200x300',6,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(917,1,1,10,'7530233','Non est rem dolores.','Dr. Coby Wunsch',1413145745399,'https://placeit/200x300',17,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(918,1,1,10,'3762648','Aut rerum ut alias unde aut.','Nicklaus Senger',9742780624366,'https://placeit/200x300',17,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(919,1,1,9,'2033570','Voluptas optio officiis perspiciatis.','Candice Ebert',2095039866978,'https://placeit/200x300',23,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(920,1,1,9,'6707237','Ducimus sed sunt quia.','Elvis Hagenes',7494269164208,'https://placeit/200x300',11,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(921,1,1,7,'3342309','Culpa tempora dolorem sit nostrum quis.','Dagmar Kozey DDS',8010935382623,'https://placeit/200x300',24,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(922,1,1,2,'2425431','Ab voluptas corrupti iste.','Jaycee Ziemann',8923534886693,'https://placeit/200x300',13,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(923,1,1,4,'1691098','Sunt dolorum excepturi eum ut distinctio voluptas.','Prof. Trinity Stanton',2989042363138,'https://placeit/200x300',14,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(924,1,1,3,'6789615','Rem non cum sed libero consequatur eaque.','Prof. Johann Mohr V',104649400433,'https://placeit/200x300',12,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(925,1,1,2,'4501489','Nihil aut exercitationem natus quae non voluptas.','Ethan Kuhlman',1954094829612,'https://placeit/200x300',19,'2026-03-01 10:55:56','2026-03-01 10:55:56'),(926,1,1,9,'1192614','Quis consequatur rerum et sequi non.','Stefan Lowe Sr.',6576542213931,'https://placeit/200x300',7,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(927,1,1,7,'4029271','Consectetur modi fugiat labore excepturi provident consequuntur.','Prof. Demarcus Dicki',1900822635154,'https://placeit/200x300',10,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(928,1,1,4,'8136136','Earum laboriosam aperiam eum exercitationem nisi ut.','Peyton Borer Sr.',2318402725871,'https://placeit/200x300',24,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(929,1,1,10,'5531070','Similique ut adipisci assumenda odit.','Dr. Giles Balistreri',1886408156070,'https://placeit/200x300',8,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(930,1,1,6,'1548518','Et praesentium sed sint et illo ipsa.','Montana Harris',4095216033870,'https://placeit/200x300',14,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(931,1,1,8,'6705713','Rem numquam dolorem perferendis quia sunt.','Mr. Nathen Kshlerin II',7199068469362,'https://placeit/200x300',16,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(932,1,1,5,'7122616','Explicabo eius inventore vitae dicta quo quia.','Prof. Frederic Bednar',3858565935216,'https://placeit/200x300',21,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(933,1,1,5,'5639500','Unde laboriosam dolorem sed.','Blaze Predovic DVM',9118111288345,'https://placeit/200x300',6,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(934,1,1,1,'8375563','Deleniti officia soluta quaerat voluptas et.','Michaela Koss I',7486620634758,'https://placeit/200x300',15,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(935,1,1,2,'5786374','Officiis repellendus libero sit.','Ali Lemke',8291238547739,'https://placeit/200x300',22,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(936,1,1,8,'8215146','Ab earum occaecati et omnis.','Miss Agustina Weissnat',9551730092878,'https://placeit/200x300',20,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(937,1,1,4,'5454268','Earum quis labore consequatur ea qui.','Braulio McDermott V',8751257943085,'https://placeit/200x300',9,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(938,1,1,2,'8618573','Voluptas aliquam pariatur ex.','Mylene Metz',5631560689944,'https://placeit/200x300',17,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(939,1,1,2,'7541646','Autem molestiae sunt dicta dolores rerum.','Mr. Jessie Hintz II',4820223451184,'https://placeit/200x300',17,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(940,1,1,7,'4085620','Saepe quos ut deserunt quae.','Jackie Gleichner Sr.',4226436552876,'https://placeit/200x300',10,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(941,1,1,4,'2459842','Corporis corporis in consequatur.','Prof. Uriah Wuckert III',1137423689686,'https://placeit/200x300',9,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(942,1,1,8,'4869698','Occaecati aliquam rerum nihil est.','Earlene Hermiston',6073580341133,'https://placeit/200x300',17,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(943,1,1,3,'3511133','Facere fuga consectetur vitae.','Hans Fay DDS',2844963990842,'https://placeit/200x300',6,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(944,1,1,7,'3850999','Rerum voluptatem ut est est nihil.','Mr. Elmore Lemke',9408736167874,'https://placeit/200x300',14,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(945,1,1,1,'7716657','Nisi aut corrupti nulla quo.','Shakira Schaden',2335604536005,'https://placeit/200x300',23,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(946,1,1,4,'3286043','Dolores velit aut aut qui voluptas doloremque.','Megane Little',5624110646672,'https://placeit/200x300',21,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(947,1,1,2,'3099794','Omnis ut sint explicabo.','Ali Murray',7045821734621,'https://placeit/200x300',9,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(948,1,1,6,'2158842','Et eos saepe nulla.','Dr. Mark Predovic',5135823685143,'https://placeit/200x300',17,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(949,1,1,8,'8570493','Placeat quia sunt enim eligendi.','Prof. Orlando Botsford V',2657206946380,'https://placeit/200x300',7,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(950,1,1,8,'7358452','Eius qui neque eum atque.','Alba Dickens DVM',8979548056904,'https://placeit/200x300',23,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(951,1,1,10,'2248790','Quisquam earum expedita a et reprehenderit laboriosam.','Sonny Johnston DDS',9480081559146,'https://placeit/200x300',5,'2026-03-01 10:55:57','2026-03-01 10:55:57'),(952,1,1,7,'4091383','Ea ut ea dolorum a debitis.','Bart Hilpert',652161132801,'https://placeit/200x300',10,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(953,1,1,7,'7832663','Accusantium corrupti unde ab.','Mr. Reed Mayert Jr.',8664840051404,'https://placeit/200x300',8,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(954,1,1,2,'3008115','Qui officiis inventore neque sit repellat sit.','Prof. Devin Torphy',817593000566,'https://placeit/200x300',24,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(955,1,1,4,'5350878','Qui ut esse culpa temporibus quam ut.','Miss Otha Cronin',175107068144,'https://placeit/200x300',12,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(956,1,1,6,'4593479','Ea aspernatur praesentium reprehenderit quidem.','Hilda Koss',9960487923722,'https://placeit/200x300',18,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(957,1,1,4,'5046385','Similique ducimus nemo nisi quis aut maxime.','Zelda Wintheiser',6651515210091,'https://placeit/200x300',14,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(958,1,1,8,'8339742','Numquam repudiandae rerum quod qui.','Liliana Wiegand IV',1084782550518,'https://placeit/200x300',25,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(959,1,1,1,'6212848','Voluptatum occaecati deserunt cupiditate.','Rosendo Hansen MD',6414618913258,'https://placeit/200x300',12,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(960,1,1,8,'3860936','Laborum ea suscipit ut dolorum quia quis.','Matilde Willms',9190227744250,'https://placeit/200x300',8,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(961,1,1,1,'2619544','Et facere officiis laudantium omnis libero.','Gustave Kuhn',2655896768879,'https://placeit/200x300',24,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(962,1,1,7,'5912527','Qui velit autem enim fugit corporis similique.','Anne Jakubowski',4113463553276,'https://placeit/200x300',7,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(963,1,1,5,'6050082','Qui consectetur dolores et tempore ut ipsum sunt.','Kameron Gaylord III',1548989355166,'https://placeit/200x300',21,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(964,1,1,1,'8847030','Voluptas sit est esse magni consequatur.','Darrion Pacocha',2691125593485,'https://placeit/200x300',20,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(965,1,1,10,'2804314','Minus et blanditiis dicta quis maiores et.','Janie Pouros III',45307523128,'https://placeit/200x300',15,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(966,1,1,3,'3681976','Omnis vitae sint tempora est.','Ilene Crooks',9088556402159,'https://placeit/200x300',24,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(967,1,1,9,'6548737','Eaque animi quibusdam cum et ullam atque.','Lennie Price',7380112682602,'https://placeit/200x300',6,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(968,1,1,8,'3840540','Possimus maiores odio labore hic laudantium at.','Sylvester Lynch Jr.',4054612033921,'https://placeit/200x300',16,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(969,1,1,9,'7801877','Numquam et non nesciunt tempore.','Mckenzie Schumm',208127373087,'https://placeit/200x300',23,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(970,1,1,3,'2739396','Non voluptatem cum odit et tempora.','Isai Kihn',704942689865,'https://placeit/200x300',21,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(971,1,1,9,'2428102','Doloribus et aut ut.','Aliyah Dickinson',4213539195994,'https://placeit/200x300',16,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(972,1,1,9,'2497583','Eum aperiam qui ducimus architecto sit.','Anne O\'Hara',4745310201681,'https://placeit/200x300',21,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(973,1,1,4,'5786795','Est dolores et quae incidunt eos.','Xavier Wunsch PhD',6207051150478,'https://placeit/200x300',8,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(974,1,1,4,'3841989','Molestiae illo illum quae et expedita et.','Kade Friesen',7091389558612,'https://placeit/200x300',22,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(975,1,1,6,'3964494','Velit odio nobis quis consequatur incidunt qui.','Dr. Odell Stehr',4884943223551,'https://placeit/200x300',19,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(976,1,1,3,'5878041','Eum voluptates quos omnis totam.','Zakary Zemlak',8155933480176,'https://placeit/200x300',11,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(977,1,1,10,'4297780','Voluptate libero deserunt vel rerum.','Miss Damaris Heaney I',1672073099015,'https://placeit/200x300',18,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(978,1,1,4,'8198702','Est quas totam ut voluptates provident.','Mr. Al Shanahan',1589611771343,'https://placeit/200x300',9,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(979,1,1,6,'4637451','Enim fugiat voluptates dicta quod.','Perry Ferry',3714468077722,'https://placeit/200x300',5,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(980,1,1,9,'4249074','Necessitatibus animi qui ad voluptate nisi et.','Zachary Huel',3898720817162,'https://placeit/200x300',24,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(981,1,1,3,'2963616','Est aut consequatur sint ut eligendi.','Rylan Schuster',8429238362681,'https://placeit/200x300',17,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(982,1,1,3,'6341973','Earum quis autem praesentium omnis similique.','Jazmin Leannon',2278056335874,'https://placeit/200x300',23,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(983,1,1,3,'6095360','Ea nemo nesciunt rerum ab qui debitis.','Dr. Jamel Sporer',6335693840829,'https://placeit/200x300',11,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(984,1,1,10,'3155306','Repellendus vero perferendis consequatur autem.','Miss Maureen Kemmer',5928836499803,'https://placeit/200x300',19,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(985,1,1,2,'6260900','Culpa libero ullam quia laudantium expedita.','Ellen Schneider',9038283390519,'https://placeit/200x300',23,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(986,1,1,8,'3706082','Aut et cumque aliquid.','Arden Sanford I',6422729598158,'https://placeit/200x300',14,'2026-03-01 10:55:58','2026-03-01 10:55:58'),(987,1,1,8,'3109411','Eum deserunt quia unde nesciunt maxime.','Jacklyn Rosenbaum',6083497550009,'https://placeit/200x300',15,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(988,1,1,10,'6217457','Veritatis delectus ab vitae.','Mrs. Rebeka West',3290010744163,'https://placeit/200x300',15,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(989,1,1,10,'7467106','Sunt animi perferendis perferendis et.','Katelyn Bednar',1992692940728,'https://placeit/200x300',21,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(990,1,1,6,'2829285','Consequatur facere porro explicabo minima.','Edward Wyman',8650520382784,'https://placeit/200x300',17,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(991,1,1,10,'7759211','Possimus est quae fuga fuga atque autem.','Candelario Carter',8267439958919,'https://placeit/200x300',21,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(992,1,1,4,'7812245','Enim rerum dolorem nostrum quia velit inventore.','Eleanore Gaylord',7279708495798,'https://placeit/200x300',23,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(993,1,1,9,'2236765','Sequi aut accusamus architecto cum similique et.','Prof. Opal Shields IV',2043327923391,'https://placeit/200x300',7,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(994,1,1,7,'2629804','Enim aut consequatur molestias provident.','Dr. Jakob DuBuque Jr.',5735319859494,'https://placeit/200x300',13,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(995,1,1,10,'3289446','Culpa voluptatibus aut in inventore ut quo.','Cielo Bode',3480947475838,'https://placeit/200x300',23,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(996,1,1,2,'6098064','Sapiente quos eos enim veritatis.','Desiree Leannon',4410059923070,'https://placeit/200x300',6,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(997,1,1,4,'3560924','Qui sunt omnis occaecati non expedita repellendus.','Mr. Florencio Yundt',4546980367451,'https://placeit/200x300',9,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(998,1,1,3,'5817841','Et quos modi doloribus ad nihil quibusdam.','Gennaro Renner',6721712890539,'https://placeit/200x300',11,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(999,1,1,3,'4268174','Commodi nostrum impedit ut temporibus illo.','Rosamond Okuneva',4727611260369,'https://placeit/200x300',19,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(1000,1,1,4,'2807352','Sequi vel consequatur occaecati incidunt.','Prof. Brad Carter',2923441149955,'https://placeit/200x300',24,'2026-03-01 10:55:59','2026-03-01 10:55:59');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_category`
--

DROP TABLE IF EXISTS `books_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_category_school_id_foreign` (`school_id`),
  CONSTRAINT `books_category_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_category`
--

LOCK TABLES `books_category` WRITE;
/*!40000 ALTER TABLE `books_category` DISABLE KEYS */;
INSERT INTO `books_category` VALUES (1,1,'Astro Physics','2026-03-01 10:54:55','2026-03-01 10:54:55'),(2,1,'Arts','2026-03-01 10:54:55','2026-03-01 10:54:55'),(3,1,'Comics','2026-03-01 10:54:56','2026-03-01 10:54:56'),(4,1,'Computer Science','2026-03-01 10:54:56','2026-03-01 10:54:56'),(5,1,'History','2026-03-01 10:54:56','2026-03-01 10:54:56'),(6,1,'Music','2026-03-01 10:54:56','2026-03-01 10:54:56'),(7,1,'Technology','2026-03-01 10:54:56','2026-03-01 10:54:56'),(8,1,'Magazines','2026-03-01 10:54:56','2026-03-01 10:54:56'),(9,1,'Question Bank','2026-03-01 10:54:56','2026-03-01 10:54:56'),(10,1,'Projects','2026-03-01 10:54:56','2026-03-01 10:54:56');
/*!40000 ALTER TABLE `books_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_lending`
--

DROP TABLE IF EXISTS `books_lending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_lending` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `book_code_no` int NOT NULL,
  `library_card_no` int NOT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issued_by` int unsigned DEFAULT NULL,
  `status` enum('pending','returned','cancel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_lending_user_id_foreign` (`user_id`),
  KEY `books_lending_issued_by_foreign` (`issued_by`),
  CONSTRAINT `books_lending_issued_by_foreign` FOREIGN KEY (`issued_by`) REFERENCES `users` (`id`),
  CONSTRAINT `books_lending_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_lending`
--

LOCK TABLES `books_lending` WRITE;
/*!40000 ALTER TABLE `books_lending` DISABLE KEYS */;
/*!40000 ALTER TABLE `books_lending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_log`
--

DROP TABLE IF EXISTS `call_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `calling_purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `incoming_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outgoing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration` time DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `entry_by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `call_log_school_id_foreign` (`school_id`),
  KEY `call_log_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `call_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `call_log_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_log`
--

LOCK TABLES `call_log` WRITE;
/*!40000 ALTER TABLE `call_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `call_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `standard_id` int unsigned NOT NULL,
  `subject_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chapters_school_id_foreign` (`school_id`),
  KEY `chapters_standard_id_foreign` (`standard_id`),
  KEY `chapters_subject_id_foreign` (`subject_id`),
  CONSTRAINT `chapters_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `chapters_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `chapters_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned NOT NULL,
  `state_id` int unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_country_id_foreign` (`country_id`),
  KEY `cities_state_id_foreign` (`state_id`),
  CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,7,1,'Amaravati',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(2,7,2,'Itanagar',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(3,7,3,'Dispur',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(4,7,4,'Patna',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(5,7,5,'Raipur',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(6,7,6,'Panaji',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(7,7,7,'Gandhinagar',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(8,7,8,'Chandigarh',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(9,7,9,'Shimla',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(10,7,10,'Srinagar',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(11,7,11,'Ranchi',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(12,7,12,'Bengaluru',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(13,7,13,'Thiruvananthapuram',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(14,7,14,'Bhopal',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(15,7,15,'Mumbai',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(16,7,16,'Imphal',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(17,7,17,'Shillong',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(18,7,18,'Aizawl',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(19,7,19,'Kohima',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(20,7,20,'Bhubaneswar',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(21,7,21,'Chandigarh',1,'2026-03-01 10:54:10','2026-03-01 10:54:10',NULL),(22,7,22,'Jaipur',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(23,7,23,'Gangtok',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(24,7,24,'Chennai',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(25,7,25,'Hyderabad',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(26,7,26,'Agartala',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(27,7,27,'Lucknow',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(28,7,28,'Dehradun',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(29,7,29,'Kolkata',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(30,7,24,'Coimbatore',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(31,7,24,'Madurai',1,'2026-03-01 10:54:11','2026-03-01 10:54:11',NULL),(32,7,24,'Trichy',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(33,7,15,'Pune',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(34,7,13,'Cochin',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(35,7,24,'Salem',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(36,7,24,'Tirunelveli',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(37,7,24,'Tiruppur',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(38,7,24,'Vellore',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(39,7,24,'Erode',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(40,7,24,'Thoothukudi',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(41,7,24,'Dindigul',1,'2026-03-01 10:54:12','2026-03-01 10:54:12',NULL),(42,7,24,'Thanjavur',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(43,7,24,'Ranipet',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(44,7,24,'Sivakasi',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(45,7,24,'Karur',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(46,7,24,'Ooty',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(47,7,24,'Hosur',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(48,7,24,'Nagercoil',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(49,7,24,'Kanchipuram',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(50,7,24,'Kumarapalayam',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(51,7,24,'Namakkal',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(52,7,24,'Karaikkudi',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(53,7,24,'Neyveli',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(54,7,24,'Cuddalore',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(55,7,24,'Kumbakonam',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(56,7,24,'Tiruvannamalai',1,'2026-03-01 10:54:13','2026-03-01 10:54:13',NULL),(57,7,24,'Pollachi',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(58,7,24,'Rajapalayam',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(59,7,24,'Virudhunagar',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(60,7,24,'Gudiyatham',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(61,7,24,'Pudukkotai',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(62,7,24,'Vaniyambadi',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(63,7,24,'Ambur',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(64,7,24,'Tirupathur',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(65,7,24,'Nagapattinam',1,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_room_page_attachments`
--

DROP TABLE IF EXISTS `class_room_page_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_room_page_attachments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int unsigned NOT NULL,
  `attachment_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_room_page_attachments_page_id_foreign` (`page_id`),
  CONSTRAINT `class_room_page_attachments_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `class_room_pages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_room_page_attachments`
--

LOCK TABLES `class_room_page_attachments` WRITE;
/*!40000 ALTER TABLE `class_room_page_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_room_page_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_room_page_categories`
--

DROP TABLE IF EXISTS `class_room_page_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_room_page_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_room_page_categories_school_id_foreign` (`school_id`),
  KEY `class_room_page_categories_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `class_room_page_categories_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `class_room_page_categories_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_room_page_categories`
--

LOCK TABLES `class_room_page_categories` WRITE;
/*!40000 ALTER TABLE `class_room_page_categories` DISABLE KEYS */;
INSERT INTO `class_room_page_categories` VALUES (1,1,1,'english',1,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(2,1,1,'general_knowledge',1,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(3,1,1,'mathematics',1,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(4,1,1,'others',1,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(5,1,1,'science',1,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(6,1,1,'social_studies',1,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(7,1,1,'tamil',1,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL);
/*!40000 ALTER TABLE `class_room_page_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_room_page_details`
--

DROP TABLE IF EXISTS `class_room_page_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_room_page_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `page_id` int unsigned NOT NULL,
  `is_following` tinyint(1) DEFAULT NULL,
  `like` tinyint(1) DEFAULT NULL,
  `dislike` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_room_page_details_user_id_foreign` (`user_id`),
  KEY `class_room_page_details_page_id_foreign` (`page_id`),
  CONSTRAINT `class_room_page_details_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `class_room_pages` (`id`),
  CONSTRAINT `class_room_page_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_room_page_details`
--

LOCK TABLES `class_room_page_details` WRITE;
/*!40000 ALTER TABLE `class_room_page_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_room_page_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_room_pages`
--

DROP TABLE IF EXISTS `class_room_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_room_pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_room_pages_school_id_foreign` (`school_id`),
  KEY `class_room_pages_academic_year_id_foreign` (`academic_year_id`),
  KEY `class_room_pages_category_id_foreign` (`category_id`),
  KEY `class_room_pages_created_by_foreign` (`created_by`),
  CONSTRAINT `class_room_pages_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `class_room_pages_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `class_room_page_categories` (`id`),
  CONSTRAINT `class_room_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `class_room_pages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_room_pages`
--

LOCK TABLES `class_room_pages` WRITE;
/*!40000 ALTER TABLE `class_room_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_room_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teacher_links`
--

DROP TABLE IF EXISTS `class_teacher_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_teacher_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned NOT NULL,
  `subject_id` int unsigned NOT NULL,
  `teacher_id` int unsigned NOT NULL,
  `no_of_periods` int DEFAULT NULL,
  `remaining_periods` int DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_teacher_links_school_id_foreign` (`school_id`),
  KEY `class_teacher_links_academic_year_id_foreign` (`academic_year_id`),
  KEY `class_teacher_links_standardlink_id_foreign` (`standardLink_id`),
  KEY `class_teacher_links_subject_id_foreign` (`subject_id`),
  KEY `class_teacher_links_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `class_teacher_links_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `class_teacher_links_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `class_teacher_links_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `class_teacher_links_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `class_teacher_links_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teacher_links`
--

LOCK TABLES `class_teacher_links` WRITE;
/*!40000 ALTER TABLE `class_teacher_links` DISABLE KEYS */;
INSERT INTO `class_teacher_links` VALUES (1,1,3,1,153,21,NULL,NULL,NULL,1,'2026-03-01 11:40:08','2026-03-01 13:23:38','2026-03-01 13:23:38'),(2,1,3,2,154,21,NULL,NULL,NULL,1,'2026-03-01 11:41:19','2026-03-01 11:41:19',NULL),(3,1,3,3,155,21,NULL,NULL,NULL,1,'2026-03-01 11:42:22','2026-03-01 11:42:22',NULL),(4,1,3,4,156,21,NULL,NULL,NULL,1,'2026-03-01 11:43:25','2026-03-01 11:43:25',NULL),(5,1,3,5,157,21,NULL,NULL,NULL,1,'2026-03-01 11:44:26','2026-03-01 11:44:26',NULL),(6,1,3,6,158,21,NULL,NULL,NULL,1,'2026-03-01 11:46:36','2026-03-01 11:46:36',NULL),(7,1,3,7,159,21,NULL,NULL,NULL,1,'2026-03-01 11:48:40','2026-03-01 11:48:40',NULL),(8,1,3,8,161,21,NULL,NULL,NULL,1,'2026-03-01 11:53:22','2026-03-01 11:53:22',NULL),(9,1,3,9,162,21,NULL,NULL,NULL,1,'2026-03-01 11:53:51','2026-03-01 11:53:51',NULL),(10,1,3,10,163,21,NULL,NULL,NULL,1,'2026-03-01 11:54:18','2026-03-01 11:54:18',NULL),(11,1,3,1,153,21,3,NULL,'group_dedicated_subject',1,'2026-03-01 13:23:38','2026-03-01 13:23:38',NULL);
/*!40000 ALTER TABLE `class_teacher_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_chat`
--

DROP TABLE IF EXISTS `conversation_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation_chat` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_message_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_chat`
--

LOCK TABLES `conversation_chat` WRITE;
/*!40000 ALTER TABLE `conversation_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_messages`
--

DROP TABLE IF EXISTS `conversation_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_messages_conversation_id_index` (`conversation_id`),
  KEY `conversation_messages_user_id_index` (`user_id`),
  CONSTRAINT `conversation_messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversation_chat` (`id`),
  CONSTRAINT `conversation_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_messages`
--

LOCK TABLES `conversation_messages` WRITE;
/*!40000 ALTER TABLE `conversation_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_user`
--

DROP TABLE IF EXISTS `conversation_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conversation_user_conversation_id_index` (`conversation_id`),
  KEY `conversation_user_user_id_index` (`user_id`),
  CONSTRAINT `conversation_user_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversation_chat` (`id`),
  CONSTRAINT `conversation_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_user`
--

LOCK TABLES `conversation_user` WRITE;
/*!40000 ALTER TABLE `conversation_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `user_one` int unsigned NOT NULL,
  `user_two` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conversations_school_id_foreign` (`school_id`),
  KEY `conversations_user_one_foreign` (`user_one`),
  KEY `conversations_user_two_foreign` (`user_two`),
  CONSTRAINT `conversations_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `conversations_user_one_foreign` FOREIGN KEY (`user_one`) REFERENCES `users` (`id`),
  CONSTRAINT `conversations_user_two_foreign` FOREIGN KEY (`user_two`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_short_name_unique` (`short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF','AFG','93',0,NULL,'2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(2,'Albania','AL','ALB','355',0,NULL,'2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(3,'Argentina','AR','ARG','54',0,NULL,'2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(4,'Australia','AU','AUS','61',0,NULL,'2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(5,'China','CH','CHN','86',0,NULL,'2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(6,'Egypt','EG','EGY','20',0,NULL,'2026-03-01 10:54:07','2026-03-01 10:54:07',NULL),(7,'India','IN','IND','91',1,NULL,'2026-03-01 10:54:07','2026-03-01 10:54:07',NULL),(8,'Malaysia','MA','MYS','60',0,NULL,'2026-03-01 10:54:07','2026-03-01 10:54:07',NULL),(9,'Switzerland','SW','CHE','41',0,NULL,'2026-03-01 10:54:07','2026-03-01 10:54:07',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `incident_date` datetime NOT NULL,
  `reported_by` int unsigned NOT NULL,
  `incident_detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_taken` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('discipline','performance','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` enum('video','audio','image') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notify_parents` tinyint(1) NOT NULL DEFAULT '0',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disciplines_school_id_foreign` (`school_id`),
  KEY `disciplines_academic_year_id_foreign` (`academic_year_id`),
  KEY `disciplines_standardlink_id_foreign` (`standardLink_id`),
  KEY `disciplines_user_id_foreign` (`user_id`),
  KEY `disciplines_reported_by_foreign` (`reported_by`),
  CONSTRAINT `disciplines_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `disciplines_reported_by_foreign` FOREIGN KEY (`reported_by`) REFERENCES `users` (`id`),
  CONSTRAINT `disciplines_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `disciplines_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `disciplines_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `version` int NOT NULL DEFAULT '1',
  `type` enum('certificates','id_proof','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documents_user_id_name_version_unique` (`user_id`,`name`,`version`),
  KEY `documents_school_id_foreign` (`school_id`),
  CONSTRAINT `documents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_galleries`
--

DROP TABLE IF EXISTS `event_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_galleries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `event_id` int unsigned NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_galleries_school_id_foreign` (`school_id`),
  KEY `event_galleries_event_id_foreign` (`event_id`),
  KEY `event_galleries_created_by_foreign` (`created_by`),
  KEY `event_galleries_updated_by_foreign` (`updated_by`),
  CONSTRAINT `event_galleries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `event_galleries_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  CONSTRAINT `event_galleries_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `event_galleries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_galleries`
--

LOCK TABLES `event_galleries` WRITE;
/*!40000 ALTER TABLE `event_galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standard_id` int unsigned DEFAULT NULL,
  `batch` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `select_type` enum('school','class','alumni') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `repeats` int DEFAULT '0',
  `freq` int DEFAULT '0',
  `freq_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `category` enum('culturals','education','exam','holidays','meeting') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organised_by` longtext COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `allDay` tinyint NOT NULL DEFAULT '1',
  `url` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `events_school_id_foreign` (`school_id`),
  KEY `events_academic_year_id_foreign` (`academic_year_id`),
  KEY `events_standard_id_foreign` (`standard_id`),
  KEY `events_created_by_foreign` (`created_by`),
  KEY `events_updated_by_foreign` (`updated_by`),
  CONSTRAINT `events_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `events_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `events_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `events_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `events_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,1,NULL,'','school','Bakrid',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-08-01 00:00:00','2020-08-02 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(2,1,1,NULL,'','school','Krishna Jeyanthi',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-08-11 00:00:00','2020-08-12 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(3,1,1,NULL,'','school','Independence Day',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-08-15 00:00:00','2020-08-16 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(4,1,1,NULL,'','school','Vinayakar Chathurthi',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-08-22 00:00:00','2020-08-23 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(5,1,1,NULL,'','school','Muharram',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-08-03 00:00:00','2020-08-04 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(6,1,1,NULL,'','school','Gandhi Jeyanthi',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-10-02 00:00:00','2020-10-03 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(7,1,1,NULL,'','school','Ayutha Pooja',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-10-25 00:00:00','2020-10-26 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(8,1,1,NULL,'','school','Vijaya Dasami',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-10-26 00:00:00','2020-10-27 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(9,1,1,NULL,'','school','Mila-un-Nabi',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-10-30 00:00:00','2020-10-31 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(10,1,1,NULL,'','school','Deepavali',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-11-14 00:00:00','2020-11-15 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(11,1,1,NULL,'','school','Christmas',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2020-12-25 00:00:00','2020-12-26 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(12,1,1,NULL,'','school','New Year',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-01-01 00:00:00','2021-01-02 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(13,1,1,NULL,'','school','Pongal',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-01-14 00:00:00','2021-01-15 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(14,1,1,NULL,'','school','Thiruvalluvar Day',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-01-15 00:00:00','2021-01-16 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(15,1,1,NULL,'','school','Republic Day',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-01-26 00:00:00','2021-01-27 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(16,1,1,NULL,'','school','Good Friday',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-04-02 00:00:00','2021-04-03 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(17,1,1,NULL,'','school','Telugu New Year',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-04-13 00:00:00','2021-04-13 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(18,1,1,NULL,'','school','Tamil New Year',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-04-14 00:00:00','2021-04-14 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(19,1,1,NULL,'','school','Mahavir Jeyanthi',NULL,0,0,NULL,NULL,'holidays',NULL,NULL,'','2021-04-25 00:00:00','2021-04-26 00:00:00',1,NULL,'inactive',NULL,NULL,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `feedback_messages`
--

DROP TABLE IF EXISTS `feedback_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `feedback_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` enum('feedback_or_bug_for_app_or_software','student_profile_or_info','complaints','suggestions','others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` enum('0','has_seen','action_taken') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `deleted_from_sender` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_receiver` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedback_messages_school_id_foreign` (`school_id`),
  KEY `feedback_messages_user_id_foreign` (`user_id`),
  KEY `feedback_messages_feedback_id_foreign` (`feedback_id`),
  CONSTRAINT `feedback_messages_feedback_id_foreign` FOREIGN KEY (`feedback_id`) REFERENCES `feedbacks` (`id`),
  CONSTRAINT `feedback_messages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `feedback_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_messages`
--

LOCK TABLES `feedback_messages` WRITE;
/*!40000 ALTER TABLE `feedback_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbacks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL,
  `student_id` int unsigned NOT NULL,
  `admin_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedbacks_school_id_foreign` (`school_id`),
  KEY `feedbacks_parent_id_foreign` (`parent_id`),
  KEY `feedbacks_student_id_foreign` (`student_id`),
  KEY `feedbacks_admin_id_foreign` (`admin_id`),
  CONSTRAINT `feedbacks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`),
  CONSTRAINT `feedbacks_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`),
  CONSTRAINT `feedbacks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `feedbacks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homework_approvals`
--

DROP TABLE IF EXISTS `homework_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homework_approvals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `homework_id` bigint unsigned NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','pending','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approved_by` int unsigned DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homework_approvals_homework_id_foreign` (`homework_id`),
  KEY `homework_approvals_approved_by_foreign` (`approved_by`),
  CONSTRAINT `homework_approvals_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `homework_approvals_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `homeworks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homework_approvals`
--

LOCK TABLES `homework_approvals` WRITE;
/*!40000 ALTER TABLE `homework_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `homework_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeworks`
--

DROP TABLE IF EXISTS `homeworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homeworks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned NOT NULL,
  `subject_id` int unsigned DEFAULT NULL,
  `teacher_id` int unsigned DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_by` int unsigned DEFAULT NULL,
  `updated_by` int unsigned DEFAULT NULL,
  `submission_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `homeworks_school_id_foreign` (`school_id`),
  KEY `homeworks_academic_year_id_foreign` (`academic_year_id`),
  KEY `homeworks_standardlink_id_foreign` (`standardLink_id`),
  KEY `homeworks_subject_id_foreign` (`subject_id`),
  KEY `homeworks_teacher_id_foreign` (`teacher_id`),
  KEY `homeworks_created_by_foreign` (`created_by`),
  KEY `homeworks_updated_by_foreign` (`updated_by`),
  CONSTRAINT `homeworks_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `homeworks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `homeworks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `homeworks_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `homeworks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `homeworks_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `homeworks_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeworks`
--

LOCK TABLES `homeworks` WRITE;
/*!40000 ALTER TABLE `homeworks` DISABLE KEYS */;
/*!40000 ALTER TABLE `homeworks` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'default','{\"uuid\":\"9c7102d5-a7c5-4833-b444-b3dff9a98937\",\"displayName\":\"App\\\\Listeners\\\\LogSuccessfulLogin\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:32:\\\"App\\\\Listeners\\\\LogSuccessfulLogin\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:28:\\\"Illuminate\\\\Auth\\\\Events\\\\Login\\\":3:{s:5:\\\"guard\\\";s:3:\\\"web\\\";s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:4:{i:0;s:11:\\\"userprofile\\\";i:1;s:7:\\\"members\\\";i:2;s:8:\\\"children\\\";i:3;s:7:\\\"parents\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"remember\\\";b:0;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}',0,NULL,1772363870,1772363870),(2,'default','{\"uuid\":\"137cb51a-8122-4a99-8ee1-0dbffd0c6ba3\",\"displayName\":\"App\\\\Listeners\\\\LogSuccessfulLogin\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:32:\\\"App\\\\Listeners\\\\LogSuccessfulLogin\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:28:\\\"Illuminate\\\\Auth\\\\Events\\\\Login\\\":3:{s:5:\\\"guard\\\";s:3:\\\"web\\\";s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:4:{i:0;s:11:\\\"userprofile\\\";i:1;s:7:\\\"members\\\";i:2;s:8:\\\"children\\\";i:3;s:7:\\\"parents\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"remember\\\";b:1;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}',0,NULL,1772370348,1772370348);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keywords`
--

DROP TABLE IF EXISTS `keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keywords` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keywords`
--

LOCK TABLES `keywords` WRITE;
/*!40000 ALTER TABLE `keywords` DISABLE KEYS */;
INSERT INTO `keywords` VALUES (1,'break','2026-03-01 10:54:18','2026-03-01 10:54:18'),(2,'clone','2026-03-01 10:54:18','2026-03-01 10:54:18'),(3,'die','2026-03-01 10:54:18','2026-03-01 10:54:18'),(4,'empty','2026-03-01 10:54:18','2026-03-01 10:54:18'),(5,'endswitch','2026-03-01 10:54:18','2026-03-01 10:54:18'),(6,'final','2026-03-01 10:54:18','2026-03-01 10:54:18'),(7,'global','2026-03-01 10:54:18','2026-03-01 10:54:18'),(8,'inlude_once','2026-03-01 10:54:18','2026-03-01 10:54:18'),(9,'list','2026-03-01 10:54:18','2026-03-01 10:54:18'),(10,'private','2026-03-01 10:54:18','2026-03-01 10:54:18'),(11,'return','2026-03-01 10:54:18','2026-03-01 10:54:18'),(12,'try','2026-03-01 10:54:18','2026-03-01 10:54:18'),(13,'abstract','2026-03-01 10:54:18','2026-03-01 10:54:18'),(14,'callable','2026-03-01 10:54:18','2026-03-01 10:54:18'),(15,'const','2026-03-01 10:54:18','2026-03-01 10:54:18'),(16,'do','2026-03-01 10:54:18','2026-03-01 10:54:18'),(17,'enddeclare','2026-03-01 10:54:19','2026-03-01 10:54:19'),(18,'endwhile','2026-03-01 10:54:19','2026-03-01 10:54:19'),(19,'finally','2026-03-01 10:54:19','2026-03-01 10:54:19'),(20,'goto','2026-03-01 10:54:19','2026-03-01 10:54:19'),(21,'instanceof','2026-03-01 10:54:19','2026-03-01 10:54:19'),(22,'namespace','2026-03-01 10:54:19','2026-03-01 10:54:19'),(23,'xor','2026-03-01 10:54:19','2026-03-01 10:54:19'),(24,'static','2026-03-01 10:54:19','2026-03-01 10:54:19'),(25,'unset','2026-03-01 10:54:19','2026-03-01 10:54:19'),(26,'yield','2026-03-01 10:54:19','2026-03-01 10:54:19'),(27,'and','2026-03-01 10:54:19','2026-03-01 10:54:19'),(28,'case','2026-03-01 10:54:19','2026-03-01 10:54:19'),(29,'continue','2026-03-01 10:54:19','2026-03-01 10:54:19'),(30,'echo','2026-03-01 10:54:19','2026-03-01 10:54:19'),(31,'endfor','2026-03-01 10:54:19','2026-03-01 10:54:19'),(32,'eval','2026-03-01 10:54:20','2026-03-01 10:54:20'),(33,'for','2026-03-01 10:54:20','2026-03-01 10:54:20'),(34,'if','2026-03-01 10:54:20','2026-03-01 10:54:20'),(35,'insteadof','2026-03-01 10:54:20','2026-03-01 10:54:20'),(36,'new','2026-03-01 10:54:20','2026-03-01 10:54:20'),(37,'public','2026-03-01 10:54:20','2026-03-01 10:54:20'),(38,'switch','2026-03-01 10:54:20','2026-03-01 10:54:20'),(39,'use','2026-03-01 10:54:20','2026-03-01 10:54:20'),(40,'yield from','2026-03-01 10:54:20','2026-03-01 10:54:20'),(41,'array','2026-03-01 10:54:20','2026-03-01 10:54:20'),(42,'catch','2026-03-01 10:54:20','2026-03-01 10:54:20'),(43,'declare','2026-03-01 10:54:20','2026-03-01 10:54:20'),(44,'else','2026-03-01 10:54:20','2026-03-01 10:54:20'),(45,'endforeach','2026-03-01 10:54:20','2026-03-01 10:54:20'),(46,'exit','2026-03-01 10:54:20','2026-03-01 10:54:20'),(47,'foreach','2026-03-01 10:54:20','2026-03-01 10:54:20'),(48,'implements','2026-03-01 10:54:20','2026-03-01 10:54:20'),(49,'interface','2026-03-01 10:54:20','2026-03-01 10:54:20'),(50,'or','2026-03-01 10:54:20','2026-03-01 10:54:20'),(51,'require','2026-03-01 10:54:20','2026-03-01 10:54:20'),(52,'throw','2026-03-01 10:54:21','2026-03-01 10:54:21'),(53,'var','2026-03-01 10:54:21','2026-03-01 10:54:21'),(54,'as','2026-03-01 10:54:21','2026-03-01 10:54:21'),(55,'class','2026-03-01 10:54:21','2026-03-01 10:54:21'),(56,'default','2026-03-01 10:54:21','2026-03-01 10:54:21'),(57,'elseif','2026-03-01 10:54:21','2026-03-01 10:54:21'),(58,'endif','2026-03-01 10:54:21','2026-03-01 10:54:21'),(59,'extends','2026-03-01 10:54:21','2026-03-01 10:54:21'),(60,'function','2026-03-01 10:54:21','2026-03-01 10:54:21'),(61,'include','2026-03-01 10:54:21','2026-03-01 10:54:21'),(62,'isset','2026-03-01 10:54:21','2026-03-01 10:54:21'),(63,'print','2026-03-01 10:54:21','2026-03-01 10:54:21'),(64,'require_once','2026-03-01 10:54:22','2026-03-01 10:54:22'),(65,'trait','2026-03-01 10:54:22','2026-03-01 10:54:22'),(66,'while','2026-03-01 10:54:22','2026-03-01 10:54:22'),(67,'FileZilla','2026-03-01 10:54:22','2026-03-01 10:54:22'),(68,'Sublime','2026-03-01 10:54:22','2026-03-01 10:54:22'),(69,'Slack','2026-03-01 10:54:22','2026-03-01 10:54:22'),(70,'google','2026-03-01 10:54:22','2026-03-01 10:54:22'),(71,'gmail','2026-03-01 10:54:22','2026-03-01 10:54:22'),(72,'yahoo','2026-03-01 10:54:22','2026-03-01 10:54:22'),(73,'Mailtrap','2026-03-01 10:54:22','2026-03-01 10:54:22'),(74,'cPanel','2026-03-01 10:54:22','2026-03-01 10:54:22'),(75,'Laragon','2026-03-01 10:54:22','2026-03-01 10:54:22'),(76,'Postman','2026-03-01 10:54:22','2026-03-01 10:54:22'),(77,'MySQL','2026-03-01 10:54:22','2026-03-01 10:54:22');
/*!40000 ALTER TABLE `keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_no_of_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leave_types_school_id_foreign` (`school_id`),
  KEY `leave_types_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `leave_types_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `leave_types_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_types`
--

LOCK TABLES `leave_types` WRITE;
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` VALUES (1,1,1,'Earned Leave or Privilege Leave','2',1,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(2,1,1,'Casual Leave','1',1,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(3,1,1,'Sick Leave or Medical Leave','1',1,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(4,1,1,'Maternity Leave','45',1,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(5,1,1,'Quarantine Leave','5',1,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL),(6,1,1,'Study Leave or Sabbatical Leave','7',1,'2026-03-01 10:56:00','2026-03-01 10:56:00',NULL);
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_plan_approvals`
--

DROP TABLE IF EXISTS `lesson_plan_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_plan_approvals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lesson_plan_id` int unsigned NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_by` int unsigned DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lesson_plan_approvals_lesson_plan_id_foreign` (`lesson_plan_id`),
  KEY `lesson_plan_approvals_approved_by_foreign` (`approved_by`),
  CONSTRAINT `lesson_plan_approvals_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `lesson_plan_approvals_lesson_plan_id_foreign` FOREIGN KEY (`lesson_plan_id`) REFERENCES `lesson_plans` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_plan_approvals`
--

LOCK TABLES `lesson_plan_approvals` WRITE;
/*!40000 ALTER TABLE `lesson_plan_approvals` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_plan_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_plans`
--

DROP TABLE IF EXISTS `lesson_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_plans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `teacher_link_id` int unsigned NOT NULL,
  `unit_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` time NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `objective` longtext COLLATE utf8mb4_unicode_ci,
  `materials_required` longtext COLLATE utf8mb4_unicode_ci,
  `introduction` longtext COLLATE utf8mb4_unicode_ci,
  `procedure` longtext COLLATE utf8mb4_unicode_ci,
  `conclusion` longtext COLLATE utf8mb4_unicode_ci,
  `assessment` longtext COLLATE utf8mb4_unicode_ci,
  `modification` longtext COLLATE utf8mb4_unicode_ci,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('approved','archived','cancel','draft','pending','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lesson_plans_teacher_link_id_foreign` (`teacher_link_id`),
  CONSTRAINT `lesson_plans_teacher_link_id_foreign` FOREIGN KEY (`teacher_link_id`) REFERENCES `class_teacher_links` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_plans`
--

LOCK TABLES `lesson_plans` WRITE;
/*!40000 ALTER TABLE `lesson_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_card`
--

DROP TABLE IF EXISTS `library_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_card` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `library_card_no` int NOT NULL,
  `book_limit` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `library_card_library_card_no_unique` (`library_card_no`),
  KEY `library_card_school_id_foreign` (`school_id`),
  KEY `library_card_user_id_foreign` (`user_id`),
  CONSTRAINT `library_card_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `library_card_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_card`
--

LOCK TABLES `library_card` WRITE;
/*!40000 ALTER TABLE `library_card` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magazines`
--

DROP TABLE IF EXISTS `magazines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magazines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int DEFAULT NULL,
  `bulletin_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `magazines_school_id_foreign` (`school_id`),
  KEY `magazines_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `magazines_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `magazines_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magazines`
--

LOCK TABLES `magazines` WRITE;
/*!40000 ALTER TABLE `magazines` DISABLE KEYS */;
/*!40000 ALTER TABLE `magazines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailtemplates`
--

DROP TABLE IF EXISTS `mailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mailtemplates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `mail_content` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailtemplates`
--

LOCK TABLES `mailtemplates` WRITE;
/*!40000 ALTER TABLE `mailtemplates` DISABLE KEYS */;
INSERT INTO `mailtemplates` VALUES (1,'login','Logged In','Hi :name <br> \r\n                                Successful Authorization. <br>\r\n                                You have successfully logged into  your account. <br>\r\n                                Don\"t recognize this activity?  <br>\r\n                                Please  change password  for your email immediately   <br>\r\n                                Thanks & Regards <br>                         \r\n                                Administration Team <br>','active','2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(2,'new_user_register','New User Registration','Hello ! <br> \r\n                                New user has registered - :mail. Please login to see details.\r\n                                Thanks & Regards <br>                         \r\n                                Administration Team <br>','active','2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(3,'reset_password','Reset Password','Hi :name <br> \r\n                                Please click below link to reset your password. <br>\r\n                                <a href= \" :resetlink\" style=\"border: none;\r\n                                    color: white; padding: 10px 15px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px; margin: 4px 2px; cursor: pointer; background-color: #008CBA;\">Reset Password</a> <br>\r\n                                Thanks & Regards <br> \r\n                                Administration Team <br>','active','2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(4,'expired_approve_alert','New Expired Alert','Hi <br>\r\n                            Subscription Expiration Details<br>\r\n\r\n                            School Name - :school_name \r\n                            User Name   - :name \r\n                            End Date    - :end_date \r\n                      \r\n                            New expired has been posted for this school \r\n                            If you want to continue subscription , Please click the below link\r\n                            \r\n                            :url \r\n\r\n                            Thanks & Regards \r\n                            Administration Team','active','2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(5,'site_expired_mail','Site Expired Mail ','Hi <br>\r\n                            Subscription Expiration Details<br>\r\n\r\n                            School Name - :school_name \r\n                            User Name   - :name \r\n                            End Date    - :end_date\r\n                      \r\n                            Your site going to expiry within a week \r\n                            Thanks & Regards \r\n                            Administration Team ','active','2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(6,'contact','Contact','Hi <br>\r\n                            Contact Details. <br>\r\n                                  \r\n                            Name          - :fullname \r\n                            Email         - :emailid \r\n                            Serve         - :serve_at \r\n                            Role          - :role \r\n                            Phone number  - :contact_no\r\n                            Select        - :select\r\n                                  \r\n                            Contact Details Created \r\n                            Thanks & Regards \r\n                            Administration Team ','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(7,'send_mail',' :subject ','Hi :name, <br>\r\n            :message <br>\r\n            <a href= \":attachments\" style=\"border:none; color:white; padding:10px 15px; text-align:center; text-decoration:none; display:inline-block;  font-size:16px; margin:4px 2px; cursor: pointer; background-color:#008CBA;\">Click Here</a> <br>\r\n            Thanks & Regards \r\n            Administration Team','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(8,'calendar_event','Calendar Event','Hi <br>\r\n                            Event Details. <br>\r\n                                  \r\n                            Title       - :title \r\n                            Location    - :location \r\n                            Category    - :category \r\n                            Start Date  - :start_date \r\n                            End Date    - :end_date\r\n\r\n                            New Event Created \r\n                            Thanks & Regards \r\n                            Administration Team ','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(9,'event_reminder','Event Reminder','Hi <br>\r\n                            Event Reminder Details<br>\r\n\r\n                            School Name   - :school_name \r\n                            Title         - :title \r\n                            Description   - :description\r\n                            Location      - :location\r\n                            Start Date    - :start_date \r\n                            End Date      - :end_date\r\n                      \r\n                            New event has been posted for this church. \r\n                           \r\n                            Thanks & Regards \r\n                            Administration Team ','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(10,'birthday_reminder','Birthday Wishes',':message \r\n\r\n                                Thanks & Regards \r\n                                Administration Team','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(11,'email_verification','Email Verification','Hi :name <br>\r\n            To verify your accout. <br>\r\n            <a href= \":url\" style=\"border: none;color: white; padding: 10px 15px;text-align: center; text-decoration: none; display: inline-block; font-size: 16px;margin: 4px 2px; cursor: pointer; background-color: #008CBA;\">Click here to verify</a> <br>\r\n            Thanks & Regards <br> \r\n            Administration Team <br>','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(12,'new_message','Send Mail to User','Hi :name, <br> \r\n                                :message\r\n                                Thanks & Regards <br> \r\n                                Administration Team <br>','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(13,'room_invitation','Room Invitation','Hi :name, <br> \r\n                                Title - :title <br> \r\n                                Description - :description <br> \r\n                                :message <br> \r\n                                Thanks & Regards <br>\r\n                                Thanks & Regards <br> \r\n                                Administration Team <br>','active','2026-03-01 10:54:15','2026-03-01 10:54:15',NULL),(14,'change_password','Change Password','Hi :name <br> \r\n                                Your Password is changed successfully. <br> \r\n                                Thanks & Regards <br> \r\n                                <p>Administration Team <br>','active',NULL,NULL,NULL),(15,'admission_confirmation','Admission Confirmation Mail','Hi Sir\\Madam <br> \r\n                                Your Application No. :application_no for the admission in :school_name has been approved. <br> \r\n                                Thanks & Regards <br> \r\n                                <p>Administration Team <br>','active',NULL,NULL,NULL);
/*!40000 ALTER TABLE `mailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json DEFAULT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `conversation_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_sender` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_receiver` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_school_id_foreign` (`school_id`),
  KEY `messages_user_id_foreign` (`user_id`),
  KEY `messages_conversation_id_foreign` (`conversation_id`),
  CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  CONSTRAINT `messages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_04_25_173132_create_jobs_table',1),(2,'2019_04_25_173250_create_failed_jobs_table',1),(3,'2019_09_04_124307_create_activity_log_table',1),(4,'2019_10_22_122703_create_keywords_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2020_02_17_032233_create_countries_table',1),(7,'2020_02_17_032304_create_states_table',1),(8,'2020_02_17_032401_create_cities_table',1),(9,'2020_02_17_045329_create_usergroups_table',1),(10,'2020_02_17_045542_create_schools_table',1),(11,'2020_02_17_051334_create_academic_years_table',1),(12,'2020_02_18_000000_create_users_table',1),(13,'2020_02_18_000001_create_password_resets_table',1),(14,'2020_02_18_044623_laratrust_setup_tables',1),(15,'2020_02_18_044624_create_mailtemplates_table',1),(16,'2020_02_18_052000_create_sections_table',1),(17,'2020_02_18_052001_create_standards_table',1),(18,'2020_02_18_052010_create_standards_link_table',1),(19,'2020_02_18_052800_create_qualifications_table',1),(20,'2020_02_18_052835_create_userprofiles_table',1),(21,'2020_02_18_052840_create_notes_table',1),(22,'2020_02_18_053001_create_subjects_table',1),(23,'2020_02_18_053405_create_student_academics_table',1),(24,'2020_02_18_054619_create_teacherprofile_table',1),(25,'2020_02_18_055939_create_class_teacher_links_table',1),(26,'2020_02_18_064742_create_events_table',1),(27,'2020_02_18_095640_create_sms_templates_table',1),(28,'2020_02_18_104801_create_background_images_table',1),(29,'2020_02_18_115311_school_details_table',1),(30,'2020_02_18_125713_create_plans_table',1),(31,'2020_02_18_125813_create_subscriptions_table',1),(32,'2020_02_18_131242_create_event_galleries_table',1),(33,'2020_02_18_202003_create_settings_table',1),(34,'2020_02_27_074930_create_non_sc_grade_table',1),(35,'2020_02_27_075041_create_sc_grade_table',1),(36,'2020_03_02_073338_create_notice_board_table',1),(37,'2020_03_02_073645_create_notification_table',1),(38,'2020_03_02_073902_create_magazines_table',1),(39,'2020_03_02_074153_create_promotions_table',1),(40,'2020_03_02_080136_create_homeworks_table',1),(41,'2020_03_02_132232_create_conversations_table',1),(42,'2020_03_02_132232_create_feedbacks_table',1),(43,'2020_03_02_132627_create_feedback_messages_table',1),(44,'2020_03_02_132627_create_messages_table',1),(45,'2020_03_02_132820_create_disciplines_table',1),(46,'2020_03_02_133456_create_transportations_table',1),(47,'2020_03_03_174501_create_student_parent_links_table',1),(48,'2020_03_10_105921_create_send_mail_tables',1),(49,'2020_04_06_131626_create_absent_reasons_table',1),(50,'2020_04_06_131754_create_attendances_table',1),(51,'2020_04_09_112349_create_reminders_table',1),(52,'2020_04_10_105027_create_books_category_table',1),(53,'2020_04_10_105028_create_books_table',1),(54,'2020_04_10_105100_create_library_card_table',1),(55,'2020_04_10_105105_create_books_lending_table',1),(56,'2020_04_16_175713_create_assignments_table',1),(57,'2020_04_16_180549_create_student_assignments_table',1),(58,'2020_04_30_162036_create_parent_profiles_table',1),(59,'2020_05_15_121339_create_leave_types_table',1),(60,'2020_05_18_140042_create_teacher_leave_applications_table',1),(61,'2020_05_19_070626_create_media_table',1),(62,'2020_05_30_172215_create_queries_table',1),(63,'2020_06_08_164859_create_chapters_table',1),(64,'2020_06_09_101634_create_websockets_statistics_entries_table',1),(65,'2020_06_15_111744_create_conversation_chat_table',1),(66,'2020_06_15_121306_create_conversation_user_table',1),(67,'2020_06_16_054904_create_conversation_messages_table',1),(68,'2020_06_16_100445_add_last_message_at_to_conversation_chat_table',1),(69,'2020_06_16_111257_add_read_at_to_conversation_user_table',1),(70,'2020_06_22_170340_create_documents_table',1),(71,'2020_06_24_170946_create_authentications_table',1),(72,'2020_07_08_052959_create_task_table',1),(73,'2020_07_11_173059_create_lesson_plans_table',1),(74,'2020_07_13_165218_create_lesson_plan_approvals_table',1),(75,'2020_07_24_095108_create_visitor_log_table',1),(76,'2020_07_28_132424_create_call_log_table',1),(77,'2020_07_28_183533_create_postal_record_table',1),(78,'2020_08_05_080500_create_class_room_page_categories_table',1),(79,'2020_08_05_123442_create_class_room_pages_table',1),(80,'2020_08_05_123542_create_class_room_page_attachments_table',1),(81,'2020_08_05_124407_create_class_room_page_details_table',1),(82,'2020_08_05_124427_create_posts_table',1),(83,'2020_08_05_124428_create_tags_table',1),(84,'2020_08_05_124454_create_post_tags_table',1),(85,'2020_08_05_124755_create_post_details_table',1),(86,'2020_08_05_124800_create_post_comments_table',1),(87,'2020_08_11_155701_create_post_comment_details_table',1),(88,'2020_08_14_145726_create_notifications_table',1),(89,'2020_08_15_124253_create_payroll_items_table',1),(90,'2020_08_15_181839_create_transaction_types_table',1),(91,'2020_08_15_183424_create_transaction_accounts_table',1),(92,'2020_08_15_192024_create_pay_categories_table',1),(93,'2020_08_16_122833_create_payroll_templates_table',1),(94,'2020_08_17_123231_create_template_items_table',1),(95,'2020_08_18_170504_create_salaries_table',1),(96,'2020_08_19_153305_create_salary_items_table',1),(97,'2020_08_20_151928_create_payrolls_table',1),(98,'2020_09_01_113634_create_payslip_items_table',1),(99,'2020_09_07_182619_create_payroll_transactions_table',1),(100,'2020_12_29_101932_create_telephone_directory_table',1),(101,'2021_03_31_070442_create_student_history_table',1),(102,'2021_03_31_191557_create_student_homework_table',1),(103,'2021_04_04_115628_add_submitted_on_to_student_homework_table',1),(104,'2021_04_05_103936_create_task_assignees_table',1),(105,'2021_04_05_143405_create_homework_approvals_table',1),(106,'2021_04_05_143441_create_assignment_approvals_table',1),(107,'2021_04_09_151421_add_created_by_to_homeworks_table',1),(108,'2021_04_26_141845_create_admissions_table',1),(109,'2024_01_04_191111_create_address_locations_table',1),(110,'2024_02_01_141425_add_event_column_to_activity_log_table',1),(111,'2024_02_01_141426_add_batch_uuid_column_to_activity_log_table',1),(112,'2025_07_09_161002_add_missing_columns_to_media_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_sc_grade`
--

DROP TABLE IF EXISTS `non_sc_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `non_sc_grade` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `grades_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `non_sc_grade_school_id_foreign` (`school_id`),
  KEY `non_sc_grade_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `non_sc_grade_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `non_sc_grade_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_sc_grade`
--

LOCK TABLES `non_sc_grade` WRITE;
/*!40000 ALTER TABLE `non_sc_grade` DISABLE KEYS */;
INSERT INTO `non_sc_grade` VALUES (1,1,1,'1-5','\"art_education\", \"physical_education\", \"work_education\"','{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}',1,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(2,1,1,'6-8','\"thinking_skills\", \"social_skills\", \"emotional_skills\"','{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}',1,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(3,1,1,'9-10','\"attitude_values\", \"wellness_education\", \"service_activities\"','{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}',1,'2026-03-01 10:55:59','2026-03-01 10:55:59'),(4,1,1,'11-12','\"thinking_skills\", \"physical_education\", \"work_education\"','{ \"A\": \"Outstanding\", \"B\": \"Above Average\", \"C\": \"Needs Improvement\"}',1,'2026-03-01 10:55:59','2026-03-01 10:55:59');
/*!40000 ALTER TABLE `non_sc_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int NOT NULL,
  `entity_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_school_id_foreign` (`school_id`),
  KEY `notes_created_by_foreign` (`created_by`),
  KEY `notes_updated_by_foreign` (`updated_by`),
  CONSTRAINT `notes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `notes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `notes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_board`
--

DROP TABLE IF EXISTS `notice_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_board` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned DEFAULT NULL,
  `background_id` int unsigned DEFAULT NULL,
  `type` enum('class','school','teacher') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notice_board_school_id_foreign` (`school_id`),
  KEY `notice_board_academic_year_id_foreign` (`academic_year_id`),
  KEY `notice_board_standardlink_id_foreign` (`standardLink_id`),
  KEY `notice_board_background_id_foreign` (`background_id`),
  CONSTRAINT `notice_board_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `notice_board_background_id_foreign` FOREIGN KEY (`background_id`) REFERENCES `background_images` (`id`),
  CONSTRAINT `notice_board_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `notice_board_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_board`
--

LOCK TABLES `notice_board` WRITE;
/*!40000 ALTER TABLE `notice_board` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `from` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `via` enum('sms','mail','notification') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_status` enum('queue','process','deliver','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'queue',
  `sms_response` longtext COLLATE utf8mb4_unicode_ci,
  `executed_at` date DEFAULT NULL,
  `template_id` int DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_school_id_foreign` (`school_id`),
  KEY `notification_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `notification_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `notification_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_profiles`
--

DROP TABLE IF EXISTS `parent_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `qualification_id` int unsigned DEFAULT NULL,
  `profession` enum('admin','business','central_government_employee','private','home_maker','state_government_employee','teacher','librarian','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `official_address` text COLLATE utf8mb4_unicode_ci,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_income` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_profiles_school_id_foreign` (`school_id`),
  KEY `parent_profiles_user_id_foreign` (`user_id`),
  KEY `parent_profiles_qualification_id_foreign` (`qualification_id`),
  CONSTRAINT `parent_profiles_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`),
  CONSTRAINT `parent_profiles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `parent_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_profiles`
--

LOCK TABLES `parent_profiles` WRITE;
/*!40000 ALTER TABLE `parent_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `pay_categories`
--

DROP TABLE IF EXISTS `pay_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay_categories`
--

LOCK TABLES `pay_categories` WRITE;
/*!40000 ALTER TABLE `pay_categories` DISABLE KEYS */;
INSERT INTO `pay_categories` VALUES (1,'Not Applicable','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(2,'User Defined','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(3,'On Attendance','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(4,'Computation','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL);
/*!40000 ALTER TABLE `pay_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_items`
--

DROP TABLE IF EXISTS `payroll_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('earning','deduction','defined') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_items`
--

LOCK TABLES `payroll_items` WRITE;
/*!40000 ALTER TABLE `payroll_items` DISABLE KEYS */;
INSERT INTO `payroll_items` VALUES (1,'Basic Salary','BA','defined','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(2,'Addition Allowance','AA','earning','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(3,'Deduction','DN','deduction','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(4,'Employees State Insurance','ESI','deduction','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(5,'Provident Fund','PF','deduction','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(6,'Income tax','IT','deduction','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL);
/*!40000 ALTER TABLE `payroll_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_templates`
--

DROP TABLE IF EXISTS `payroll_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payroll_templates_school_id_foreign` (`school_id`),
  KEY `payroll_templates_created_by_foreign` (`created_by`),
  CONSTRAINT `payroll_templates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `payroll_templates_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_templates`
--

LOCK TABLES `payroll_templates` WRITE;
/*!40000 ALTER TABLE `payroll_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_transactions`
--

DROP TABLE IF EXISTS `payroll_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payroll_transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `transaction_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytype_id` int unsigned DEFAULT NULL,
  `account_id` int unsigned DEFAULT NULL,
  `staff_id` int unsigned NOT NULL,
  `payroll_id` int unsigned DEFAULT NULL,
  `transaction_date` date NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('Cash','Cheque','Bank','Others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_detail` text COLLATE utf8mb4_unicode_ci,
  `reference_number` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payroll_transactions_school_id_foreign` (`school_id`),
  KEY `payroll_transactions_paytype_id_foreign` (`paytype_id`),
  KEY `payroll_transactions_account_id_foreign` (`account_id`),
  KEY `payroll_transactions_staff_id_foreign` (`staff_id`),
  KEY `payroll_transactions_payroll_id_foreign` (`payroll_id`),
  CONSTRAINT `payroll_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `transaction_accounts` (`id`),
  CONSTRAINT `payroll_transactions_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payroll_transactions_paytype_id_foreign` FOREIGN KEY (`paytype_id`) REFERENCES `transaction_types` (`id`),
  CONSTRAINT `payroll_transactions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `payroll_transactions_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_transactions`
--

LOCK TABLES `payroll_transactions` WRITE;
/*!40000 ALTER TABLE `payroll_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payrolls` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `payrollno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int unsigned NOT NULL,
  `salary_id` int unsigned NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `percentage` int NOT NULL DEFAULT '100',
  `leave` int NOT NULL,
  `late` int DEFAULT NULL,
  `leave_deduction` int NOT NULL,
  `status` enum('paid','unpaid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payrolls_school_id_foreign` (`school_id`),
  KEY `payrolls_staff_id_foreign` (`staff_id`),
  KEY `payrolls_salary_id_foreign` (`salary_id`),
  CONSTRAINT `payrolls_salary_id_foreign` FOREIGN KEY (`salary_id`) REFERENCES `salaries` (`id`),
  CONSTRAINT `payrolls_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `payrolls_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payrolls`
--

LOCK TABLES `payrolls` WRITE;
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payslip_items`
--

DROP TABLE IF EXISTS `payslip_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payslip_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `payroll_id` int unsigned NOT NULL,
  `salary_item_id` int unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payslip_items_payroll_id_foreign` (`payroll_id`),
  KEY `payslip_items_salary_item_id_foreign` (`salary_item_id`),
  CONSTRAINT `payslip_items_payroll_id_foreign` FOREIGN KEY (`payroll_id`) REFERENCES `payrolls` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payslip_items_salary_item_id_foreign` FOREIGN KEY (`salary_item_id`) REFERENCES `salary_items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payslip_items`
--

LOCK TABLES `payslip_items` WRITE;
/*!40000 ALTER TABLE `payslip_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `payslip_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_user`
--

DROP TABLE IF EXISTS `permission_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  KEY `permission_user_user_id_foreign` (`user_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_user`
--

LOCK TABLES `permission_user` WRITE;
/*!40000 ALTER TABLE `permission_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
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
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cycle` int NOT NULL COMMENT 'Do not change',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `no_of_members` int DEFAULT NULL,
  `no_of_events` int DEFAULT NULL,
  `no_of_folders` int DEFAULT NULL COMMENT 'Gallery',
  `no_of_files` int DEFAULT NULL,
  `no_of_videos` int DEFAULT NULL,
  `no_of_audios` int DEFAULT NULL,
  `no_of_bulletins` int DEFAULT NULL,
  `no_of_groups` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,30,'standard','STANDARD',1,1,2000.00,500,10,10,10,10,NULL,10,10,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(2,60,'extended','EXTENDED',1,1,5000.00,2000,30,30,30,30,NULL,30,30,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL),(3,90,'premium','PREMIUM',1,1,15000.00,3000,50,50,50,50,NULL,50,50,'2026-03-01 10:54:14','2026-03-01 10:54:14',NULL);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comment_details`
--

DROP TABLE IF EXISTS `post_comment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_comment_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `post_comment_id` int unsigned NOT NULL,
  `like` tinyint(1) DEFAULT NULL,
  `unlike` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_comment_details_user_id_foreign` (`user_id`),
  KEY `post_comment_details_post_comment_id_foreign` (`post_comment_id`),
  CONSTRAINT `post_comment_details_post_comment_id_foreign` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`),
  CONSTRAINT `post_comment_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comment_details`
--

LOCK TABLES `post_comment_details` WRITE;
/*!40000 ALTER TABLE `post_comment_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_comment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_comments`
--

DROP TABLE IF EXISTS `post_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_comments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `entity_id` int NOT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `attachment_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_comments_user_id_foreign` (`user_id`),
  CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_comments`
--

LOCK TABLES `post_comments` WRITE;
/*!40000 ALTER TABLE `post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_details`
--

DROP TABLE IF EXISTS `post_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  `like` tinyint(1) DEFAULT NULL,
  `unlike` tinyint(1) DEFAULT NULL,
  `save` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_details_user_id_foreign` (`user_id`),
  KEY `post_details_post_id_foreign` (`post_id`),
  CONSTRAINT `post_details_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `post_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_details`
--

LOCK TABLES `post_details` WRITE;
/*!40000 ALTER TABLE `post_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_tags_tag_id_foreign` (`tag_id`),
  KEY `post_tags_post_id_foreign` (`post_id`),
  CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postal_record`
--

DROP TABLE IF EXISTS `postal_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postal_record` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confidential` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_address` longtext COLLATE utf8mb4_unicode_ci,
  `receiver_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_date` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postal_record_school_id_foreign` (`school_id`),
  KEY `postal_record_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `postal_record_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `postal_record_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postal_record`
--

LOCK TABLES `postal_record` WRITE;
/*!40000 ALTER TABLE `postal_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `postal_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `entity_id` int NOT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` enum('all_class','select_class','select_page') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_for` int unsigned DEFAULT NULL,
  `post_created_at` timestamp NULL DEFAULT NULL,
  `is_posted` tinyint(1) NOT NULL DEFAULT '0',
  `posted_at` timestamp NULL DEFAULT NULL,
  `status` enum('drafted','pending','posted','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_school_id_foreign` (`school_id`),
  KEY `posts_academic_year_id_foreign` (`academic_year_id`),
  KEY `posts_visible_for_foreign` (`visible_for`),
  KEY `posts_created_by_foreign` (`created_by`),
  CONSTRAINT `posts_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `posts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `posts_visible_for_foreign` FOREIGN KEY (`visible_for`) REFERENCES `standards_link` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `current_academic_year_id` int unsigned NOT NULL,
  `current_standard_id` int unsigned NOT NULL,
  `current_section_id` int unsigned DEFAULT NULL,
  `exam_id` int unsigned DEFAULT NULL,
  `next_academic_year_id` int unsigned DEFAULT NULL,
  `next_standard_id` int unsigned DEFAULT NULL,
  `next_section_id` int unsigned DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `promotions_school_id_foreign` (`school_id`),
  KEY `promotions_user_id_foreign` (`user_id`),
  KEY `promotions_current_academic_year_id_foreign` (`current_academic_year_id`),
  KEY `promotions_current_standard_id_foreign` (`current_standard_id`),
  KEY `promotions_current_section_id_foreign` (`current_section_id`),
  KEY `promotions_next_academic_year_id_foreign` (`next_academic_year_id`),
  KEY `promotions_next_standard_id_foreign` (`next_standard_id`),
  KEY `promotions_next_section_id_foreign` (`next_section_id`),
  CONSTRAINT `promotions_current_academic_year_id_foreign` FOREIGN KEY (`current_academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `promotions_current_section_id_foreign` FOREIGN KEY (`current_section_id`) REFERENCES `sections` (`id`),
  CONSTRAINT `promotions_current_standard_id_foreign` FOREIGN KEY (`current_standard_id`) REFERENCES `standards` (`id`),
  CONSTRAINT `promotions_next_academic_year_id_foreign` FOREIGN KEY (`next_academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `promotions_next_section_id_foreign` FOREIGN KEY (`next_section_id`) REFERENCES `sections` (`id`),
  CONSTRAINT `promotions_next_standard_id_foreign` FOREIGN KEY (`next_standard_id`) REFERENCES `standards` (`id`),
  CONSTRAINT `promotions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `promotions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualifications`
--

DROP TABLE IF EXISTS `qualifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qualifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('others','pg','teacher','ug') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualifications`
--

LOCK TABLES `qualifications` WRITE;
/*!40000 ALTER TABLE `qualifications` DISABLE KEYS */;
INSERT INTO `qualifications` VALUES (1,'Others','others',1,'2026-03-01 10:54:22','2026-03-01 10:54:22',NULL),(2,'Basic Training Certificate (BTC)','teacher',1,'2026-03-01 10:54:22','2026-03-01 10:54:22',NULL),(3,'Primary Teachers Certificate (PTC)','teacher',1,'2026-03-01 10:54:22','2026-03-01 10:54:22',NULL),(4,'Elementary Teacher Education (ETE)','teacher',1,'2026-03-01 10:54:22','2026-03-01 10:54:22',NULL),(5,'Nursery Teacher Training (NTT)','teacher',1,'2026-03-01 10:54:23','2026-03-01 10:54:23',NULL),(6,'Diploma in Education (DED)','teacher',1,'2026-03-01 10:54:23','2026-03-01 10:54:23',NULL),(7,'Teachers Training Certificate (TTC)','teacher',1,'2026-03-01 10:54:23','2026-03-01 10:54:23',NULL),(8,'Junior Basic Training (JBT)','teacher',1,'2026-03-01 10:54:23','2026-03-01 10:54:23',NULL),(9,'Nursery Teacher Education Program','teacher',1,'2026-03-01 10:54:23','2026-03-01 10:54:23',NULL),(10,'Pre-School Teacher Education Program','teacher',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(11,'Physical Education Program (C.P.Ed.)','teacher',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(12,'Bachelor of Elementary Education (B.EI.Ed.)','teacher',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(13,'Elementary Teacher Education Program','teacher',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(14,'Bachelor of Architecture (B.Arch)','ug',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(15,'Bachelor of Arts (B.A.)','ug',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(16,'Bachelor of Ayurvedic Medicine & Surgery (B.A.M.S.)','ug',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(17,'Bachelor of Business Administration (B.B.A.)','ug',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(18,'Bachelor of Commerce (B.Com.)','ug',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(19,'Bachelor of Computer Applications (B.C.A.)','ug',1,'2026-03-01 10:54:24','2026-03-01 10:54:24',NULL),(20,'Bachelor of Dental Surgery (B.D.S.)','ug',1,'2026-03-01 10:54:25','2026-03-01 10:54:25',NULL),(21,'Bachelor of Design (B.Des. / B.D.)','ug',1,'2026-03-01 10:54:25','2026-03-01 10:54:25',NULL),(22,'Bachelor of Education (B.Ed.)','teacher',1,'2026-03-01 10:54:25','2026-03-01 10:54:25',NULL),(23,'Bachelor of Engineering / Bachelor of Technology (B.E./B.Tech.)','ug',1,'2026-03-01 10:54:25','2026-03-01 10:54:25',NULL),(24,'Bachelor of Fine Arts (BFA / BVA)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(25,'Bachelor of Fisheries Science (B.F.Sc./ B.Sc.[Fisheries])','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(26,'Bachelor of Homoeopathic Medicine and Surgery (B.H.M.S.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(27,'Bachelor of Laws (L.L.B.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(28,'Bachelor of Library Science (B.Lib. / B.Lib.Sc.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(29,'Bachelor of Mass Communications (B.M.C. / B.M.M.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(30,'Bachelor of Medicine and Bachelor of Surgery (M.B.B.S.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(31,'Bachelor of Nursing','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(32,'Bachelor of Pharmacy (B.Pharm / B.Pharma.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(33,'Bachelor of Physical Education (B.P.Ed.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(34,'Bachelor of Physiotherapy (B.P.T.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(35,'Bachelor of Science (B.Sc.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(36,'Bachelor of Social Work (BSW / B.A.[SW])','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(37,'Bachelor of Veterinary Science & Animal Husbandry (B.V.Sc. & A.H. / B.V.Sc)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(38,'Diploma in Education (D.Ed.)','ug',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(39,'Doctor of Medicine (M.D.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(40,'Doctor of Medicine in Homoeopathy (M.D.[Homoeopathy])','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(41,'Doctor of Pharmacy (Pharm.D)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(42,'Doctor of Philosophy (Ph.D.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(43,'Doctorate of Medicine (D.M.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(44,'Master of Architecture (M.Arch.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(45,'Master of Arts (M.A.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(46,'Master of Business Administration (M.B.A.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(47,'Master of Commerce (M.Com.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(48,'Master of Computer Applications (M.C.A.)','pg',1,'2026-03-01 10:54:26','2026-03-01 10:54:26',NULL),(49,'Master of Dental Surgery (M.D.S.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(50,'Master of Design (M.Des./ M.Design.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(51,'Master of Education (M.Ed.)','teacher',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(52,'Master of Engineering / Master of Technology (M.E./ M.Tech.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(53,'Master of Fine Arts (MFA / MVA)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(54,'Master of Laws (L.L.M.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(55,'Master of Library Science (M.Lib./ M.Lib.Sc.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(56,'Master of Mass Communications / Mass Media (M.M.C / M.M.M.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(57,'Master of Pharmacy (M.Pharm)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(58,'Master of Philosophy (M.Phil.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(59,'Master of Physical Education (M.P.Ed. / M.P.E.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(60,'Master of Physiotherapy (M.P.T.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(61,'Master of Science (M.Sc.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(62,'Master of Social Work / Master of Arts in Social Work (M.S.W. / M.A.[SW])','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(63,'Master of Surgery (M.S.)','pg',1,'2026-03-01 10:54:27','2026-03-01 10:54:27',NULL),(64,'Master of Veterinary Science (M.V.Sc.)','pg',1,'2026-03-01 10:54:28','2026-03-01 10:54:28',NULL),(65,'Master of Education Program (M.Ed.)','pg',1,'2026-03-01 10:54:28','2026-03-01 10:54:28',NULL),(66,'Montessori Teacher Training Course','ug',1,'2026-03-01 10:54:28','2026-03-01 10:54:28',NULL);
/*!40000 ALTER TABLE `qualifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `from` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int DEFAULT NULL,
  `entity_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `via` enum('sms','mail','notification','web_notification') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_status` enum('queue','process','deliver','cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'queue',
  `sms_response` longtext COLLATE utf8mb4_unicode_ci,
  `executed_at` datetime DEFAULT NULL,
  `template_id` int DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reminders_school_id_foreign` (`school_id`),
  CONSTRAINT `reminders_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,7,'App\\Models\\User',NULL,NULL,NULL),(2,3,8,'App\\Models\\User',NULL,NULL,NULL),(3,2,8,'App\\Models\\User',NULL,NULL,NULL),(4,5,8,'App\\Models\\User',NULL,NULL,NULL),(5,1,9,'App\\Models\\User',NULL,NULL,NULL),(6,3,10,'App\\Models\\User',NULL,NULL,NULL),(7,2,10,'App\\Models\\User',NULL,NULL,NULL),(8,5,10,'App\\Models\\User',NULL,NULL,NULL),(9,2,11,'App\\Models\\User',NULL,NULL,NULL),(10,5,11,'App\\Models\\User',NULL,NULL,NULL),(11,3,12,'App\\Models\\User',NULL,NULL,NULL),(12,2,12,'App\\Models\\User',NULL,NULL,NULL),(13,5,12,'App\\Models\\User',NULL,NULL,NULL),(14,1,13,'App\\Models\\User',NULL,NULL,NULL),(15,3,14,'App\\Models\\User',NULL,NULL,NULL),(16,2,14,'App\\Models\\User',NULL,NULL,NULL),(17,5,14,'App\\Models\\User',NULL,NULL,NULL),(18,3,15,'App\\Models\\User',NULL,NULL,NULL),(19,2,15,'App\\Models\\User',NULL,NULL,NULL),(20,5,15,'App\\Models\\User',NULL,NULL,NULL),(21,3,16,'App\\Models\\User',NULL,NULL,NULL),(22,2,16,'App\\Models\\User',NULL,NULL,NULL),(23,5,16,'App\\Models\\User',NULL,NULL,NULL),(24,1,17,'App\\Models\\User',NULL,NULL,NULL),(25,2,18,'App\\Models\\User',NULL,NULL,NULL),(26,5,18,'App\\Models\\User',NULL,NULL,NULL),(27,3,19,'App\\Models\\User',NULL,NULL,NULL),(28,2,19,'App\\Models\\User',NULL,NULL,NULL),(29,5,19,'App\\Models\\User',NULL,NULL,NULL),(30,1,20,'App\\Models\\User',NULL,NULL,NULL),(31,3,21,'App\\Models\\User',NULL,NULL,NULL),(32,2,21,'App\\Models\\User',NULL,NULL,NULL),(33,5,21,'App\\Models\\User',NULL,NULL,NULL),(34,4,21,'App\\Models\\User',NULL,NULL,NULL),(35,4,17,'App\\Models\\User',NULL,NULL,NULL),(36,4,14,'App\\Models\\User',NULL,NULL,NULL),(37,4,16,'App\\Models\\User',NULL,NULL,NULL),(38,4,20,'App\\Models\\User',NULL,NULL,NULL),(39,4,7,'App\\Models\\User',NULL,NULL,NULL),(40,4,10,'App\\Models\\User',NULL,NULL,NULL),(41,4,19,'App\\Models\\User',NULL,NULL,NULL),(42,4,8,'App\\Models\\User',NULL,NULL,NULL),(43,4,15,'App\\Models\\User',NULL,NULL,NULL);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'leave_applier','Leave Applier','Leave Applier','2026-03-01 10:54:28','2026-03-01 10:54:28'),(2,'leave_checker','Leave Checker','Leave Checker','2026-03-01 10:54:28','2026-03-01 10:54:28'),(3,'principal','Principal','Principal','2026-03-01 10:54:28','2026-03-01 10:54:28'),(4,'student_leave_checker','Student Leave Checker','Student Leave Checker','2026-03-01 10:54:28','2026-03-01 10:54:28'),(5,'class_coordinator','Class Coordinator','Class Coordinator','2026-03-01 10:54:28','2026-03-01 10:54:28'),(6,'transport_coordinator','Transport Coordinator','Transport Coordinator','2026-03-01 10:54:28','2026-03-01 10:54:28'),(7,'transport_driver','Transport Driver','Transport Driver','2026-03-01 10:54:28','2026-03-01 10:54:28');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `staff_id` int unsigned NOT NULL,
  `template_id` int unsigned NOT NULL,
  `gross_salary` int NOT NULL,
  `effective_date` date NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salaries_school_id_foreign` (`school_id`),
  KEY `salaries_staff_id_foreign` (`staff_id`),
  KEY `salaries_template_id_foreign` (`template_id`),
  CONSTRAINT `salaries_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `salaries_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`),
  CONSTRAINT `salaries_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `payroll_templates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_items`
--

DROP TABLE IF EXISTS `salary_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `salary_id` int unsigned NOT NULL,
  `template_item_id` int unsigned NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `salary_items_salary_id_foreign` (`salary_id`),
  KEY `salary_items_template_item_id_foreign` (`template_item_id`),
  CONSTRAINT `salary_items_salary_id_foreign` FOREIGN KEY (`salary_id`) REFERENCES `salaries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `salary_items_template_item_id_foreign` FOREIGN KEY (`template_item_id`) REFERENCES `template_items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_items`
--

LOCK TABLES `salary_items` WRITE;
/*!40000 ALTER TABLE `salary_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_grade`
--

DROP TABLE IF EXISTS `sc_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_grade` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grading_method` enum('cbse','passfail') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sc_grade_school_id_foreign` (`school_id`),
  KEY `sc_grade_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `sc_grade_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `sc_grade_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_grade`
--

LOCK TABLES `sc_grade` WRITE;
/*!40000 ALTER TABLE `sc_grade` DISABLE KEYS */;
INSERT INTO `sc_grade` VALUES (1,1,1,'scholastic','cbse','2026-03-01 10:55:59','2026-03-01 10:55:59'),(2,1,1,'scholastic','passfail','2026-03-01 10:55:59','2026-03-01 10:55:59');
/*!40000 ALTER TABLE `sc_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_details`
--

DROP TABLE IF EXISTS `school_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `school_details_school_id_foreign` (`school_id`),
  CONSTRAINT `school_details_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_details`
--

LOCK TABLES `school_details` WRITE;
/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` VALUES (1,1,'about_us','-','2026-03-01 10:54:35','2026-03-01 10:54:35'),(2,1,'admission_open','-','2026-03-01 10:54:35','2026-03-01 10:54:35'),(3,1,'admission_close_message','-','2026-03-01 10:54:35','2026-03-01 10:54:35'),(4,1,'admission_close_on','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(5,1,'affiliation_no','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(6,1,'affiliated_by','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(7,1,'board','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(8,1,'date_of_establishment','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(9,1,'landline_no','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(10,1,'moto','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(11,1,'school_logo','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(12,1,'website','-','2026-03-01 10:54:36','2026-03-01 10:54:36'),(13,1,'board','Matriculation','2026-03-01 10:54:37','2026-03-01 10:54:37');
/*!40000 ALTER TABLE `school_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `state_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `slug` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schools_name_unique` (`name`),
  UNIQUE KEY `schools_email_unique` (`email`),
  UNIQUE KEY `schools_phone_unique` (`phone`),
  KEY `schools_country_id_foreign` (`country_id`),
  KEY `schools_state_id_foreign` (`state_id`),
  KEY `schools_city_id_foreign` (`city_id`),
  CONSTRAINT `schools_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `schools_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `schools_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'Demo School','demoschool@gegok12.com','9500979461',NULL,NULL,NULL,NULL,NULL,1,'demo-school','2026-03-01 10:54:35','2026-03-01 10:54:35',NULL);
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sections_school_id_foreign` (`school_id`),
  CONSTRAINT `sections_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,'A',1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(2,1,'B',1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_mail`
--

DROP TABLE IF EXISTS `send_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `send_mail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `student_id` int unsigned DEFAULT NULL,
  `from_address` text COLLATE utf8mb4_unicode_ci,
  `from` text COLLATE utf8mb4_unicode_ci,
  `to` text COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `attachments` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('queue','delivered','failed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('mail','inbox','sent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id` text COLLATE utf8mb4_unicode_ci,
  `executed_at` timestamp NULL DEFAULT NULL,
  `is_executed` tinyint(1) NOT NULL DEFAULT '0',
  `fired_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `send_mail_school_id_foreign` (`school_id`),
  KEY `send_mail_academic_year_id_foreign` (`academic_year_id`),
  KEY `send_mail_user_id_foreign` (`user_id`),
  KEY `send_mail_student_id_foreign` (`student_id`),
  CONSTRAINT `send_mail_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `send_mail_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `send_mail_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `send_mail_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_mail`
--

LOCK TABLES `send_mail` WRITE;
/*!40000 ALTER TABLE `send_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `send_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'sitetitle','Site Title','Site Title to show in Browser Bar','School-Plus','{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Title\" ,\"type\":\"text\"}',1,'2026-03-01 10:54:15','2026-03-01 10:54:15'),(2,'sitename','Site Name','This site name is used in emails and copyrights','School-Plus','{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Title\" ,\"type\":\"text\"}',1,'2026-03-01 10:54:15','2026-03-01 10:54:15'),(3,'sitelogo','Site Logo','Logo of the website. Recommended Size : 220px (w) x 45px (h)','images/logo.png','{\"name\":\"value\",\"label\":\"Value\" ,\"type\":\"browse\"}',1,'2026-03-01 10:54:15','2026-03-01 10:54:15'),(4,'favicon','Favicon','Site Favicon','images/favicon.png','{\"name\":\"value\",\"label\":\"Value\", \"title\":\"Site Favicon\" ,\"type\":\"browse\", \"disk\":\"uploads\"}',1,'2026-03-01 10:54:15','2026-03-01 10:54:15'),(5,'maintenance','Maintenance','Maintenance','0','{\"name\":\"value\",\"label\":\"Maintenance\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}',1,'2026-03-01 10:54:16','2026-03-01 10:54:16'),(6,'login_status','login','login','1','{\"name\":\"value\",\"label\":\"Userlogin\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}',1,'2026-03-01 10:54:16','2026-03-01 10:54:16'),(7,'register_status','Register Status','Register Status','1','{\"name\":\"value\",\"label\":\"Register Status\" ,\"type\":\"radio\", \"options\":{\"1\":\"Active\", \"0\":\"Inactive\"}}',1,'2026-03-01 10:54:16','2026-03-01 10:54:16');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_templates`
--

LOCK TABLES `sms_templates` WRITE;
/*!40000 ALTER TABLE `sms_templates` DISABLE KEYS */;
INSERT INTO `sms_templates` VALUES (1,'Event',NULL,'Hi..Your event has been scheduled on :date at :location. For more details log in to church social App. https://churchcms.appsexpress.net',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(2,'birthday_message','Wishing you a happy birthday and a wonderful year.','Wishing you a happy birthday and a wonderful year.\r\n                          Thanks & Regards \r\n                          Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(3,'birthday_message','May this special day bring you endless joy and tons of precious memories!Happy birthday.','May this special day bring you endless joy and tons of precious memories!Happy birthday.\r\n                          Thanks & Regards \r\n                          Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(4,'birthday_message','Happy birthday! Here’s to a bright, healthy and exciting future!.','Happy birthday! Here’s to a bright, healthy and exciting future!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(5,'birthday_message','Wishing you a wonderful day and all the most amazing things on your Big Day!Happy birthday.','Wishing you a wonderful day and all the most amazing things on your Big Day!Happy birthday.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(6,'birthday_message','Happy birthday! May your day be filled with lots of love and happiness.','Happy birthday! May your day be filled with lots of love and happiness.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(7,'birthday_message','May this year surprise you with full of joy and happiness! Happy birthday!','May this year surprise you with full of joy and happiness! Happy birthday!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(8,'birthday_message','Sending you a birthday wish wrapped with all my love. Have a very happy birthday!','Sending you a birthday wish wrapped with all my love. Have a very happy birthday!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(9,'birthday_message','Many happy returns on your birthday today from all of us.We hope you have a wonderful day!','Many happy returns on your birthday today from all of us.We hope you have a wonderful day!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(10,'birthday_message','May your birthday be sprinkled with fun and laughter. Have a great day!','May your birthday be sprinkled with fun and laughter. Have a great day!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(11,'birthday_message','Happy Birthday!I hope you have a great day today and the year ahead is full of many blessings.','Happy Birthday!I hope you have a great day today and the year ahead is full of many blessings.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(12,'reset_password',NULL,'Click this link :url to reset your password.',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(13,'absent_message',NULL,':message\r\n            Thanks & Regards\r\n            :school_name',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(14,'birthday',NULL,':message\r\n            Thanks & Regards\r\n            :school_name',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(15,'work_anniversary_message','Another year of excellence! Thanks for all the amazing work you do. Your effort and enthusiasm are much needed, and very much appreciated.','Another year of excellence! Thanks for all the amazing work you do. Your effort and enthusiasm are much needed, and very much appreciated.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:16','2026-03-01 10:54:16',NULL),(16,'work_anniversary_message','From all of us… happy anniversary! Thank you for your hard work, your generosity, and your contagious enthusiasm.','From all of us… happy anniversary! Thank you for your hard work, your generosity, and your contagious enthusiasm.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(17,'work_anniversary_message','Congratulations on your work anniversary! We appreciate your energy, your kindness, and all the work you do, but most of all, we just appreciate you!','Congratulations on your work anniversary! We appreciate your energy, your kindness, and all the work you do, but most of all, we just appreciate you!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(18,'work_anniversary_message','Congratulations on your work anniversary. Working with a wonderful person like you was always a great experience.','Congratulations on your work anniversary. Working with a wonderful person like you was always a great experience.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(19,'work_anniversary_message','Sending heartiest wishes to the nicest employee! We are grateful to you for all the contributions that you afforded to make our company progressed.','Sending heartiest wishes to the nicest employee! We are grateful to you for all the contributions that you afforded to make our company progressed.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(20,'work_anniversary_message','Many congratulations on your happy work anniversary! May you accomplish more successful working years with this organization. Wish you good luck.','Many congratulations on your happy work anniversary! May you accomplish more successful working years with this organization. Wish you good luck.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(21,'work_anniversary_message','We feel lucky and glad to be a part of your team. Your exceptional leadership is beyond words. Happy work anniversary.','We feel lucky and glad to be a part of your team. Your exceptional leadership is beyond words. Happy work anniversary.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(22,'work_anniversary_message','A great employee like you is valuable for both the organization as well as co-workers. Well done and enjoy your happy work anniversary.','A great employee like you is valuable for both the organization as well as co-workers. Well done and enjoy your happy work anniversary.\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(23,'work_anniversary_message','This is to remind you that you have come a long way and your contributions have continued to inspire us. Wish you a very Happy Work Anniversary!','This is to remind you that you have come a long way and your contributions have continued to inspire us. Wish you a very Happy Work Anniversary!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(24,'work_anniversary_message','Everyone requires a person with an abundance of positive vibe and confidence to get things done in a flawless manner. Thank you for being that person. Warm wishes on your work anniversary!','Everyone requires a person with an abundance of positive vibe and confidence to get things done in a flawless manner. Thank you for being that person. Warm wishes on your work anniversary!\r\n                              Thanks & Regards \r\n                              Administration Team',1,'2026-03-01 10:54:17','2026-03-01 10:54:17',NULL),(25,'admission_confirmation',NULL,'Hi Sir\\Madam\r\n                            Your Application No. :application_no for the admission in :school_name has been approved.\r\n                            Thanks & Regards\r\n                            Administration Team',1,'2026-03-01 10:54:18','2026-03-01 10:54:18',NULL);
/*!40000 ALTER TABLE `sms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standards`
--

DROP TABLE IF EXISTS `standards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `standards_school_id_foreign` (`school_id`),
  CONSTRAINT `standards_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standards`
--

LOCK TABLES `standards` WRITE;
/*!40000 ALTER TABLE `standards` DISABLE KEYS */;
INSERT INTO `standards` VALUES (1,1,'prekg',1,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(2,1,'lkg',2,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(3,1,'ukg',3,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(4,1,'1',4,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(5,1,'2',5,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(6,1,'3',6,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(7,1,'4',7,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(8,1,'5',8,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(9,1,'6',9,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(10,1,'7',10,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(11,1,'8',11,1,'2026-03-01 10:54:37','2026-03-01 10:54:37',NULL),(12,1,'9',12,1,'2026-03-01 10:54:38','2026-03-01 10:54:38',NULL),(13,1,'10',13,1,'2026-03-01 10:54:38','2026-03-01 10:54:38',NULL),(14,1,'11',14,1,'2026-03-01 10:54:38','2026-03-01 10:54:38',NULL),(15,1,'12',15,1,'2026-03-01 10:54:38','2026-03-01 10:54:38',NULL);
/*!40000 ALTER TABLE `standards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `standards_link`
--

DROP TABLE IF EXISTS `standards_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standards_link` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `class_teacher_id` int unsigned NOT NULL,
  `standard_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `no_of_students` int DEFAULT NULL,
  `stream` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `standards_link_school_id_foreign` (`school_id`),
  KEY `standards_link_academic_year_id_foreign` (`academic_year_id`),
  KEY `standards_link_class_teacher_id_foreign` (`class_teacher_id`),
  KEY `standards_link_standard_id_foreign` (`standard_id`),
  KEY `standards_link_section_id_foreign` (`section_id`),
  CONSTRAINT `standards_link_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `standards_link_class_teacher_id_foreign` FOREIGN KEY (`class_teacher_id`) REFERENCES `users` (`id`),
  CONSTRAINT `standards_link_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `standards_link_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  CONSTRAINT `standards_link_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standards_link`
--

LOCK TABLES `standards_link` WRITE;
/*!40000 ALTER TABLE `standards_link` DISABLE KEYS */;
INSERT INTO `standards_link` VALUES (1,1,3,21,4,1,NULL,NULL,1,'2026-03-01 11:40:08','2026-03-01 11:40:08',NULL),(2,1,3,17,5,1,NULL,NULL,1,'2026-03-01 11:41:19','2026-03-01 11:41:19',NULL),(3,1,3,14,6,1,NULL,NULL,1,'2026-03-01 11:42:22','2026-03-01 11:42:22',NULL),(4,1,3,16,7,1,NULL,NULL,1,'2026-03-01 11:43:25','2026-03-01 11:43:25',NULL),(5,1,3,20,8,1,NULL,NULL,1,'2026-03-01 11:44:26','2026-03-01 11:44:26',NULL),(6,1,3,7,9,1,NULL,NULL,1,'2026-03-01 11:46:36','2026-03-01 11:46:36',NULL),(7,1,3,10,10,1,NULL,NULL,1,'2026-03-01 11:48:40','2026-03-01 11:48:40',NULL),(8,1,3,19,11,1,NULL,NULL,1,'2026-03-01 11:53:22','2026-03-01 11:53:22',NULL),(9,1,3,8,12,1,NULL,NULL,1,'2026-03-01 11:53:51','2026-03-01 11:53:51',NULL),(10,1,3,15,13,1,NULL,NULL,1,'2026-03-01 11:54:18','2026-03-01 11:54:18',NULL);
/*!40000 ALTER TABLE `standards_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `states_country_id_foreign` (`country_id`),
  CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,7,'Andhra Pradesh',1,'2026-03-01 10:54:07','2026-03-01 10:54:07',NULL),(2,7,'Arunachal Pradesh',1,'2026-03-01 10:54:07','2026-03-01 10:54:07',NULL),(3,7,'Assam',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(4,7,'Bihar',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(5,7,'Chhattisgarh',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(6,7,'Goa',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(7,7,'Gujarat',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(8,7,'Haryana',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(9,7,'Himachal Pradesh',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(10,7,'Jammu and Kashmir',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(11,7,'Jharkhand',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(12,7,'Karnataka',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(13,7,'Kerala',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(14,7,'Madhya Pradesh',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(15,7,'Maharashtra',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(16,7,'Manipur',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(17,7,'Meghalaya',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(18,7,'Mizoram',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(19,7,'Nagaland',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(20,7,'Odisha',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(21,7,'Punjab',1,'2026-03-01 10:54:08','2026-03-01 10:54:08',NULL),(22,7,'Rajasthan',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(23,7,'Sikkim',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(24,7,'Tamilnadu',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(25,7,'Telangana',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(26,7,'Tripura',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(27,7,'Uttar Pradesh',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(28,7,'Uttarakhand',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL),(29,7,'West Bengal',1,'2026-03-01 10:54:09','2026-03-01 10:54:09',NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_academics`
--

DROP TABLE IF EXISTS `student_academics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_academics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned DEFAULT NULL,
  `roll_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board_registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode_of_transport` enum('auto','car','city_bus','cycle','rickshaw','school_bus','taxi','walking') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_details` longtext COLLATE utf8mb4_unicode_ci,
  `siblings` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siblings_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sibling_details` longtext COLLATE utf8mb4_unicode_ci,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `medication_problems` longtext COLLATE utf8mb4_unicode_ci,
  `medication_needs` longtext COLLATE utf8mb4_unicode_ci,
  `medication_allergies` longtext COLLATE utf8mb4_unicode_ci,
  `food_allergies` longtext COLLATE utf8mb4_unicode_ci,
  `other_allergies` longtext COLLATE utf8mb4_unicode_ci,
  `other_medical_information` longtext COLLATE utf8mb4_unicode_ci,
  `academic_status` enum('pass','fail') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bus_pass` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_academics_school_id_foreign` (`school_id`),
  KEY `student_academics_academic_year_id_foreign` (`academic_year_id`),
  KEY `student_academics_user_id_foreign` (`user_id`),
  KEY `student_academics_standardlink_id_foreign` (`standardLink_id`),
  CONSTRAINT `student_academics_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `student_academics_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `student_academics_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `student_academics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_academics`
--

LOCK TABLES `student_academics` WRITE;
/*!40000 ALTER TABLE `student_academics` DISABLE KEYS */;
INSERT INTO `student_academics` VALUES (1,1,3,22,4,'24',NULL,NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-03-01 13:34:56','2026-03-01 13:34:56',NULL);
/*!40000 ALTER TABLE `student_academics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_assignments`
--

DROP TABLE IF EXISTS `student_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_assignments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `assignment_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `assignment_file` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `obtained_marks` int DEFAULT NULL,
  `submitted_on` date NOT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `marks_given_by` int unsigned DEFAULT NULL,
  `marks_given_on` date DEFAULT NULL,
  `status` enum('pending','submitted','cancel','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_assignments_assignment_id_foreign` (`assignment_id`),
  KEY `student_assignments_user_id_foreign` (`user_id`),
  KEY `student_assignments_marks_given_by_foreign` (`marks_given_by`),
  CONSTRAINT `student_assignments_assignment_id_foreign` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`),
  CONSTRAINT `student_assignments_marks_given_by_foreign` FOREIGN KEY (`marks_given_by`) REFERENCES `users` (`id`),
  CONSTRAINT `student_assignments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_assignments`
--

LOCK TABLES `student_assignments` WRITE;
/*!40000 ALTER TABLE `student_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_history`
--

DROP TABLE IF EXISTS `student_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `student_id` int unsigned DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `entity_id` text COLLATE utf8mb4_unicode_ci,
  `entity_type` text COLLATE utf8mb4_unicode_ci,
  `type` enum('image','video','assignment','homework') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_history_school_id_foreign` (`school_id`),
  KEY `student_history_student_id_foreign` (`student_id`),
  KEY `student_history_parent_id_foreign` (`parent_id`),
  CONSTRAINT `student_history_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`),
  CONSTRAINT `student_history_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `student_history_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_history`
--

LOCK TABLES `student_history` WRITE;
/*!40000 ALTER TABLE `student_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_homework`
--

DROP TABLE IF EXISTS `student_homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_homework` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `homework_id` bigint unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `attachment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submitted_on` date DEFAULT NULL,
  `checked_by` int unsigned DEFAULT NULL,
  `checked_on` date DEFAULT NULL,
  `status` enum('unchecked','checked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unchecked',
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `reply_comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_homework_homework_id_foreign` (`homework_id`),
  KEY `student_homework_user_id_foreign` (`user_id`),
  KEY `student_homework_checked_by_foreign` (`checked_by`),
  CONSTRAINT `student_homework_checked_by_foreign` FOREIGN KEY (`checked_by`) REFERENCES `users` (`id`),
  CONSTRAINT `student_homework_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `homeworks` (`id`),
  CONSTRAINT `student_homework_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_homework`
--

LOCK TABLES `student_homework` WRITE;
/*!40000 ALTER TABLE `student_homework` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_homework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_parent_links`
--

DROP TABLE IF EXISTS `student_parent_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_parent_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `parent_id` int unsigned NOT NULL,
  `student_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_parent_links_school_id_foreign` (`school_id`),
  KEY `student_parent_links_parent_id_foreign` (`parent_id`),
  KEY `student_parent_links_student_id_foreign` (`student_id`),
  CONSTRAINT `student_parent_links_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`id`),
  CONSTRAINT `student_parent_links_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `student_parent_links_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_parent_links`
--

LOCK TABLES `student_parent_links` WRITE;
/*!40000 ALTER TABLE `student_parent_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_parent_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standard_id` int unsigned NOT NULL,
  `section_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('core','elective','exam') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjects_school_id_foreign` (`school_id`),
  KEY `subjects_academic_year_id_foreign` (`academic_year_id`),
  KEY `subjects_standard_id_foreign` (`standard_id`),
  KEY `subjects_section_id_foreign` (`section_id`),
  CONSTRAINT `subjects_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `subjects_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `subjects_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  CONSTRAINT `subjects_standard_id_foreign` FOREIGN KEY (`standard_id`) REFERENCES `standards` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,1,1,1,1,'English','ENG-A-prekg','core',1,'2026-03-01 10:54:38','2026-03-01 10:54:38',NULL),(2,1,1,1,1,'Mathematics','MAT-A-prekg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(3,1,1,1,1,'General Awareness','GEN-A-prekg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(4,1,1,1,1,'Environmental Science','ENV-A-prekg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(5,1,1,1,2,'English','ENG-B-prekg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(6,1,1,1,2,'Mathematics','MAT-B-prekg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(7,1,1,1,2,'General Awareness','GEN-B-prekg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(8,1,1,1,2,'Environmental Science','ENV-B-prekg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(9,1,1,2,1,'English','ENG-A-lkg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(10,1,1,2,1,'Mathematics','MAT-A-lkg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(11,1,1,2,1,'General Awareness','GEN-A-lkg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(12,1,1,2,1,'Environmental Science','ENV-A-lkg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(13,1,1,2,2,'English','ENG-B-lkg','core',1,'2026-03-01 10:54:39','2026-03-01 10:54:39',NULL),(14,1,1,2,2,'Mathematics','MAT-B-lkg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(15,1,1,2,2,'General Awareness','GEN-B-lkg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(16,1,1,2,2,'Environmental Science','ENV-B-lkg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(17,1,1,3,1,'English','ENG-A-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(18,1,1,3,1,'Mathematics','MAT-A-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(19,1,1,3,1,'General Awareness','GEN-A-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(20,1,1,3,1,'Environmental Science','ENV-A-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(21,1,1,3,2,'English','ENG-B-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(22,1,1,3,2,'Mathematics','MAT-B-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(23,1,1,3,2,'General Awareness','GEN-B-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(24,1,1,3,2,'Environmental Science','ENV-B-ukg','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(25,1,1,4,1,'Skills','SKI-A-1','core',1,'2026-03-01 10:54:40','2026-03-01 10:54:40',NULL),(26,1,1,4,1,'Tamil','TAM-A-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(27,1,1,4,1,'English','ENG-A-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(28,1,1,4,1,'Mathematics','MAT-A-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(29,1,1,4,1,'Environmental Science','ENV-A-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(30,1,1,4,2,'Skills','SKI-B-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(31,1,1,4,2,'Tamil','TAM-B-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(32,1,1,4,2,'English','ENG-B-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(33,1,1,4,2,'Mathematics','MAT-B-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(34,1,1,4,2,'Environmental Science','ENV-B-1','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(35,1,1,5,1,'Skills','SKI-A-2','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(36,1,1,5,1,'Tamil','TAM-A-2','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(37,1,1,5,1,'English','ENG-A-2','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(38,1,1,5,1,'Mathematics','MAT-A-2','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(39,1,1,5,1,'Environmental Science','ENV-A-2','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(40,1,1,5,2,'Skills','SKI-B-2','core',1,'2026-03-01 10:54:41','2026-03-01 10:54:41',NULL),(41,1,1,5,2,'Tamil','TAM-B-2','core',1,'2026-03-01 10:54:42','2026-03-01 10:54:42',NULL),(42,1,1,5,2,'English','ENG-B-2','core',1,'2026-03-01 10:54:42','2026-03-01 10:54:42',NULL),(43,1,1,5,2,'Mathematics','MAT-B-2','core',1,'2026-03-01 10:54:42','2026-03-01 10:54:42',NULL),(44,1,1,5,2,'Environmental Science','ENV-B-2','core',1,'2026-03-01 10:54:42','2026-03-01 10:54:42',NULL),(45,1,1,6,1,'Skills','SKI-A-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(46,1,1,6,1,'Tamil','TAM-A-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(47,1,1,6,1,'English','ENG-A-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(48,1,1,6,1,'Mathematics','MAT-A-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(49,1,1,6,1,'Environmental Science','ENV-A-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(50,1,1,6,2,'Skills','SKI-B-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(51,1,1,6,2,'Tamil','TAM-B-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(52,1,1,6,2,'English','ENG-B-3','core',1,'2026-03-01 10:54:43','2026-03-01 10:54:43',NULL),(53,1,1,6,2,'Mathematics','MAT-B-3','core',1,'2026-03-01 10:54:44','2026-03-01 10:54:44',NULL),(54,1,1,6,2,'Environmental Science','ENV-B-3','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(55,1,1,7,1,'Skills','SKI-A-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(56,1,1,7,1,'English','ENG-A-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(57,1,1,7,1,'Mathematics','MAT-A-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(58,1,1,7,1,'Science','SCI-A-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(59,1,1,7,1,'Social Science','SOC-A-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(60,1,1,7,1,'Tamil','EL-TAM-A-4','elective',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(61,1,1,7,2,'Skills','SKI-B-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(62,1,1,7,2,'English','ENG-B-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(63,1,1,7,2,'Mathematics','MAT-B-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(64,1,1,7,2,'Science','SCI-B-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(65,1,1,7,2,'Social Science','SOC-B-4','core',1,'2026-03-01 10:54:45','2026-03-01 10:54:45',NULL),(66,1,1,7,2,'Sanskrit','EL-SAN-B-4','elective',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(67,1,1,8,1,'Skills','SKI-A-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(68,1,1,8,1,'English','ENG-A-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(69,1,1,8,1,'Mathematics','MAT-A-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(70,1,1,8,1,'Science','SCI-A-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(71,1,1,8,1,'Social Science','SOC-A-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(72,1,1,8,1,'Tamil','EL-TAM-A-5','elective',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(73,1,1,8,2,'Skills','SKI-B-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(74,1,1,8,2,'English','ENG-B-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(75,1,1,8,2,'Mathematics','MAT-B-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(76,1,1,8,2,'Science','SCI-B-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(77,1,1,8,2,'Social Science','SOC-B-5','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(78,1,1,8,2,'Sanskrit','EL-SAN-B-5','elective',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(79,1,1,9,1,'English','ENG-A-6','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(80,1,1,9,1,'Mathematics','MAT-A-6','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(81,1,1,9,1,'Science','SCI-A-6','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(82,1,1,9,1,'Social Science','SOC-A-6','core',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(83,1,1,9,1,'Tamil','EL-TAM-A-6','elective',1,'2026-03-01 10:54:46','2026-03-01 10:54:46',NULL),(84,1,1,9,2,'English','ENG-B-6','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(85,1,1,9,2,'Mathematics','MAT-B-6','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(86,1,1,9,2,'Science','SCI-B-6','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(87,1,1,9,2,'Social Science','SOC-B-6','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(88,1,1,9,2,'Sanskrit','EL-SAN-B-6','elective',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(89,1,1,10,1,'English','ENG-A-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(90,1,1,10,1,'Mathematics','MAT-A-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(91,1,1,10,1,'Science','SCI-A-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(92,1,1,10,1,'Social Science','SOC-A-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(93,1,1,10,1,'Tamil','EL-TAM-A-7','elective',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(94,1,1,10,2,'English','ENG-B-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(95,1,1,10,2,'Mathematics','MAT-B-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(96,1,1,10,2,'Science','SCI-B-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(97,1,1,10,2,'Social Science','SOC-B-7','core',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(98,1,1,10,2,'Sanskrit','EL-SAN-B-7','elective',1,'2026-03-01 10:54:47','2026-03-01 10:54:47',NULL),(99,1,1,11,1,'English','ENG-A-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(100,1,1,11,1,'Mathematics','MAT-A-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(101,1,1,11,1,'Science','SCI-A-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(102,1,1,11,1,'Social Science','SOC-A-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(103,1,1,11,1,'Tamil','EL-TAM-A-8','elective',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(104,1,1,11,2,'English','ENG-B-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(105,1,1,11,2,'Mathematics','MAT-B-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(106,1,1,11,2,'Science','SCI-B-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(107,1,1,11,2,'Social Science','SOC-B-8','core',1,'2026-03-01 10:54:48','2026-03-01 10:54:48',NULL),(108,1,1,11,2,'Sanskrit','EL-SAN-B-8','elective',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(109,1,1,12,1,'English','ENG-A-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(110,1,1,12,1,'Mathematics','MAT-A-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(111,1,1,12,1,'Science','SCI-A-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(112,1,1,12,1,'Social Science','SOC-A-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(113,1,1,12,1,'Tamil','EL-TAM-A-9','elective',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(114,1,1,12,2,'English','ENG-B-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(115,1,1,12,2,'Mathematics','MAT-B-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(116,1,1,12,2,'Science','SCI-B-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(117,1,1,12,2,'Social Science','SOC-B-9','core',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(118,1,1,12,2,'Sanskrit','EL-SAN-B-9','elective',1,'2026-03-01 10:54:49','2026-03-01 10:54:49',NULL),(119,1,1,13,1,'English','ENG-A-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(120,1,1,13,1,'Mathematics','MAT-A-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(121,1,1,13,1,'Science','SCI-A-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(122,1,1,13,1,'Social Science','SOC-A-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(123,1,1,13,1,'Tamil','EL-TAM-A-10','elective',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(124,1,1,13,2,'English','ENG-B-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(125,1,1,13,2,'Mathematics','MAT-B-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(126,1,1,13,2,'Science','SCI-B-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(127,1,1,13,2,'Social Science','SOC-B-10','core',1,'2026-03-01 10:54:50','2026-03-01 10:54:50',NULL),(128,1,1,13,2,'Sanskrit','EL-SAN-B-10','elective',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(129,1,1,14,1,'English','ENG-A-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(130,1,1,14,1,'Tamil','EL-TAM-A-11','elective',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(131,1,1,14,1,'Maths','MATHS-A-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(132,1,1,14,1,'Physics','PHYSI-A-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(133,1,1,14,1,'Chemistry','CHEMI-A-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(134,1,1,14,1,'Biology','BIOLO-A-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(135,1,1,14,2,'English','ENG-B-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(136,1,1,14,2,'Sanskrit','EL-SAN-B-11','elective',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(137,1,1,14,2,'Maths','MATHS-B-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(138,1,1,14,2,'Physics','PHYSI-B-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(139,1,1,14,2,'Chemistry','CHEMI-B-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(140,1,1,14,2,'Computer Sceince','COMPU-B-11','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(141,1,1,15,1,'English','ENG-A-12','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(142,1,1,15,1,'Tamil','EL-TAM-A-12','elective',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(143,1,1,15,1,'Maths','MATHS-A-12','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(144,1,1,15,1,'Physics','PHYSI-A-12','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(145,1,1,15,1,'Chemistry','CHEMI-A-12','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(146,1,1,15,1,'Biology','BIOLO-A-12','core',1,'2026-03-01 10:54:51','2026-03-01 10:54:51',NULL),(147,1,1,15,2,'English','ENG-B-12','core',1,'2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(148,1,1,15,2,'Sanskrit','EL-SAN-B-12','elective',1,'2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(149,1,1,15,2,'Maths','MATHS-B-12','core',1,'2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(150,1,1,15,2,'Physics','PHYSI-B-12','core',1,'2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(151,1,1,15,2,'Chemistry','CHEMI-B-12','core',1,'2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(152,1,1,15,2,'Computer Sceince','COMPU-B-12','core',1,'2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(153,1,3,4,1,'English','ENG_1','core',1,'2026-03-01 11:39:10','2026-03-01 11:39:10',NULL),(154,1,3,5,1,'English','ENG_2','core',1,'2026-03-01 11:40:42','2026-03-01 11:40:42',NULL),(155,1,3,6,1,'English','ENG_3','core',1,'2026-03-01 11:41:57','2026-03-01 11:41:57',NULL),(156,1,3,7,1,'English','ENG_4','core',1,'2026-03-01 11:43:01','2026-03-01 11:43:01',NULL),(157,1,3,8,1,'English','ENG_5','core',1,'2026-03-01 11:44:01','2026-03-01 11:44:01',NULL),(158,1,3,9,1,'English','ENG_6','core',1,'2026-03-01 11:46:08','2026-03-01 11:46:08',NULL),(159,1,3,10,1,'English','ENG_7','core',1,'2026-03-01 11:47:12','2026-03-01 11:47:12',NULL),(160,1,3,10,1,'English','ENG_7','core',1,'2026-03-01 11:48:03','2026-03-01 11:48:34','2026-03-01 11:48:34'),(161,1,3,11,1,'English','ENG_8','core',1,'2026-03-01 11:50:13','2026-03-01 11:50:13',NULL),(162,1,3,12,1,'English','ENG_9','core',1,'2026-03-01 11:51:02','2026-03-01 11:51:02',NULL),(163,1,3,13,1,'English','ENG_10','core',1,'2026-03-01 11:51:42','2026-03-01 11:51:42',NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `plan_id` int unsigned DEFAULT NULL,
  `status` enum('pending','approve','cancel','expired') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci,
  `plan_details` longtext COLLATE utf8mb4_unicode_ci,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriptions_school_id_foreign` (`school_id`),
  KEY `subscriptions_user_id_foreign` (`user_id`),
  KEY `subscriptions_plan_id_foreign` (`plan_id`),
  CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  CONSTRAINT `subscriptions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,1,2,1,'pending','{\"merchant_key\":\"\",\"txnid\":\"\",\"amount\":\"2000.00\",\"firstname\":\"\",\"email\":\"\",\"phone\":\"\",\"hash\":\"\",\"productinfo\":\"Subscription Amount\",\"status\":\"\",\"mode\":\"\",\"error_Message\":\"No Error\",\"addedon\":\"\"}',NULL,'2026-04-01','2026-03-01 10:54:55','2026-03-01 10:54:55',NULL);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_tag_name_unique` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('class','self','student','teacher') COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_date` datetime NOT NULL,
  `reminder` enum('one_hour_before_the_task','one_day_before_the_task','others','two_days_before_the_task') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reminder_date` datetime DEFAULT NULL,
  `to_do_list` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status` tinyint(1) NOT NULL DEFAULT '0',
  `task_flag` int NOT NULL,
  `snooze` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_school_id_foreign` (`school_id`),
  KEY `task_academic_year_id_foreign` (`academic_year_id`),
  KEY `task_user_id_foreign` (`user_id`),
  CONSTRAINT `task_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `task_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `task_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_assignees`
--

DROP TABLE IF EXISTS `task_assignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_assignees` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `task_id` bigint unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `standardLink_id` int unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_assignees_task_id_foreign` (`task_id`),
  KEY `task_assignees_user_id_foreign` (`user_id`),
  KEY `task_assignees_standardlink_id_foreign` (`standardLink_id`),
  CONSTRAINT `task_assignees_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `task_assignees_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`),
  CONSTRAINT `task_assignees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_assignees`
--

LOCK TABLES `task_assignees` WRITE;
/*!40000 ALTER TABLE `task_assignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_assignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_leave_applications`
--

DROP TABLE IF EXISTS `teacher_leave_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_leave_applications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `standardLink_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `from_date` datetime NOT NULL,
  `to_date` datetime NOT NULL,
  `reason_id` int unsigned DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `leave_type_id` int unsigned DEFAULT NULL,
  `approved_by` int unsigned DEFAULT NULL,
  `approved_on` date DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `session` enum('forenoon','afternoon','day') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','cancelled','completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_leave_applications_school_id_foreign` (`school_id`),
  KEY `teacher_leave_applications_academic_year_id_foreign` (`academic_year_id`),
  KEY `teacher_leave_applications_standardlink_id_foreign` (`standardLink_id`),
  KEY `teacher_leave_applications_user_id_foreign` (`user_id`),
  KEY `teacher_leave_applications_reason_id_foreign` (`reason_id`),
  KEY `teacher_leave_applications_leave_type_id_foreign` (`leave_type_id`),
  KEY `teacher_leave_applications_approved_by_foreign` (`approved_by`),
  CONSTRAINT `teacher_leave_applications_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `teacher_leave_applications_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  CONSTRAINT `teacher_leave_applications_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`),
  CONSTRAINT `teacher_leave_applications_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `absent_reasons` (`id`),
  CONSTRAINT `teacher_leave_applications_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `teacher_leave_applications_standardlink_id_foreign` FOREIGN KEY (`standardLink_id`) REFERENCES `standards_link` (`id`),
  CONSTRAINT `teacher_leave_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_leave_applications`
--

LOCK TABLES `teacher_leave_applications` WRITE;
/*!40000 ALTER TABLE `teacher_leave_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher_leave_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherprofile`
--

DROP TABLE IF EXISTS `teacherprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacherprofile` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `qualification_id` int unsigned DEFAULT NULL,
  `ug_degree` int unsigned DEFAULT NULL,
  `pg_degree` int unsigned DEFAULT NULL,
  `sub_qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` enum('assistant_teacher','co_ordinator','head_of_the_department','librarian','others','principal','teacher','senior_teacher','vice_principal','accountant','receptionist','lab_assistant','clerk','stock_keeper','peon','driver','helpers','security','physical_education_teacher','transport_coordinator') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` enum('full_time','part_time') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interested_in` longtext COLLATE utf8mb4_unicode_ci,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reporting_to` int unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacherprofile_school_id_foreign` (`school_id`),
  KEY `teacherprofile_academic_year_id_foreign` (`academic_year_id`),
  KEY `teacherprofile_user_id_foreign` (`user_id`),
  KEY `teacherprofile_qualification_id_foreign` (`qualification_id`),
  KEY `teacherprofile_ug_degree_foreign` (`ug_degree`),
  KEY `teacherprofile_pg_degree_foreign` (`pg_degree`),
  KEY `teacherprofile_reporting_to_foreign` (`reporting_to`),
  CONSTRAINT `teacherprofile_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `teacherprofile_pg_degree_foreign` FOREIGN KEY (`pg_degree`) REFERENCES `qualifications` (`id`),
  CONSTRAINT `teacherprofile_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`),
  CONSTRAINT `teacherprofile_reporting_to_foreign` FOREIGN KEY (`reporting_to`) REFERENCES `users` (`id`),
  CONSTRAINT `teacherprofile_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `teacherprofile_ug_degree_foreign` FOREIGN KEY (`ug_degree`) REFERENCES `qualifications` (`id`),
  CONSTRAINT `teacherprofile_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherprofile`
--

LOCK TABLES `teacherprofile` WRITE;
/*!40000 ALTER TABLE `teacherprofile` DISABLE KEYS */;
INSERT INTO `teacherprofile` VALUES (1,1,1,3,5,30,47,NULL,NULL,'librarian',NULL,NULL,NULL,'1',NULL,1,'2026-03-01 10:54:53','2026-03-01 10:54:53',NULL),(2,1,1,4,13,30,39,NULL,NULL,'receptionist',NULL,NULL,NULL,'2',NULL,1,'2026-03-01 10:54:54','2026-03-01 10:54:54',NULL),(3,1,1,5,7,37,52,NULL,NULL,'accountant','clerk',NULL,NULL,'5',NULL,1,'2026-03-01 10:54:54','2026-03-01 10:54:54',NULL),(4,1,1,6,6,32,42,NULL,NULL,'stock_keeper','clerk',NULL,NULL,'2',NULL,1,'2026-03-01 10:54:55','2026-03-01 10:54:55',NULL),(5,1,3,7,13,NULL,NULL,NULL,'Computer Science','assistant_teacher',NULL,NULL,NULL,'TCH100',NULL,1,'2026-03-01 11:33:57','2026-03-01 11:33:57',NULL),(6,1,3,8,13,NULL,NULL,NULL,'Computer Science','principal',NULL,NULL,NULL,'TCH101',8,1,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(7,1,3,9,13,NULL,NULL,NULL,'Computer Science','co_ordinator',NULL,NULL,NULL,'TCH102',8,1,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(8,1,3,10,13,NULL,NULL,NULL,'English','principal',NULL,NULL,NULL,'TCH103',10,1,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(9,1,3,11,13,NULL,NULL,NULL,'English','head_of_the_department',NULL,NULL,NULL,'TCH104',11,1,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(10,1,3,12,13,NULL,NULL,NULL,'Commerce','principal',NULL,NULL,NULL,'TCH105',8,1,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(11,1,3,13,13,NULL,NULL,NULL,'English','co_ordinator',NULL,NULL,NULL,'TCH106',10,1,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(12,1,3,14,13,NULL,NULL,NULL,'Computer Science','principal',NULL,NULL,NULL,'TCH107',11,1,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(13,1,3,15,13,NULL,NULL,NULL,'Science','principal',NULL,NULL,NULL,'TCH108',10,1,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(14,1,3,16,13,NULL,NULL,NULL,'Computer Science','principal',NULL,NULL,NULL,'TCH109',11,1,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(15,1,3,17,13,NULL,NULL,NULL,'English','co_ordinator',NULL,NULL,NULL,'TCH110',16,1,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(16,1,3,18,13,NULL,NULL,NULL,'Commerce','head_of_the_department',NULL,NULL,NULL,'TCH111',18,1,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(17,1,3,19,13,NULL,NULL,NULL,'Commerce','principal',NULL,NULL,NULL,'TCH112',19,1,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(18,1,3,20,13,NULL,NULL,NULL,'Computer Science','assistant_teacher',NULL,NULL,NULL,'TCH113',11,1,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(19,1,3,21,13,NULL,NULL,NULL,'English','principal',NULL,NULL,NULL,'TCH114',8,1,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL);
/*!40000 ALTER TABLE `teacherprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telephone_directory`
--

DROP TABLE IF EXISTS `telephone_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telephone_directory` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `telephone_directory_school_id_foreign` (`school_id`),
  CONSTRAINT `telephone_directory_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telephone_directory`
--

LOCK TABLES `telephone_directory` WRITE;
/*!40000 ALTER TABLE `telephone_directory` DISABLE KEYS */;
/*!40000 ALTER TABLE `telephone_directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `template_items`
--

DROP TABLE IF EXISTS `template_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `template_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `paycategory_id` int unsigned NOT NULL,
  `category_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_items_template_id_foreign` (`template_id`),
  KEY `template_items_item_id_foreign` (`item_id`),
  KEY `template_items_paycategory_id_foreign` (`paycategory_id`),
  CONSTRAINT `template_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `payroll_items` (`id`),
  CONSTRAINT `template_items_paycategory_id_foreign` FOREIGN KEY (`paycategory_id`) REFERENCES `pay_categories` (`id`),
  CONSTRAINT `template_items_template_id_foreign` FOREIGN KEY (`template_id`) REFERENCES `payroll_templates` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `template_items`
--

LOCK TABLES `template_items` WRITE;
/*!40000 ALTER TABLE `template_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `template_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_accounts`
--

DROP TABLE IF EXISTS `transaction_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `param1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaction_accounts_school_id_foreign` (`school_id`),
  KEY `transaction_accounts_user_id_foreign` (`user_id`),
  CONSTRAINT `transaction_accounts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `transaction_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_accounts`
--

LOCK TABLES `transaction_accounts` WRITE;
/*!40000 ALTER TABLE `transaction_accounts` DISABLE KEYS */;
INSERT INTO `transaction_accounts` VALUES (1,1,1,'Cash Account','CA','348738747833','CASH123',NULL,NULL,'2026-03-01 10:56:01','2026-03-01 10:56:01',NULL);
/*!40000 ALTER TABLE `transaction_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_types`
--

DROP TABLE IF EXISTS `transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_types`
--

LOCK TABLES `transaction_types` WRITE;
/*!40000 ALTER TABLE `transaction_types` DISABLE KEYS */;
INSERT INTO `transaction_types` VALUES (1,'Salary','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(2,'Salary Advance','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(3,'Salary Return','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL),(4,'Other payments','2026-03-01 10:56:01','2026-03-01 10:56:01',NULL);
/*!40000 ALTER TABLE `transaction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportations`
--

DROP TABLE IF EXISTS `transportations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `stops` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transportations_school_id_foreign` (`school_id`),
  KEY `transportations_academic_year_id_foreign` (`academic_year_id`),
  CONSTRAINT `transportations_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `transportations_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportations`
--

LOCK TABLES `transportations` WRITE;
/*!40000 ALTER TABLE `transportations` DISABLE KEYS */;
/*!40000 ALTER TABLE `transportations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usergroups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usergroups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
INSERT INTO `usergroups` VALUES (1,'SiteAdmin','2026-03-01 10:54:05','2026-03-01 10:54:05',NULL),(2,'SiteSubadmin','2026-03-01 10:54:05','2026-03-01 10:54:05',NULL),(3,'SchoolAdmin','2026-03-01 10:54:05','2026-03-01 10:54:05',NULL),(4,'SchoolSubadmin','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(5,'Teacher','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(6,'Student','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(7,'Parent','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(8,'Librarian','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(9,'OldStudent','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(10,'Receptionist','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(11,'Accountant','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(12,'Stock Keeper','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL),(13,'Non Teaching','2026-03-01 10:54:06','2026-03-01 10:54:06',NULL);
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofiles`
--

DROP TABLE IF EXISTS `userprofiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprofiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `usergroup_id` int unsigned NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` enum('a+','a1+','b+','b1+','o+','ab+','a1b+','a-','a1-','b-','b1-','o-','ab-','a1b-') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` enum('admin','business','central_government_employee','private','home_maker','state_government_employee','teacher','librarian','others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` enum('divorced','married','single','widowed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` text COLLATE utf8mb4_unicode_ci,
  `native_place` text COLLATE utf8mb4_unicode_ci,
  `mother_tongue` text COLLATE utf8mb4_unicode_ci,
  `caste` enum('BC','BCM','FC','MBC','OBC','Others','SC','SCA','ST') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_caste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city_id` int unsigned DEFAULT NULL,
  `state_id` int unsigned DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_periods` int DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EMIS_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive','exit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userprofiles_school_id_foreign` (`school_id`),
  KEY `userprofiles_user_id_foreign` (`user_id`),
  KEY `userprofiles_usergroup_id_foreign` (`usergroup_id`),
  KEY `userprofiles_city_id_foreign` (`city_id`),
  KEY `userprofiles_state_id_foreign` (`state_id`),
  KEY `userprofiles_country_id_foreign` (`country_id`),
  CONSTRAINT `userprofiles_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `userprofiles_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `userprofiles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `userprofiles_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  CONSTRAINT `userprofiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `userprofiles_usergroup_id_foreign` FOREIGN KEY (`usergroup_id`) REFERENCES `usergroups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofiles`
--

LOCK TABLES `userprofiles` WRITE;
/*!40000 ALTER TABLE `userprofiles` DISABLE KEYS */;
INSERT INTO `userprofiles` VALUES (1,NULL,1,1,'siteadmin','siteadmin','754175501','male','2012-05-01','ab+','admin',NULL,'Thiruvananthapuram','Thiruvananthapuram','Malayalam','Others',NULL,'Nammakal,Tamilnadu,India',31,24,7,'625001',NULL,NULL,'184147','248900','2023-08-25',NULL,'uploads/male.png','active','2026-03-01 10:54:34','2026-03-01 10:54:34',NULL),(2,1,2,3,'demo','school','192350603','female','2010-12-15','b-','admin',NULL,'Hyderabad','Hyderabad','Malayalam','FC',NULL,'Namakkal,Tamilnadu,India',31,24,7,'625001',NULL,NULL,'868299','333653','2024-02-24',NULL,'uploads/female.png','active','2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(3,1,3,8,'librarian','librarian','774764600','male','2016-03-12','ab-','librarian',NULL,'Hyderabad','Hyderabad','Tamil','SC',NULL,'Namakkal,Tamilnadu,India',31,24,7,'625001',NULL,NULL,'429725','463919','2022-07-01',NULL,'uploads/male.png','active','2026-03-01 10:54:53','2026-03-01 10:54:53',NULL),(4,1,4,10,'receptionist','receptionist','698650505','female','2016-03-08','o+','others',NULL,'Mumbai','Mumbai','Hindi','SCA',NULL,'Namakkal,Tamilnadu,India',31,24,7,'625001',NULL,NULL,'988193','978601','2023-05-04',NULL,'uploads/female.png','active','2026-03-01 10:54:54','2026-03-01 10:54:54',NULL),(5,1,5,11,'accountant','accountant','157164941','male','2014-01-11','o-','others',NULL,'Thiruvananthapuram','Thiruvananthapuram','Hindi','SC',NULL,'Namakkal,Tamilnadu,India',31,24,7,'625001',NULL,NULL,'536287','907786','2023-09-12',NULL,'uploads/male.png','active','2026-03-01 10:54:54','2026-03-01 10:54:54',NULL),(6,1,6,12,'stock_keeper','stock_keeper','158269147','female','2017-12-19','b-','others',NULL,'Thiruvananthapuram','Thiruvananthapuram','Kannada','ST',NULL,'Namakkal,Tamilnadu,India',31,24,7,'625001',NULL,NULL,'273381','268','2023-12-27',NULL,'uploads/female.png','active','2026-03-01 10:54:55','2026-03-01 10:54:55',NULL),(7,1,7,5,'Diya','Gupta',NULL,'female','1991-07-12','ab+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'129 MG Road',15,NULL,7,'219817','124110172748',NULL,NULL,NULL,'2018-01-26','Test Data','uploads/female.png','active','2026-03-01 11:33:57','2026-03-01 11:33:57',NULL),(8,1,8,5,'Manish','Khan',NULL,'male','1998-06-05','a+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'59 MG Road',NULL,12,7,'517731','548334202233',NULL,NULL,NULL,'2021-09-05','Test Data','uploads/male.png','active','2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(9,1,9,5,'Suresh','Iyer',NULL,'male','1983-07-07','a+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'144 MG Road',25,12,7,'373437','858994645556',NULL,NULL,NULL,'2018-08-28','Test Data','uploads/male.png','active','2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(10,1,10,5,'Kavya','Iyer',NULL,'female','1998-05-10','b+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'158 MG Road',NULL,NULL,7,'565978','895638946001',NULL,NULL,NULL,'2018-10-20','Test Data','uploads/female.png','active','2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(11,1,11,5,'Simran','Patil',NULL,'female','1996-07-21','ab+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'156 MG Road',33,25,7,'572082','556450234612',NULL,NULL,NULL,'2015-07-29','Test Data','uploads/female.png','active','2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(12,1,12,5,'Vikas','Patil',NULL,'male','1992-11-26','ab+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'118 MG Road',33,15,7,'998386','896484865874',NULL,NULL,NULL,'2020-09-27','Test Data','uploads/male.png','active','2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(13,1,13,5,'Pooja','Gupta',NULL,'female','1994-08-20','b+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'100 MG Road',NULL,NULL,7,'919503','816269644429',NULL,NULL,NULL,'2020-10-14','Test Data','uploads/female.png','active','2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(14,1,14,5,'Ankit','Joshi',NULL,'male','1986-07-12','b+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5 MG Road',25,25,7,'441713','462056873151',NULL,NULL,NULL,'2015-08-15','Test Data','uploads/male.png','active','2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(15,1,15,5,'Nikhil','Ansari',NULL,'male','1985-11-03','ab+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'38 MG Road',NULL,12,7,'636349','202794581213',NULL,NULL,NULL,'2023-02-24','Test Data','uploads/male.png','active','2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(16,1,16,5,'Arjun','Reddy',NULL,'male','1980-06-20','o+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'170 MG Road',33,NULL,7,'537011','309559647031',NULL,NULL,NULL,'2019-03-06','Test Data','uploads/male.png','active','2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(17,1,17,5,'Anaya','Kulkarni',NULL,'female','1990-01-30','a+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'162 MG Road',33,NULL,7,'436127','618119533451',NULL,NULL,NULL,'2018-01-11','Test Data','uploads/female.png','active','2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(18,1,18,5,'Vikas','Mehta',NULL,'male','1989-12-04','o+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'179 MG Road',25,NULL,7,'208010','302013582328',NULL,NULL,NULL,'2022-06-10','Test Data','uploads/male.png','active','2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(19,1,19,5,'Kavya','Mishra',NULL,'female','1995-05-17','ab+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'128 MG Road',NULL,NULL,7,'691875','741461226594',NULL,NULL,NULL,'2020-07-19','Test Data','uploads/female.png','active','2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(20,1,20,5,'Arjun','Singh',NULL,'male','1989-10-31','o+',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'12 MG Road',15,NULL,7,'533993','588972596047',NULL,NULL,NULL,'2021-11-11','Test Data','uploads/male.png','active','2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(21,1,21,5,'Aarti','Shah',NULL,'female','1994-02-22','o-',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'138 MG Road',25,12,7,'475239','516175740795',NULL,NULL,NULL,'2015-01-11','Test Data','uploads/female.png','active','2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(22,1,22,6,'Rishi','Singh',NULL,'male','2022-03-01','b+',NULL,NULL,NULL,NULL,'Hindi','Others',NULL,'Miraroad',15,15,7,'401107',NULL,NULL,'1233354',NULL,'2026-03-01',NULL,'uploads/male.png','active','2026-03-01 13:34:56','2026-03-01 13:34:56',NULL);
/*!40000 ALTER TABLE `userprofiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `usergroup_id` int unsigned NOT NULL,
  `school_id` bigint unsigned DEFAULT NULL,
  `ref_id` int unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive','exit') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `email_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_verified` tinyint(1) NOT NULL DEFAULT '0',
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `is_reset` tinyint(1) NOT NULL DEFAULT '0',
  `platform_token` text COLLATE utf8mb4_unicode_ci,
  `device_id` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_usergroup_id_foreign` (`usergroup_id`),
  KEY `users_school_id_foreign` (`school_id`),
  KEY `users_ref_id_foreign` (`ref_id`),
  CONSTRAINT `users_ref_id_foreign` FOREIGN KEY (`ref_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `users_usergroup_id_foreign` FOREIGN KEY (`usergroup_id`) REFERENCES `usergroups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,NULL,NULL,'siteadmin','siteadmin@gegok12.com','1230456789','729688','$2y$10$Icv4YjtsD0eu3RZs/smqGuEH4U/HzSku5OGdxc2ayfcdAsQWUsN2y','active','9H8mgZPDRgyLM9fEQdW7ehOFBtmXQjxxU1LWrpr4',0,NULL,NULL,0,NULL,0,NULL,NULL,'2PLaOaWJF2','2026-03-01 10:54:33','2026-03-01 10:54:33',NULL),(2,3,1,NULL,'demoschool','demoschool@gegok12.com','2230456789','106618','$2y$10$xMGi1JXmB3lqfjClsF.5wOK13nk0PI8e5TTXbTVrH9GU7cAOf0sJi','active','bgQxhAChb3r45Y19UZa62AqXqPdXcxPp3EA898iX',0,NULL,NULL,0,NULL,0,NULL,NULL,'TW3YLoEIeH','2026-03-01 10:54:52','2026-03-01 10:54:52',NULL),(3,8,1,NULL,'librarian1','librarian1@gegok12.com','2230456701','258203','$2y$10$jl..Z/8X05sjDM6FA.IdLe2x.Aartaukw7YB.ljxwPz9W3ZCMOSl.','active','Z569sTE9GSAxKRDuAZrNOdvR77TksQBDoAKzDOHa',0,NULL,NULL,0,NULL,0,NULL,NULL,'SsVw3TD5uf','2026-03-01 10:54:53','2026-03-01 10:54:53',NULL),(4,10,1,NULL,'receptionist1','receptionist1@gegok12.com','2230456702','751423','$2y$10$YnYsboJH.bsKxbrfV1rtYucyWkXAydwgccU/UnSUbE93/c5v2q/iO','active','vQXSgNbUpFu5gUxatQmQ478bFm56dp2zORqvK2UA',0,NULL,NULL,0,NULL,0,NULL,NULL,'7woqtoPZ18','2026-03-01 10:54:54','2026-03-01 10:54:54',NULL),(5,11,1,NULL,'accountant1','accountant1@gegok12.com','2230456703','797120','$2y$10$eMqaPNP4S13YMyo2VMnIPeW0IX27tMRO2vpP0qjG17Le6rrTHOKrq','active','kP6FLEGXu9q3x9clH0h3fWpFrsosAFQqFeYgOzW5',0,NULL,NULL,0,NULL,0,NULL,NULL,'b2exDSBA9P','2026-03-01 10:54:54','2026-03-01 10:54:54',NULL),(6,12,1,NULL,'stock_keeper1','stock_keeper1@gegok12.com','2230456704','193583','$2y$10$g2UMfyZR9fiXb02cjOkB.Op7i3VwAg3pDEZS9MCWUosMHUGgLj4J2','active','pNjwAjKoIxIeDERQkRLTTSXsdaEUAYu1z0MLUaT4',0,NULL,NULL,0,NULL,0,NULL,NULL,'zNsXKVcRgh','2026-03-01 10:54:54','2026-03-01 10:54:54',NULL),(7,5,1,NULL,'diya797','diya.gupta0@gegok12.com','9860595779',NULL,'$2y$10$UyHApbvhySpXcAh6AapDiOcLMvixtXf4uWs3mKltq9XP8enX6xBaq','active','ZouD1p5tXExxr2aTO4aJPDzunxl3RN0QJc1LEs6J',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:57','2026-03-01 11:33:57',NULL),(8,5,1,NULL,'manish816','manish.khan1@gegok12.com','9837743172',NULL,'$2y$10$ubGoFa1X4pHR1CdE/WIPs.mupSyUhPwpy66hGEvHRyK6bUoEjP9L6','active','VHVsLtREm3NEVeQGy2GVhqzF3An5RR8Q3YDEpVuY',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(9,5,1,NULL,'suresh972','suresh.iyer2@gegok12.com','9875573978',NULL,'$2y$10$rwQ/2jg4r.lMrJy9prcDC.FLbKN8vpsHxfgrA4QBYJNXx52RVtXMO','active','fR4OPrCndvvN79Zs3tqs4MirPYRZqhjzid6OrMEV',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(10,5,1,NULL,'kavya1060','kavya.iyer3@gegok12.com','9878263338',NULL,'$2y$10$Rjc6qzBuY8sam//anAf/0.0YQTaIGrDrfS.0vipxp6PFUHMQWM8c2','active','8jyNDMbXkdBRUs4nne0IxL0EAmTo2QPL03yIztv6',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(11,5,1,NULL,'simran1148','simran.patil4@gegok12.com','9858614603',NULL,'$2y$10$4XiSdf6QGSiZMIMm.fwHYeVja6U57Qn68wdR/TZOvyTwE/UZkkZRy','active','9hAvu491gUgKaT0mPUICCvn8IORg7xZyltPNPbuG',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(12,5,1,NULL,'vikas1219','vikas.patil5@gegok12.com','9836073510',NULL,'$2y$10$GK9ML60m9Axvuv3ncM9TseJmaBhas/YRuI2lT0C3xnXI4qaMOUk7C','active','e8zeisZJQe9x4g2CrLcgYWoSVHx5ZJO5dJ4WL1Nt',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(13,5,1,NULL,'pooja1388','pooja.gupta6@gegok12.com','9822445418',NULL,'$2y$10$wzHSQR2bC79qRn//fmGbx.bYhyOA0b4Acu2mOAIy2cd0f/PMC/39q','active','uuzSad08Sly2XIKOYNDge3gPQAgDg5lWMyWgYsA3',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(14,5,1,NULL,'ankit1469','ankit.joshi7@gegok12.com','9882988619',NULL,'$2y$10$oLRZN81THvRgRkgPfz3SGOGPFDvjkNVCUvdpOj3AZtFj4CNjOhpEa','active','ocUDCFbqs7vUMvVbBQAIxB9XJyK3cABNRQUJv1uc',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:33:59','2026-03-01 11:33:59',NULL),(15,5,1,NULL,'nikhil1573','nikhil.ansari8@gegok12.com','9857139857',NULL,'$2y$10$rtf4c.HPWZPCpg.2pkOTAuI4vyXbzuaILsDCd9gQz4VUMCOAjaD8u','active','KQoBrxVuCTk84HzWIXz6EBKO8aqSMBcVRUgGO1Yu',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(16,5,1,NULL,'arjun1693','arjun.reddy9@gegok12.com','9843535668',NULL,'$2y$10$QLnDptCLupAuwNmPiCZJLOBOSLxNUldNVokIUUPnFC0x6fZMqEDJ2','active','U3HX4YQ9zSLn7jAZp4yOYAp4BzByYOgQLL70L2iS',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(17,5,1,NULL,'anaya1745','anaya.kulkarni10@gegok12.com','9883902761',NULL,'$2y$10$pSzZOFZZ2HECQFD6dnO17OWWfxZal3oIpjPoGPzptwfVjhq.UHK1C','active','nmAMC7UUGQ9Rsd56NKYyKXDc1qWvj0pTGMeLEOj7',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(18,5,1,NULL,'vikas1827','vikas.mehta11@gegok12.com','9816239466',NULL,'$2y$10$22OIuj1Z4ucNXJoMWmBfLe90iuVylEfWusz2cGlBPWef2oGOOWGZ.','active','Q0yBL6QZ7bMFT55dMP6fFe9Rx47jhpzhGhCBHdNr',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(19,5,1,NULL,'kavya1966','kavya.mishra12@gegok12.com','9892316923',NULL,'$2y$10$.9HoXh9akq5GGHTIcVkjJeoNZ3jK1NgC..HdLyvK023diWMBJJvgW','active','CsEE4LaRFPUwHiMykxSA6i2gdoh0nIJfuZLng6so',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(20,5,1,NULL,'arjun2042','arjun.singh13@gegok12.com','9855406164',NULL,'$2y$10$kg12GIG313qHddbkEYPkuujp27BlEhyFdejWrDnARqYgQqv302Qe2','active','fyGVqVUQ2H8MNTZ1SFfrruN9FzNKD5Vmr725T3Q8',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(21,5,1,NULL,'aarti2138','aarti.shah14@gegok12.com','9837393211',NULL,'$2y$10$IFXH6FTqUHFkbJwB3nZeruK.inBcTclN/h5xLRv28Q3g04ZrOrBPC','active','mqw9aljYAAZop8TK81dTOkAN7327lNoAYlbSCiw8',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 11:34:00','2026-03-01 11:34:00',NULL),(22,6,1,NULL,'rishi2281','singh.rishi881@gmail.com','7498906816','1233354','$2y$10$YX1m/RZZlGd1afg1ZEUj3OBUYvGuftcI8SBmgmbYWTsF4Cg0XMc1S','active','UnaH26IlhhMpTTYiD0Tle6zrCNMnzTVBJVzU9rlz',0,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'2026-03-01 13:34:56','2026-03-01 13:34:56',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_log`
--

DROP TABLE IF EXISTS `visitor_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_log` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `school_id` bigint unsigned NOT NULL,
  `academic_year_id` int unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `student_id` int unsigned DEFAULT NULL,
  `relation_with_student` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_visitors` int DEFAULT NULL,
  `visiting_purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int unsigned DEFAULT NULL,
  `date_of_visit` date NOT NULL,
  `entry_time` time DEFAULT NULL,
  `exit_time` time DEFAULT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitor_log_school_id_foreign` (`school_id`),
  KEY `visitor_log_academic_year_id_foreign` (`academic_year_id`),
  KEY `visitor_log_student_id_foreign` (`student_id`),
  KEY `visitor_log_employee_id_foreign` (`employee_id`),
  CONSTRAINT `visitor_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  CONSTRAINT `visitor_log_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`),
  CONSTRAINT `visitor_log_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  CONSTRAINT `visitor_log_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_log`
--

LOCK TABLES `visitor_log` WRITE;
/*!40000 ALTER TABLE `visitor_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitor_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-01 20:50:32
