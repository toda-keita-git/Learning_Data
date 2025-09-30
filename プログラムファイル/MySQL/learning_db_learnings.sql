-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: learning_db
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `learnings`
--

DROP TABLE IF EXISTS `learnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learnings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `explanatory_text` text COLLATE utf8mb4_general_ci,
  `understanding_level` int DEFAULT NULL,
  `reference_url` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int DEFAULT NULL,
  `github_path` text COLLATE utf8mb4_general_ci,
  `commit_sha` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delete_flg` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learnings`
--

LOCK TABLES `learnings` WRITE;
/*!40000 ALTER TABLE `learnings` DISABLE KEYS */;
INSERT INTO `learnings` VALUES (32,'Excelショートカット','現在覚えるべきコマンド\n・検索モード｜Ctrl & f \n・行を挿入｜Alt + i + r\n・列を挿入｜Alt + i + c',4,'https://service.biztex.co.jp/dx-hacker/it-dx-column/excelshortcut/',NULL,1,'Excelショートカット.md',NULL,0),(33,'eeeeeeeeeeee','eeeeeeeeeeee',2,'eeee',NULL,2,'',NULL,1),(34,'テスト','テスト①',4,'https://qiita.com/minhee/items/eb80d36d05846c85f9e8','2025-09-26 08:23:05',1,'server.js','20e46b1642e58767d2f238d5461278c6c8fc2988',1),(35,'進捗管理表作成','稲妻線を使用。\n祝日対応。',4,'','2025-09-29 08:55:49',3,'進捗管理表を作ってみよう.xlsx','83bbe82e36bf32e80cadfaa972cec1e178aaaa2d',0);
/*!40000 ALTER TABLE `learnings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30 14:06:46
