-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: db05
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Current Database: `db05`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db05` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db05`;

--
-- Table structure for table `chats`
--

DROP TABLE IF EXISTS `chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chats` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `chat_parent` bigint DEFAULT NULL,
                         `content` varchar(255) NOT NULL,
                         `create_at` datetime(6) NOT NULL,
                         `status` int NOT NULL,
                         `topic_id` varchar(255) NOT NULL,
                         `user_delete_id` bigint DEFAULT NULL,
                         `user_id` bigint NOT NULL,
                         `is_file` bit(1) NOT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats`
--

LOCK TABLES `chats` WRITE;
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
INSERT INTO `chats` VALUES (4,NULL,'hello','2024-04-20 21:33:52.081000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(5,NULL,'hello','2024-04-20 21:34:08.563000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(6,NULL,'1','2024-04-20 21:34:08.644000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(7,NULL,'1','2024-04-20 21:34:09.179000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,12,_binary '\0'),(8,NULL,'2','2024-04-20 21:35:14.948000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,12,_binary '\0'),(9,NULL,'1','2024-04-20 21:43:27.940000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(10,NULL,'1','2024-04-20 21:44:05.746000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,12,_binary '\0'),(11,NULL,'6579c1a1-d881-4f82-8a1d-e88f6b1e8bc0.jpeg','2024-04-20 21:46:21.296000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(12,NULL,'9ad66ba5-a9ce-4609-b6df-0045981c6863.jpeg','2024-04-20 21:46:35.939000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(13,NULL,'5cd411a3-b881-4f55-b65b-bbdf575a6837.png','2024-04-20 21:47:06.384000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(14,NULL,'9386839a-1c58-4f6c-a670-43f0851171ba.jpeg','2024-04-20 21:48:05.723000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(15,NULL,'hi','2024-04-20 22:02:57.808000',0,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',0,20,_binary '\0'),(16,NULL,'hi','2024-04-20 22:03:19.128000',0,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',0,20,_binary '\0'),(17,NULL,'7f477fe7-9d04-4ad3-882b-dab25d8fb9b2.jpeg','2024-04-20 22:20:49.287000',0,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',0,20,_binary ''),(18,NULL,'\\hi','2024-04-20 22:20:59.938000',0,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',0,20,_binary '\0'),(19,NULL,'3da321db-f9ec-465e-8163-256b1b4b494b.jpeg','2024-04-20 22:21:10.213000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(20,NULL,'db3d95d3-05f9-4fa7-a65e-c553875df543.png','2024-04-20 22:21:23.838000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(21,NULL,'1b4c1916-815f-4f39-b7e5-c01c52951c36.jpeg','2024-04-20 22:21:39.169000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(22,NULL,'00a79f8d-4993-48b4-a1ff-55927f7322c8.jpeg','2024-04-20 22:23:46.827000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,12,_binary ''),(23,NULL,'ca3d7c12-9d9d-4be5-a32e-18d2c4032ac9.jpeg','2024-04-20 22:24:11.172000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,12,_binary ''),(24,NULL,'1','2024-04-20 22:52:11.171000',0,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',0,20,_binary '\0'),(25,NULL,'1','2024-04-20 22:52:18.234000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(26,NULL,'2','2024-04-20 22:52:31.026000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(27,NULL,'3','2024-04-20 22:52:39.456000',0,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',0,20,_binary '\0'),(28,NULL,'1','2024-04-20 23:22:30.857000',0,'f0215a48-9670-4ce7-a952-5dda90f0f6f2',0,12,_binary '\0'),(29,NULL,'1','2024-04-20 23:23:09.558000',0,'f0215a48-9670-4ce7-a952-5dda90f0f6f2',0,1,_binary '\0'),(30,NULL,'57627668-4396-4cca-b807-54181ae31087.png','2024-06-12 17:36:22.285000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(31,NULL,'hi','2024-06-12 19:05:29.241000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(32,NULL,'4e09a20b-7f7c-4abb-943e-c455ecea2ad4.png','2024-06-12 19:06:15.778000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(33,NULL,'a','2024-06-12 19:12:56.230000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(34,NULL,'8043dbaf-85f0-40e1-be00-600834f6d5d4.png','2024-06-12 19:16:14.056000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(35,NULL,'1','2024-06-12 19:54:51.805000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(36,NULL,'2','2024-06-12 19:54:56.366000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(37,NULL,'4386b5f5-283f-4131-87a0-b2696440dfb4.png','2024-06-12 19:55:02.289000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(38,NULL,'52121fe0-cb3a-4e5f-822a-3cadaf949608.png','2024-06-12 20:00:25.802000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(39,NULL,'1','2024-06-12 20:01:36.984000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(40,NULL,'0f318183-2693-4b0e-9f72-a112d30b469c.png','2024-06-12 20:03:52.405000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(41,NULL,'af822293-e4e0-4dfc-bea0-dfa2928ea654.png','2024-06-12 20:07:02.998000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(42,NULL,'f9bcdc54-1730-4a69-99c2-6e5c0b096bf1.png','2024-06-12 20:13:59.488000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(43,NULL,'27927ce0-95aa-4a61-93d8-f48498df93ff.jpeg','2024-06-12 20:22:07.245000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(44,NULL,'1','2024-06-12 20:22:14.189000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(45,NULL,'1','2024-06-12 20:30:02.139000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(46,NULL,'79c192aa-8017-49c5-bf6e-9e64d2072498.jpeg','2024-06-12 20:30:10.484000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(47,NULL,'33ddaba5-4829-4f4a-8f55-2374b5eb0ae0.png','2024-06-12 20:30:20.784000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(48,NULL,'7','2024-06-12 20:31:46.028000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(49,NULL,'hi','2024-06-12 20:31:52.941000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(50,NULL,'1','2024-06-12 20:33:29.579000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(51,NULL,'54','2024-06-12 20:33:32.458000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(52,NULL,'5','2024-06-12 20:33:33.206000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(53,NULL,'5','2024-06-12 20:33:34.147000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(54,NULL,'c655d37e-968c-437c-a42d-d1b1c0baf3a7.png','2024-06-12 20:33:47.796000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(55,NULL,'as','2024-06-12 20:51:50.858000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(56,NULL,'1','2024-06-12 21:25:47.034000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(57,NULL,'1','2024-06-12 21:25:58.383000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(58,NULL,'a06a5d0b-d5d6-4377-98a5-285376da376b.png','2024-06-12 21:26:22.247000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(59,NULL,'1','2024-06-12 21:27:00.825000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(60,NULL,'2','2024-06-12 21:27:09.506000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(61,NULL,'hi','2024-06-12 21:29:21.967000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(62,NULL,'ba6b1ee9-804e-4031-b9ff-d85fa031aee4.png','2024-06-12 21:29:44.160000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(63,NULL,'hi','2024-06-12 21:35:47.872000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(64,NULL,'as','2024-06-12 21:36:35.556000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(65,NULL,'32accbac-cc88-4006-9fcf-acc9c8df03f7.jpeg','2024-06-12 21:39:15.493000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(66,NULL,'hi','2024-06-13 19:28:42.945000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(67,NULL,'hi','2024-06-13 19:35:28.312000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(68,NULL,'hi','2024-06-13 20:11:20.733000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(69,NULL,'21','2024-06-13 20:11:26.892000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(70,NULL,'74','2024-06-13 20:11:30.315000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(71,NULL,'c3ee1e3a-2fcf-4965-8e24-144404f04ef1.png','2024-06-13 20:15:11.565000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(72,NULL,'hi','2024-06-13 20:18:13.947000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(73,NULL,'hello','2024-06-13 20:28:08.227000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(74,NULL,'hi','2024-06-13 20:31:56.108000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(75,NULL,'123','2024-06-13 20:34:12.344000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(76,NULL,'456','2024-06-13 22:26:49.368000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(77,NULL,'17','2024-06-13 22:26:56.323000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(78,NULL,'hj','2024-06-13 22:57:46.446000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(79,NULL,'1479bac0-e1e3-49b6-ab4b-e47c4e162b3e.jpeg','2024-06-13 22:57:53.576000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(80,NULL,'hello','2024-06-13 23:52:33.080000',0,'322a0ffa-5bf7-4251-af66-568987d4c269',0,20,_binary '\0'),(81,NULL,'hi','2024-06-13 23:52:41.319000',0,'322a0ffa-5bf7-4251-af66-568987d4c269',0,20,_binary '\0'),(82,NULL,'6d3741e3-46a5-4c2d-b094-70f61721f10b.png','2024-06-13 23:52:47.601000',0,'322a0ffa-5bf7-4251-af66-568987d4c269',0,20,_binary ''),(83,NULL,'hi','2024-06-14 23:03:25.531000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(84,NULL,'hello','2024-06-14 23:05:29.432000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(85,NULL,'hi','2024-06-14 23:05:40.838000',0,'322a0ffa-5bf7-4251-af66-568987d4c269',0,20,_binary '\0'),(86,NULL,'1','2024-06-14 23:09:11.829000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(87,NULL,'2','2024-06-14 23:09:14.793000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(88,NULL,'55','2024-06-14 23:09:19.026000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(89,NULL,'jj','2024-06-14 23:09:31.580000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(90,NULL,'fe2b5e94-cf14-4613-96f5-75744da13bb3.png','2024-06-14 23:09:38.354000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary ''),(91,NULL,'1','2024-06-15 00:08:23.145000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(92,NULL,'1','2024-06-15 00:19:08.990000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(93,NULL,'55','2024-06-15 00:19:12.116000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(94,NULL,'ji','2024-06-15 00:19:21.864000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(95,NULL,'k','2024-06-15 00:19:25.527000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(96,NULL,'po4','2024-06-15 00:35:57.950000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0'),(97,NULL,'á','2024-06-15 01:02:01.743000',0,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',0,20,_binary '\0');
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db03`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db03` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db03`;

--
-- Table structure for table `notify`
--

DROP TABLE IF EXISTS `notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notify` (
                          `id` bigint NOT NULL AUTO_INCREMENT,
                          `create_at` datetime(6) NOT NULL,
                          `del_flg` tinyint NOT NULL,
                          `param` varchar(255) NOT NULL,
                          `status` int NOT NULL,
                          `type` varchar(255) NOT NULL,
                          `user_id` bigint NOT NULL,
                          `value` varchar(255) NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notify`
--

LOCK TABLES `notify` WRITE;
/*!40000 ALTER TABLE `notify` DISABLE KEYS */;
INSERT INTO `notify` VALUES (1,'2024-04-15 18:25:52.312000',0,'status=1&topicId=24399549-89cc-40e9-a548-8c66f985941f',0,'contact',8,'{\"userSender\":\"{\\\"id\\\":12,\\\"email\\\":\\\"baotran245@gmail.com\\\",\\\"name\\\":\\\"Bảo Trấn\\\",\\\"imageUrl\\\":null,\\\"role\\\":null,\\\"isExpert\\\":false,\\\"rating\\\":null,\\\"status\\\":0,\\\"topicId\\\":\\\"fe7b2a5c-051f-491d-af13-22def87eee8e\\\"}\",\"action\":\"request-friend\"}'),(6,'2024-04-20 23:22:16.584000',0,'f0215a48-9670-4ce7-a952-5dda90f0f6f2',0,'contact',1,'{\"action\":\"request-friend\",\"user\":\"{\\\"id\\\":12,\\\"email\\\":\\\"baotran245@gmail.com\\\",\\\"name\\\":\\\"Bảo Trấn\\\",\\\"imageUrl\\\":null,\\\"role\\\":null,\\\"isExpert\\\":false,\\\"rating\\\":null,\\\"status\\\":0,\\\"topicId\\\":\\\"fe7b2a5c-051f-491d-af13-22def87eee8e\\\"}\"}');
/*!40000 ALTER TABLE `notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db01`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db01` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db01`;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `subject` varchar(255) NOT NULL,
                        `body` longtext NOT NULL,
                        `mail_template` varchar(255) NOT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (1,'Xác thực email','&lt;!DOCTYPE html&gt; &lt;html&gt; &lt;head&gt; &lt;meta charset=\"utf-8\" /&gt;&lt;meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\" /&gt; &lt;title&gt;EmailConfirmation&lt;/title&gt; &lt;meta name=\"viewport\" content=\"width=device-width,initial-scale=1\" /&gt; &lt;style type=\"text/css\"&gt; /** * Google webfonts.Recommended to include the .woff version for cross-client compatibility. */@media screen { @font-face { font-family: \"Source Sans Pro\"; font-style: normal;font-weight: 400; src: local(\"Source Sans Pro Regular\"),local(\"SourceSansPro-Regular\"),url(https://fonts.gstatic.com/s/sourcesanspro/v10/ODelI1aHBYDBqgeIAH2zlBM0YzuT7MdOe03otPbuUS0.woff)format(\"woff\"); } @font-face { font-family: \"Source Sans Pro\"; font-style:normal; font-weight: 700; src: local(\"Source Sans Pro Bold\"),local(\"SourceSansPro-Bold\"),url(https://fonts.gstatic.com/s/sourcesanspro/v10/toadOcfmlt9b38dHJxOBGFkQc6VGVFSmCnC_l7QZG60.woff)format(\"woff\"); } } /** * Avoid browser level font resizing. * 1. Windows Mobile* 2. iOS / OSX */ body, table, td, a { -ms-text-size-adjust: 100%; /* 1 */-webkit-text-size-adjust: 100%; /* 2 */ } /** * Remove extra space added totables and cells in Outlook. */ table, td { mso-table-rspace: 0pt;mso-table-lspace: 0pt; } /** * Better fluid images in Internet Explorer. */ img{ -ms-interpolation-mode: bicubic; } /** * Remove blue links for iOS devices. */a[x-apple-data-detectors] { font-family: inherit !important; font-size: inherit!important; font-weight: inherit !important; line-height: inherit !important;color: inherit !important; text-decoration: none !important; } /** * Fixcentering issues in Android 4.4. */ div[style*=\"margin: 16px 0;\"] { margin: 0!important; } body { width: 100% !important; height: 100% !important; padding: 0!important; margin: 0 !important; } /** * Collapse table borders to avoid spacebetween cells. */ table { border-collapse: collapse !important; } a { color:#1a82e2; } img { height: auto; line-height: 100%; text-decoration: none; border:0; outline: none; } &lt;/style&gt; &lt;/head&gt; &lt;bodystyle=\"background-color: #e9ecef\"&gt; &lt;table border=\"0\" cellpadding=\"0\"cellspacing=\"0\" width=\"100%\"&gt; &lt;tr&gt; &lt;td align=\"center\"bgcolor=\"#e9ecef\"&gt; &lt;table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"width=\"100%\" style=\"max-width: 600px\" bgcolor=\"#ffffff\" &gt;&lt;/table&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td align=\"center\" bgcolor=\"#e9ecef\"&gt;&lt;table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"style=\"max-width: 600px\" &gt; &lt;tr&gt; &lt;td align=\"center\" valign=\"top\"style=\"padding: 36px 24px\"&gt;&lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;tdalign=\"left\" bgcolor=\"#ffffff\" style=\" padding: 36px 24px 0; font-family:\'Source Sans Pro\', Helvetica, Arial, sans-serif; border-top: 3px solid #d4dadf;\" &gt; &lt;a href=\"__MY_DOMAIN__\" target=\"_blank\" style=\"display: flex;justify-content: center\" &gt; &lt;imgsrc=\"https://anh4.com/images/2023/04/15/logovuong.png\" alt=\"Logo\" border=\"0\"width=\"100\" style=\" display: block; width: 100px; max-width: 100px; min-width:100px; \" /&gt; &lt;/a&gt; &lt;h1 style=\" margin: 0; font-size: 32px;font-weight: 700; letter-spacing: -1px; line-height: 48px; \" &gt; Xác nhận email của bạn &lt;/h1&gt; &lt;/td&gt; &lt;/tr&gt; &lt;/table&gt; &lt;/td&gt;&lt;/tr&gt; &lt;tr&gt; &lt;td align=\"center\" bgcolor=\"#e9ecef\"&gt; &lt;tableborder=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px\"&gt; &lt;tr&gt; &lt;td align=\"left\" bgcolor=\"#ffffff\" style=\" padding: 24px;font-family: \'Source Sans Pro\', Helvetica, Arial, sans-serif; font-size: 16px;line-height: 24px; \" &gt; &lt;p style=\"margin: 0\"&gt; Cảm ơn bạn đã chọn đăng ký tài khoảng tại VBBC social network. &lt;br /&gt; Chúng tôi muốn xác nhận rằng email này chắc chắn là của bạn. Làm ơn hãy nhấn vào nút \"xác nhận\" dưới đây để hoàn tất quá trình tạo tài khoản &lt;br /&gt; &lt;/p&gt; &lt;/td&gt; &lt;/tr&gt;&lt;tr&gt; &lt;td align=\"left\" bgcolor=\"#ffffff\"&gt; &lt;table border=\"0\"cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"&gt; &lt;tr&gt; &lt;tdalign=\"center\" bgcolor=\"#ffffff\" style=\"padding: 12px\"&gt; &lt;table border=\"0\"cellpadding=\"0\" cellspacing=\"0\"&gt; &lt;tr&gt; &lt;td align=\"center\"bgcolor=\"#1a82e2\" style=\"border-radius: 6px\" &gt; &lt;a href=\"__VERIFY_LINK__\"target=\"_blank\" style=\" display: inline-block; padding: 16px 36px; font-family:\'Source Sans Pro\', Helvetica, Arial, sans-serif; font-size: 16px; color:#ffffff; text-decoration: none; border-radius: 6px; \" &gt;Xác nhận&lt;/a &gt;&lt;/td&gt; &lt;/tr&gt; &lt;/table&gt; &lt;/td&gt; &lt;/tr&gt; &lt;/table&gt;&lt;/td&gt; &lt;/tr&gt; &lt;!-- end button --&gt; &lt;!-- start copy --&gt;&lt;tr&gt; &lt;td align=\"left\" bgcolor=\"#ffffff\" style=\" padding: 24px;font-family: \'Source Sans Pro\', Helvetica, Arial, sans-serif; font-size: 16px;line-height: 24px; border-bottom: 3px solid #d4dadf; \" &gt; &lt;p style=\"margin:0\"&gt; Cheers,&lt;br /&gt; VB Team &lt;/p&gt; &lt;/td&gt; &lt;/tr&gt;&lt;/table&gt; &lt;/td&gt; &lt;/tr&gt; &lt;tr&gt; &lt;td align=\"center\"bgcolor=\"#e9ecef\" style=\"padding: 24px\"&gt; &lt;table border=\"0\" cellpadding=\"0\"cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px\" &gt; &lt;tr&gt; &lt;tdalign=\"center\" bgcolor=\"#e9ecef\" style=\" padding: 12px 24px; font-family:\'Source Sans Pro\', Helvetica, Arial, sans-serif; font-size: 14px; line-height:20px; color: #666; \" &gt;&lt;/td&gt; &lt;/tr&gt; &lt;/table&gt; &lt;/td&gt;&lt;/tr&gt; &lt;/table&gt; &lt;/body&gt; &lt;/html&gt;','regist_user');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db02`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db02` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db02`;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `comemnt_parent_id` bigint DEFAULT NULL,
                           `content` varchar(255) NOT NULL,
                           `create_at` datetime(6) NOT NULL,
                           `del_flg` bit(1) NOT NULL,
                           `post_id` bigint NOT NULL,
                           `user_id` bigint NOT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,NULL,'demo thôi xin đừng ném gạnh đá','2024-04-14 15:24:57.740000',_binary '\0',1,13),(2,NULL,'demo thôi xin đừng ném gạnh đá','2024-04-14 15:25:05.895000',_binary '\0',1,13),(3,NULL,'demo thôi xin đừng ném gạnh đá','2024-04-14 15:25:06.817000',_binary '\0',1,13),(4,NULL,'ok baby','2024-04-14 17:44:08.926000',_binary '\0',1,8),(5,3,'đá đau mà ném','2024-04-14 17:45:24.596000',_binary '\0',1,8),(6,3,'thôi bớt xl đi','2024-04-14 17:47:02.372000',_binary '\0',1,8),(7,NULL,'Xin chào mọi người đã xem bức tranh','2024-04-14 17:55:31.542000',_binary '\0',2,8),(8,NULL,'làm tốt lắm','2024-04-15 17:02:00.147000',_binary '\0',2,1),(9,NULL,'làm tốt lắm','2024-04-15 17:02:58.426000',_binary '\0',1,1),(10,NULL,'ok','2024-04-20 11:32:47.011000',_binary '\0',1,12),(11,NULL,'ok','2024-04-20 11:32:51.575000',_binary '\0',1,12),(12,NULL,'ok','2024-04-20 18:52:57.246000',_binary '\0',2,20),(13,8,'ok bro','2024-04-20 18:53:36.155000',_binary '\0',2,20),(14,13,'ok','2024-04-20 18:54:04.711000',_binary '\0',2,20),(15,NULL,'ok','2024-04-20 20:26:12.456000',_binary '\0',2,20),(16,NULL,'ok','2024-04-20 20:26:23.366000',_binary '\0',2,20),(17,7,'ok','2024-04-20 20:33:33.909000',_binary '\0',2,20),(18,17,'as','2024-06-12 21:37:16.961000',_binary '\0',2,20),(19,17,'as','2024-06-12 21:37:16.957000',_binary '\0',2,20),(20,19,'a','2024-06-12 21:37:33.194000',_binary '\0',2,20),(21,20,'asss','2024-06-12 21:37:41.724000',_binary '\0',2,20);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_like`
--

DROP TABLE IF EXISTS `comment_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_like` (
                                `id` int NOT NULL AUTO_INCREMENT,
                                `comment_id` int NOT NULL,
                                `create_at` datetime(6) NOT NULL,
                                `status` tinyint NOT NULL,
                                `user_id` int NOT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_like`
--

LOCK TABLES `comment_like` WRITE;
/*!40000 ALTER TABLE `comment_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
                        `id` bigint NOT NULL AUTO_INCREMENT,
                        `context` longtext NOT NULL,
                        `create_at` datetime(6) NOT NULL,
                        `delflg` int NOT NULL,
                        `hash_tag` varchar(255) DEFAULT NULL,
                        `status` int NOT NULL,
                        `summary` varchar(255) NOT NULL,
                        `title` varchar(255) NOT NULL,
                        `topic_tag_id` int NOT NULL,
                        `update_at` datetime(6) NOT NULL,
                        `user_id` bigint NOT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'1','2024-04-14 15:22:05.725000',0,'con chó',1,'con chó cắn co mèo','con chó cắn co mèo',1,'2024-04-14 15:22:05.725000',13),(2,'Đây là một bức ảnh đầy tinh nghệ thuật','2024-04-14 17:53:04.880000',0,'bức ảnh nghệ thuật',1,'Bức ảnh đầy nghệ thuật','Bức ảnh đầy nghệ thuật',2,'2024-04-14 17:53:04.880000',8);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_image_list`
--

DROP TABLE IF EXISTS `post_image_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_image_list` (
                                   `post_id` bigint NOT NULL,
                                   `image_list` varchar(255) DEFAULT NULL,
                                   KEY `FK5va1h0pl9uv57eflygdejfal1` (`post_id`),
                                   CONSTRAINT `FK5va1h0pl9uv57eflygdejfal1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_image_list`
--

LOCK TABLES `post_image_list` WRITE;
/*!40000 ALTER TABLE `post_image_list` DISABLE KEYS */;
INSERT INTO `post_image_list` VALUES (1,'eae18ca2-779a-4df8-834b-a09e618aa48a.png'),(2,'cbac81d8-3174-4edd-bccd-1f592d218e4f.png');
/*!40000 ALTER TABLE `post_image_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_like`
--

DROP TABLE IF EXISTS `post_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_like` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `create_at` datetime(6) NOT NULL,
                             `post_id` int NOT NULL,
                             `status` tinyint NOT NULL,
                             `user_id` int NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_like`
--

LOCK TABLES `post_like` WRITE;
/*!40000 ALTER TABLE `post_like` DISABLE KEYS */;
INSERT INTO `post_like` VALUES (1,'2024-04-14 15:24:29.259000',1,2,13),(2,'2024-04-14 15:24:29.259000',1,1,13),(3,'2024-04-14 15:24:29.259000',1,1,13),(4,'2024-04-14 17:43:00.204000',1,1,8),(5,'2024-04-14 17:54:17.954000',2,1,8),(6,'2024-04-15 17:01:31.688000',2,1,1);
/*!40000 ALTER TABLE `post_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_view`
--

DROP TABLE IF EXISTS `post_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_view` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `post_id` bigint NOT NULL,
                             `user_id` bigint NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_view`
--

LOCK TABLES `post_view` WRITE;
/*!40000 ALTER TABLE `post_view` DISABLE KEYS */;
INSERT INTO `post_view` VALUES (1,1,13),(2,1,13),(3,1,13),(4,1,13),(5,1,13),(6,1,13),(7,1,8),(8,1,0),(9,1,0),(10,1,0),(11,1,0),(12,1,20),(13,1,8),(14,1,8),(15,1,8),(16,1,8),(17,1,8),(18,1,8),(19,1,13),(20,1,20),(21,1,8),(22,1,8),(23,1,8),(24,1,8),(25,1,8),(26,1,8),(27,1,8),(28,1,8),(29,1,8),(30,1,8),(31,1,8),(32,1,8),(33,2,8),(34,1,8),(35,2,8),(36,1,8),(37,2,8),(38,2,8),(39,1,8),(40,2,8),(41,1,8),(42,1,0),(43,2,0),(44,1,0),(45,2,0),(46,1,0),(47,2,0),(48,1,0),(49,2,0),(50,2,1),(51,1,1),(52,2,1),(53,1,1),(54,2,1),(55,1,1),(56,1,1),(57,2,1),(58,1,1),(59,2,1),(60,1,1),(61,2,1),(62,2,1),(63,1,1),(64,2,1),(65,1,1),(66,2,0),(67,1,0),(68,2,0),(69,1,0),(70,1,0),(71,2,0),(72,1,0),(73,2,0),(74,1,0),(75,2,1),(76,2,0),(77,1,1),(78,2,0),(79,1,0),(80,1,0),(81,2,0),(82,1,0),(83,2,0),(84,2,0),(85,1,0),(86,1,0),(87,2,0),(88,1,0),(89,2,0),(90,1,0),(91,2,0),(92,1,0),(93,2,0),(94,2,0),(95,1,0),(96,1,0),(97,2,0),(98,1,0),(99,2,0),(100,1,0),(101,2,0),(102,2,20),(103,1,20),(104,1,20),(105,2,20),(106,1,20),(107,2,20),(108,1,20),(109,2,20),(110,2,20),(111,1,20),(112,2,20),(113,1,20),(114,1,12),(115,2,12),(116,1,12),(117,2,12),(118,1,12),(119,2,12),(120,2,12),(121,1,12),(122,2,12),(123,1,12),(124,1,12),(125,2,12),(126,1,12),(127,2,12),(128,1,12),(129,2,12),(130,2,12),(131,1,12),(132,2,12),(133,1,12),(134,1,12),(135,2,12),(136,1,12),(137,2,12),(138,2,12),(139,1,12),(140,2,12),(141,2,12),(142,1,12),(143,2,12),(144,1,12),(145,2,8),(146,1,8),(147,2,20),(148,1,20),(149,2,20),(150,1,20),(151,2,20),(152,2,20),(153,2,20),(154,2,20),(155,2,20),(156,2,12),(157,1,12),(158,2,12),(159,1,12),(160,2,12),(161,1,12),(162,2,20),(163,1,20),(164,2,20),(165,1,20),(166,1,20),(167,2,20),(168,1,20),(169,2,20),(170,1,20),(171,2,20),(172,2,20),(173,1,20),(174,1,20),(175,1,20),(176,2,1),(177,1,1),(178,2,0),(179,1,0),(180,1,0),(181,2,0),(182,1,0),(183,2,0),(184,1,0),(185,2,0),(186,2,20),(187,1,20),(188,1,20),(189,2,20),(190,1,20),(191,2,20),(192,2,20),(193,1,20),(194,1,20),(195,1,20),(196,2,20),(197,1,20),(198,1,20),(199,2,20),(200,1,20),(201,2,20),(202,2,20),(203,1,20),(204,1,20),(205,1,20),(206,2,20),(207,1,20),(208,2,20),(209,2,20),(210,1,20),(211,1,20),(212,2,20),(213,1,20),(214,2,20),(215,1,20),(216,2,20),(217,2,20),(218,1,20),(219,1,20),(220,2,20),(221,1,20),(222,2,20),(223,1,20),(224,2,20),(225,2,20),(226,1,20),(227,1,20),(228,2,20),(229,1,20),(230,2,20),(231,1,20),(232,2,20),(233,2,20),(234,1,20),(235,2,20),(236,1,20),(237,2,20),(238,1,20),(239,2,20),(240,1,20),(241,2,20),(242,2,20),(243,1,20),(244,2,20),(245,1,20),(246,1,20),(247,2,20),(248,1,20),(249,2,20),(250,1,20),(251,2,20),(252,2,20),(253,1,20),(254,1,20),(255,1,20),(256,1,20),(257,2,20),(258,1,20),(259,2,20),(260,1,20),(261,2,20),(262,2,20),(263,1,20),(264,2,20),(265,1,20),(266,1,20),(267,1,20),(268,2,20),(269,1,20),(270,2,20),(271,1,20),(272,2,20),(273,2,20),(274,1,20),(275,2,20),(276,1,20),(277,2,20),(278,1,20),(279,1,20),(280,2,20),(281,1,20),(282,2,20),(283,1,20),(284,2,20),(285,2,20),(286,2,20),(287,1,20),(288,2,20),(289,2,20),(290,1,20),(291,1,20),(292,2,20),(293,2,20),(294,1,20),(295,1,20),(296,2,20),(297,2,20),(298,1,20),(299,1,20),(300,2,20),(301,2,20),(302,1,20),(303,2,0),(304,1,0),(305,1,0),(306,2,0),(307,2,0),(308,1,0),(309,1,0),(310,2,0),(311,1,20),(312,2,20),(313,2,20),(314,1,20),(315,1,20),(316,2,20),(317,2,20),(318,1,20),(319,2,20),(320,1,20),(321,1,20),(322,2,20),(323,2,20),(324,1,20),(325,1,20),(326,2,20),(327,2,20),(328,1,20),(329,2,20),(330,1,20),(331,2,20),(332,1,20),(333,1,20),(334,2,20),(335,2,20),(336,1,20),(337,1,20),(338,2,20),(339,2,20),(340,1,20),(341,2,20),(342,1,20),(343,2,20),(344,1,20),(345,1,20),(346,2,20),(347,2,20),(348,1,20),(349,1,20),(350,2,20),(351,2,20),(352,1,20),(353,1,20),(354,2,20),(355,2,20),(356,1,20),(357,1,20),(358,2,20),(359,2,20),(360,1,20),(361,2,20),(362,1,20),(363,2,20),(364,1,20),(365,1,0),(366,2,0),(367,2,0),(368,1,0),(369,2,0),(370,1,0),(371,1,0),(372,2,0),(373,2,20),(374,1,20),(375,2,20),(376,1,20),(377,1,20),(378,2,20),(379,2,20),(380,1,20),(381,1,20),(382,2,20),(383,2,20),(384,1,20),(385,2,20),(386,1,20),(387,2,20),(388,1,20),(389,1,20),(390,2,20),(391,2,20),(392,1,20),(393,1,20),(394,2,20),(395,2,20),(396,1,20);
/*!40000 ALTER TABLE `post_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic_tag`
--

DROP TABLE IF EXISTS `topic_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topic_tag` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `color` varchar(255) NOT NULL,
                             `create_at` datetime(6) NOT NULL,
                             `del_flg` tinyint NOT NULL,
                             `tag_name` varchar(255) NOT NULL,
                             `update_at` datetime(6) NOT NULL,
                             `user_create` varchar(255) NOT NULL,
                             `user_update` varchar(255) NOT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic_tag`
--

LOCK TABLES `topic_tag` WRITE;
/*!40000 ALTER TABLE `topic_tag` DISABLE KEYS */;
INSERT INTO `topic_tag` VALUES (1,'#00ff1e','2024-04-14 12:42:31.659000',0,'Quê hương','2024-04-14 12:42:31.659000','voson1024@gmail.com','voson1024@gmail.com'),(2,'#00ff91','2024-04-14 12:42:34.807000',0,'Đất nước','2024-04-14 16:25:14.288000','voson1024@gmail.com','voson1024@gmail.com');
/*!40000 ALTER TABLE `topic_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `db04`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db04` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db04`;

--
-- Table structure for table `chat_block`
--

DROP TABLE IF EXISTS `chat_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_block` (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `topic_id` varchar(255) DEFAULT NULL,
                              `user_block_id` bigint DEFAULT NULL,
                              `user_blocked_id` bigint DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_block`
--

LOCK TABLES `chat_block` WRITE;
/*!40000 ALTER TABLE `chat_block` DISABLE KEYS */;
INSERT INTO `chat_block` VALUES (1,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',1,20);
/*!40000 ALTER TABLE `chat_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
                            `id` bigint NOT NULL AUTO_INCREMENT,
                            `create_at` datetime(6) NOT NULL,
                            `status` int NOT NULL,
                            `topic_id` varchar(255) NOT NULL,
                            `user_reciver_id` bigint NOT NULL,
                            `user_sender_id` bigint NOT NULL,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `UKby2d67ypq6vnmpwgvoka0jn95` (`user_reciver_id`,`user_sender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'2024-03-18 18:25:52.118000',2,'24399549-89cc-40e9-a548-8c66f985941f',8,12),(2,'2024-03-19 15:09:21.442000',0,'c93394f6-4a1a-4ddb-8ab6-30f1133fd1ad',12,13),(119,'2024-04-20 20:34:01.660000',2,'8fdca12b-600a-4ce1-8c7e-6e55f1935e51',12,20),(120,'2024-04-20 20:45:48.446000',1,'4b54fc4d-4b0c-444d-a6b4-bd1d631648a8',13,20),(121,'2024-04-20 20:45:57.409000',1,'c1eedfff-bdb5-4d7a-a1d1-4e45e43da01a',1,20),(122,'2024-04-20 23:22:15.006000',1,'f0215a48-9670-4ce7-a952-5dda90f0f6f2',1,12),(123,'2024-06-13 23:52:27.897000',1,'322a0ffa-5bf7-4251-af66-568987d4c269',2,20),(124,'2024-06-15 01:13:21.523000',1,'b8eef0b5-3701-46b1-b31c-ea8eb44ddef7',4,20);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_role`
--

DROP TABLE IF EXISTS `group_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_role` (
                              `id` bigint NOT NULL AUTO_INCREMENT,
                              `create_at` datetime(6) NOT NULL,
                              `del_flg` tinyint NOT NULL,
                              `name` varchar(255) NOT NULL,
                              `update_at` datetime(6) NOT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_role`
--

LOCK TABLES `group_role` WRITE;
/*!40000 ALTER TABLE `group_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_role_roles`
--

DROP TABLE IF EXISTS `group_role_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_role_roles` (
                                    `group_role_id` bigint NOT NULL,
                                    `roles` varchar(255) DEFAULT NULL,
                                    KEY `FK5x87ilu2r7m0opyjniha0oouh` (`group_role_id`),
                                    CONSTRAINT `FK5x87ilu2r7m0opyjniha0oouh` FOREIGN KEY (`group_role_id`) REFERENCES `group_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_role_roles`
--

LOCK TABLES `group_role_roles` WRITE;
/*!40000 ALTER TABLE `group_role_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_role_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
                           `id` bigint NOT NULL AUTO_INCREMENT,
                           `create_at` datetime(6) NOT NULL,
                           `rating` int NOT NULL,
                           `user_rated_id` bigint DEFAULT NULL,
                           `user_rating_id` bigint DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,'2024-04-14 15:20:20.322000',5,3,13),(2,'2024-04-15 17:03:47.618000',4,4,1),(3,'2024-04-20 11:33:52.287000',4,1,12);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_user`
--

DROP TABLE IF EXISTS `report_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_user` (
                               `id` bigint NOT NULL AUTO_INCREMENT,
                               `reason` varchar(255) DEFAULT NULL,
                               `user_id` bigint DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_user`
--

LOCK TABLES `report_user` WRITE;
/*!40000 ALTER TABLE `report_user` DISABLE KEYS */;
INSERT INTO `report_user` VALUES (1,'nick ảo',9);
/*!40000 ALTER TABLE `report_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribe` (
                             `id` bigint NOT NULL AUTO_INCREMENT,
                             `create_at` datetime(6) NOT NULL,
                             `user_expert_id` bigint DEFAULT NULL,
                             `user_subscriber_id` bigint DEFAULT NULL,
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT INTO `subscribe` VALUES (1,'2024-04-14 15:13:10.236000',1,13),(2,'2024-04-14 15:13:10.663000',2,13),(3,'2024-04-14 15:13:11.919000',3,13),(4,'2024-04-14 15:13:15.925000',4,13),(5,'2024-04-17 16:01:29.149000',5,1),(6,'2024-04-17 16:01:45.538000',3,1),(7,'2024-04-17 16:03:46.001000',1,12),(13,'2024-04-20 16:09:40.796000',2,8),(14,'2024-04-20 16:09:42.225000',4,8),(15,'2024-04-20 16:09:43.163000',3,8),(16,'2024-04-20 16:09:44.038000',1,8),(17,'2024-04-20 16:09:46.197000',5,8),(18,'2024-04-20 16:20:15.305000',4,12),(19,'2024-04-20 16:20:16.471000',5,12),(20,'2024-04-20 16:20:18.134000',2,12),(21,'2024-04-20 16:20:18.948000',3,12),(53,'2024-04-20 17:13:05.621000',4,20),(62,'2024-04-20 20:43:36.914000',2,20),(63,'2024-04-20 20:43:40.456000',1,20),(64,'2024-04-20 20:43:44.812000',3,20);
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_des`
--

DROP TABLE IF EXISTS `user_des`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_des` (
                            `id` bigint NOT NULL AUTO_INCREMENT,
                            `description` text,
                            `title` text,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_des`
--

LOCK TABLES `user_des` WRITE;
/*!40000 ALTER TABLE `user_des` DISABLE KEYS */;
INSERT INTO `user_des` VALUES (1,'Quá trình đào tạo','Năm 2010: Tốt nghiệp ĐH Y Dược TPHCM'),(2,'Quá trình đào tạo','Năm 2016: Bác sĩ Chuyên khoa I Da Liễu'),(48,'Quá trình đào tạo','Năm 2020: Tốt nghiệp loại Giỏi Chuyên khoa II Da Liễu'),(49,'Quá trình công tác','Năm 2011- 2017: Bệnh Viện CKPTTH Thẩm mỹ Á Âu'),(50,'Quá trình công tác','Năm 2018- Nay: Bệnh Viện Đại Học Y Dược TPHCM'),(51,'Các khóa đào tạo','20/5- 30/5/2014: Ứng dụng Laser trong Y học tại Viện vật lý Y Sinh học - TPHCM'),(52,'Các khóa đào tạo','17/07/2014:  Khóa học Liệu pháp thẩm mỹ nội khoa để ngăn ngừa lão hóa khuôn mặt tại Bệnh viện Chợ Rẫy, TPHCM'),(53,'Các khóa đào tạo','25- 26/11/2016:  Khóa học về thẩm mỹ da, ICAD 2016 tại Bangkok, Thái Lan'),(54,'Các khóa đào tạo','29/11/2016: Khóa học về Lý thuyết giải phẫu vùng mặt ứng dụng trong thẫm mỹ nội khoa tại Đại Học Y Dược TPHCM'),(55,'Các khóa đào tạo','05/9 – 08/12/17: Thủ thuật cơ bản và tiểu phẩu da tại Bệnh viện Da Liễu TPHCM'),(56,'Các khóa đào tạo','04 – 05/10/2018: Khóa học của The Allergan Medical Institute, MD CodesTM Visionary / Distinction tại Taipei, Taiwan'),(57,'Các khóa đào tạo','06/8 – 09/11/18: Tham gia khóa học Ứng dụng laser và ánh sáng trong da liễu tại bệnh viện Da Liễu TPHCM'),(58,'Các khóa đào tạo','17-19/11/2019: Tham gia khóa học căng chỉ của Mint, Hansbiomed corp tại Seoul, Hàn Quốc'),(59,'Các khóa đào tạo','28/09-16/10/20: Căng chỉ cơ bản trong thẩm mỹ da tại Bệnh viện Đại học Y Dược TPHCM'),(60,'Các công trình khoa học','19 - 20/07/2019:  Báo cáo “Kỹ thuật tiêm Hyaluronic acid trong tạo hình V-line cho khuôn mặt” trong “Hội nghị da liễu thẫm mỹ toàn quốc lần thứ 3” tại Thành phố Quy Nhơn - Bình Định'),(61,'Các công trình khoa học','20- 21/12/2019:  Báo cáo “Update in treatment for sensitive skin” trong “Hội nghị Da liễu Đông Dương” tại Viêng Chăn, Lào.'),(62,'Các công trình khoa học','20- 21/12/2019:  Báo cáo “The effect of combining botulinum toxin and hyaluronic acid in facial rejuvenation” trong “Hội nghị Da Liễu Đông Dương” tại Viêng Chăn, Lào'),(63,'Các công trình khoa học','20-21/5/2022: Báo cáo “Tối ưu hoá quản lý sẹo không cần phẫu thuật” tại Hội nghị Da Liễu toàn quốc năm 2022'),(64,'Các công trình khoa học','Immunohistochemical expression of interleukin 1 beta in papule biopsies from patients with acne vulgaris: IL-1beta expression in acne vulgaris in Dermatology Reports (03/2022)'),(65,'Các công trình khoa học','Đã tham gia nhiều báo cáo trong chuyên ngành da liễu, thẩm mỹ da trong các hội nghị, hội thảo tại Việt Nam'),(66,'Đào tạo & Nghiên cứu khoa học','Năm 2020: Đề tài nghiên cứu” Biểu hiện interleukin-1 beta tại sang thương sẩn viêm của mụn trứng cá” Đại học Y Dược TPHCM'),(67,'Đào tạo & Nghiên cứu khoa học','9/2020 - nay: là thành viên Ban Giảng Huấn của các chương trình đào tạo cấp chứng chỉ các lớp đào tạo \"Căng chỉ cơ bản trong thẩm mỹ da\"; \"Kiến thức và thực hành cơ bản Laser, ánh sáng, sóng cao tần và siêu âm hội tụ trong Da Liễu - Thẩm mỹ da”; “Tiêm chất làm đầy trong thẩm mỹ da\" tại BV Đại học Y Dược phối hợp Đại học Y Dược TPHCM'),(68,'Đào tạo & Nghiên cứu khoa học','Đang tham gia một số đề tài nghiên cứu cấp cơ sở tại BV Đại học Y Dược TPHCM'),(69,'Kinh nghiệm/ Chức vụ','Hội viên Hội Da Liễu TPHCM'),(70,'Kinh nghiệm/ Chức vụ','Hội viên Hội Da Liễu Việt Nam'),(71,'Nổi bật','Là một bác sĩ đầy nhiệt huyết trong ứng dụng công nghệ ánh sáng điều trị sắc tố da, lão hóa da và có kỹ năng cao trong mesotherapy (lăn kim, tiêm dưỡng chất và dược chất như chất trắng sáng, chất chống nhăn, chất làm đầy…) trong da.');
/*!40000 ALTER TABLE `user_des` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `create_at` datetime(6) NOT NULL,
                         `del_flg` bit(1) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `email_verified` bit(1) NOT NULL,
                         `image_url` varchar(255) DEFAULT NULL,
                         `is_expert` bit(1) NOT NULL,
                         `job_title` varchar(255) DEFAULT NULL,
                         `last_time` datetime(6) DEFAULT NULL,
                         `name` varchar(255) NOT NULL,
                         `password` varchar(255) DEFAULT NULL,
                         `phone_number` varchar(255) DEFAULT NULL,
                         `provider` varchar(255) NOT NULL,
                         `provider_id` varchar(255) DEFAULT NULL,
                         `role` varchar(255) NOT NULL,
                         `specialist` varchar(255) DEFAULT NULL,
                         `status` tinyint NOT NULL,
                         `topic_id` varchar(255) NOT NULL,
                         `update_at` datetime(6) NOT NULL,
                         `work_place` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-15 04:14:47.000000',_binary '\0','hoanghiep@gmail.com',_binary '',NULL,_binary '',NULL,'2024-04-17 16:06:01.000000','ThS.BS Hoàng Hiệp','$2a$10$kCXPVd.kyRpi1Ib0EXQoTOMwvkhToIMO.9M5hS7YRVWow7dAStUiO',NULL,'local',NULL,'expert',NULL,0,'2758f3d1-8e67-486f-bdcf-31401a2f0d31','2024-05-15 04:14:47.000000',NULL),(2,'2024-03-15 04:17:47.000000',_binary '\0','hongdung@gmail.com',_binary '',NULL,_binary '',NULL,NULL,'BS.CK1 Nguyễn Hồng Dũng','$2a$10$kCXPVd.kyRpi1Ib0EXQoTOMwvkhToIMO.9M5hS7YRVWow7dAStUiO',NULL,'local',NULL,'expert',NULL,1,'2758f3d1-8e67-486f-bdcf-31401a2f0d30','2024-05-15 04:17:47.000000',NULL),(3,'2024-03-15 04:19:36.000000',_binary '\0','dinhhuan@gmail.com',_binary '',NULL,_binary '',NULL,NULL,'ThS.BS Nguyễn Đình Huấn','$2a$10$kCXPVd.kyRpi1Ib0EXQoTOMwvkhToIMO.9M5hS7YRVWow7dAStUiO',NULL,'local',NULL,'expert',NULL,1,'915c26c6-011c-4f83-b8dd-5b91455367a8','2024-05-15 04:19:36.000000',NULL),(4,'2024-03-15 04:20:55.000000',_binary '\0','thuhau@gmail.com',_binary '',NULL,_binary '',NULL,NULL,'TS.BS.CK2 Nguyễn Thị Thu Hậu','$2a$10$kCXPVd.kyRpi1Ib0EXQoTOMwvkhToIMO.9M5hS7YRVWow7dAStUiO',NULL,'local',NULL,'expert',NULL,1,'aaa71e46-fade-4fd0-b9b0-30fdee8d43f0','2024-05-15 04:20:55.000000',NULL),(5,'2024-03-15 04:22:33.000000',_binary '\0','levianh@gmail.com',_binary '','a4d03166-4f4b-4285-b313-ed45c218db27.jpeg',_binary '','BS chuyên khoa Thẩm mỹ da, BV ĐHYD ',NULL,'BS.CK2 Lê Vi Anh','$2a$10$kCXPVd.kyRpi1Ib0EXQoTOMwvkhToIMO.9M5hS7YRVWow7dAStUiO',NULL,'local',NULL,'expert','Da liễu / Phẫu thuật thẩm mỹ',1,'51423a42-7a89-4947-a6e8-047dbcd32323','2024-05-15 04:22:33.000000','Bệnh viện Đại học Y dược TP.HCM'),(6,'2024-03-15 04:32:28.000000',_binary '\0','sonadmin@gmail.com',_binary '',NULL,_binary '\0',NULL,NULL,'Hoàng Sơn','$2a$10$kCXPVd.kyRpi1Ib0EXQoTOMwvkhToIMO.9M5hS7YRVWow7dAStUiO',NULL,'local',NULL,'admin',NULL,1,'2145e6e7-1776-43df-8d0a-d6b8165c6270','2024-05-15 04:32:28.000000',NULL),(7,'2024-03-15 04:33:08.000000',_binary '\0','miniadmin@gmail.com',_binary '',NULL,_binary '\0',NULL,NULL,'Mini','$2a$10$kCXPVd.kyRpi1Ib0EXQoTOMwvkhToIMO.9M5hS7YRVWow7dAStUiO',NULL,'local',NULL,'admin',NULL,1,'7e59dc3d-ee31-4605-b239-af860bc49646','2024-05-15 04:33:08.000000',NULL),(8,'2024-03-15 12:27:10.326000',_binary '\0','minhtrong145@gmail.com',_binary '',NULL,_binary '\0',NULL,'2024-04-20 16:20:27.000000','Minh Trong','$2a$10$baPyFW5ueaVKlty23B.RHuzgx1rhpfr/wzFrI074UB6uAebI5aZCy',NULL,'local',NULL,'user',NULL,0,'ba3505c2-2c39-48f8-9ea5-5a89ba2897cd','2024-05-15 12:27:10.326000',NULL),(9,'2024-03-15 14:35:32.374000',_binary '\0','quochuy235@gmail.com',_binary '',NULL,_binary '\0',NULL,NULL,'Quốc Huy','$2a$10$YonGM215QbgwEqolCi.YduhjGFtMXMe51TZUCkV5pCJMo89CTziaG',NULL,'local',NULL,'user',NULL,2,'78c4cd70-c634-44d8-8510-92a0af0a7980','2024-05-15 14:35:32.374000',NULL),(10,'2024-03-15 14:38:51.675000',_binary '\0','anhkhang238@gmail.com',_binary '',NULL,_binary '\0',NULL,NULL,'Anh Khang','$2a$10$X6iCcTtWDh58tXvCbJs.Yui8uqD41Xc.jnkIMgXU0QFU1ep/Gw8uS',NULL,'local',NULL,'user',NULL,2,'8a764117-a4ab-44a8-b047-6ec4e0594b14','2024-05-15 14:38:51.675000',NULL),(11,'2024-03-15 14:43:01.411000',_binary '\0','huynhkhang242@gmail.com',_binary '',NULL,_binary '\0',NULL,NULL,'Huỳnh Khang','$2a$10$WRIoq44V6R3RA76ZM8xmkep.xTEqafOszLsUUFpiKboFV4F/wVJI.',NULL,'local',NULL,'user',NULL,2,'24c32cb6-9a78-4aa8-ac84-03e4c09fff25','2024-05-15 14:43:01.411000',NULL),(12,'2024-03-15 14:45:28.510000',_binary '\0','baotran245@gmail.com',_binary '',NULL,_binary '\0',NULL,NULL,'Bảo Trấn','$2a$10$pYUfWBzdTFdxLyETTUOsyePfTpYN1hGc064NNLnwIM51FOGuNXzI6',NULL,'local',NULL,'user',NULL,1,'fe7b2a5c-051f-491d-af13-22def87eee8e','2024-05-15 14:45:28.510000',NULL),(13,'2024-03-15 14:48:42.866000',_binary '\0','minhphuc248@gmail.com',_binary '',NULL,_binary '\0',NULL,'2024-04-14 15:37:26.000000','Minh Phúc','$2a$10$oM9CjxWooSX3AxfvBvLhhOHgSPTOelCrF3Pnp2tjGBP1GT89gE56a',NULL,'local',NULL,'user',NULL,0,'6e1fd785-3f32-4554-bffe-2802bf47c5fc','2024-05-15 14:48:42.866000',NULL),(14,'2024-03-16 17:42:11.976000',_binary '\0','trongnam418@gmail.com',_binary '\0',NULL,_binary '\0',NULL,NULL,'Trọng Nam','$2a$10$sHKj9k6xTzrxHf3EVlwgYOfOzVUVGCbmgCFK8p7IgDhXhO3A07sKy',NULL,'local',NULL,'user',NULL,2,'e1aedcf8-75c1-46ca-a586-f5842ec705ff','2024-05-16 17:42:11.976000',NULL),(15,'2024-03-16 17:45:35.211000',_binary '\0','duydon545@gmail.com',_binary '\0',NULL,_binary '\0',NULL,NULL,'Duy Đòn','$2a$10$CNsTCdWxCa6eYvWdQQonKeRNnKE53mJbNJOuCnpHjUV1ieOXEt8ta',NULL,'local',NULL,'user',NULL,2,'ea7aa5bc-cb9e-4d1c-9f44-4abf24dee53c','2024-05-16 17:45:35.211000',NULL),(16,'2024-03-16 17:58:43.455000',_binary '\0','duynhat558@gmail.com',_binary '\0',NULL,_binary '\0',NULL,NULL,'Duy Nhất','$2a$10$8p99JWEH9NvZgkODmjK/POGlhHUJCKFegpLK2ac7yt5eOLV01h5BG',NULL,'local',NULL,'user',NULL,2,'3eefdad8-4650-46a9-a0d5-5bee903c0830','2024-05-16 17:58:43.455000',NULL),(17,'2024-03-17 20:50:54.153000',_binary '\0','duynhat550@gmail.com',_binary '\0',NULL,_binary '\0',NULL,NULL,'Duy Nhất','$2a$10$yMkPgzw5ZeJIRfwh7vCT3eOG1zioMJdzEiX.mHM27DZylaoy3/aDC',NULL,'local',NULL,'user',NULL,2,'757f58c4-b4ed-4e1b-9b59-90862fae0700','2024-05-17 20:50:54.153000',NULL),(18,'2024-03-18 07:15:11.168000',_binary '\0','duytham714@gmail.com',_binary '\0',NULL,_binary '\0',NULL,NULL,'Duy Thẩm','$2a$10$gfFmcNS7LXhZPL8VeGZDTOYkLV9D.GEHFpjhksh5oa8GjoChWC8VC',NULL,'local',NULL,'user',NULL,2,'f96a1253-b283-4ab2-876d-88e7ddd2cd6d','2024-05-18 07:15:11.168000',NULL),(19,'2024-03-18 07:18:58.412000',_binary '\0','tamcam718@gmail.com',_binary '\0',NULL,_binary '\0',NULL,NULL,'Tấm Cám','$2a$10$V6hJMdAK8Ag9To6tUSYI6OFUZ6jjAhrSs2kD6wbOtwVC3tshso5xa',NULL,'local',NULL,'user',NULL,2,'359be5cb-a9a6-4b63-8010-bee16423fbf0','2024-05-18 07:18:58.412000',NULL),(20,'2024-03-18 21:05:46.716000',_binary '\0','voson1024@gmail.com',_binary '','26a51992-b468-4f17-b23f-d3cb1b8006e5.png',_binary '\0',NULL,'2024-06-15 01:13:48.000000','demo','$2a$10$.T9FPTF/iP0RlAeuuDR3WeCG6YGEvLw3tNBcbmY3JZAcVUKrflHOS',NULL,'local',NULL,'user',NULL,0,'415c83f0-1ef3-492d-a15b-22955ed4e802','2024-05-18 21:05:46.716000',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_description`
--

DROP TABLE IF EXISTS `users_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_description` (
                                     `user_id` bigint NOT NULL,
                                     `description_id` bigint NOT NULL,
                                     UNIQUE KEY `UK_q1124bw8mikk6cxp59297kg39` (`description_id`),
                                     KEY `FKkkqlg8ujknieqcmydajtiy62n` (`user_id`),
                                     CONSTRAINT `FK4378ff7dcdebdu9hcrk11d1c0` FOREIGN KEY (`description_id`) REFERENCES `user_des` (`id`),
                                     CONSTRAINT `FKkkqlg8ujknieqcmydajtiy62n` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_description`
--

LOCK TABLES `users_description` WRITE;
/*!40000 ALTER TABLE `users_description` DISABLE KEYS */;
INSERT INTO `users_description` VALUES (5,1),(5,2),(5,48),(5,49),(5,50),(5,51),(5,52),(5,53),(5,54),(5,55),(5,56),(5,57),(5,58),(5,59),(5,60),(5,61),(5,62),(5,63),(5,64),(5,65),(5,66),(5,67),(5,68),(5,69),(5,70),(5,71);
/*!40000 ALTER TABLE `users_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification` (
                                `id` bigint NOT NULL AUTO_INCREMENT,
                                `expiration_time` datetime(6) DEFAULT NULL,
                                `token` varchar(255) DEFAULT NULL,
                                `user_id` bigint DEFAULT NULL,
                                `valid_flg` tinyint DEFAULT NULL,
                                PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification`
--

LOCK TABLES `verification` WRITE;
/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
INSERT INTO `verification` VALUES (1,'2024-03-10 17:35:32.522000','927b60ff-1563-4df9-8ec7-662f4f7192a5',9,1),(2,'2024-03-15 17:39:30.169000','3a50182e-db9b-412f-8ba1-571e907a3257',10,1),(3,'2024-03-15 17:43:11.081000','5e0c9bdd-1e43-4a3d-9605-722774095829',11,1),(4,'2024-03-15 17:45:43.736000','734a2eb8-02c3-4784-b268-c2926cfd6ec6',12,1),(5,'2024-04-15 17:48:46.681000','733c1c6b-aeda-4684-bb1e-3711640617c8',13,1),(6,'2024-04-16 20:42:53.396000','303b45d7-0906-400d-8103-55698873fc93',14,1),(7,'2024-04-16 20:45:37.291000','6bb3169b-359c-4a58-99af-b8d5204f6f16',15,1),(8,'2024-04-16 20:58:44.669000','5312721a-d3e1-4a7a-b9d5-df2649770c49',16,1),(9,'2024-04-17 23:50:54.348000','3809e3c5-4657-4cd7-b4dd-94f1c00faee1',17,1),(10,'2024-04-18 10:15:30.225000','67bf6d1f-36f4-4f2f-86af-45df6bdf81ae',18,1),(11,'2024-04-18 10:19:21.958000','c925de45-071c-4d02-8d51-302d1cdb7298',19,1),(12,'2024-04-14 00:06:12.381000','af57398b-68e5-43a1-8bd6-c87dd4369ffb',20,1);
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22 17:39:37
