-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: classtudydb
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `userid` varchar(16) NOT NULL,
  `passwd` varchar(16) NOT NULL,
  `passwdCheck` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `dateOfBirth` varchar(10) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `tel` varchar(16) NOT NULL,
  `zipcode` varchar(8) NOT NULL,
  `address` varchar(60) NOT NULL,
  `addressDetail` varchar(60) NOT NULL,
  `email` varchar(25) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 18:33:31
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: sys
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Temporary view structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2020-08-28 07:30:40',NULL),('diagnostics.include_raw','OFF','2020-08-28 07:30:40',NULL),('ps_thread_trx_info.max_length','65535','2020-08-28 07:30:40',NULL),('statement_performance_analyzer.limit','100','2020-08-28 07:30:40',NULL),('statement_performance_analyzer.view',NULL,'2020-08-28 07:30:40',NULL),('statement_truncate_len','64','2020-08-28 07:30:40',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,`sys`.`format_time`(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`sys`.`format_bytes`(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` AS select `sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` AS (select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status`) union all (select `information_schema`.`innodb_metrics`.`NAME` AS `Variable_name`,`information_schema`.`innodb_metrics`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`innodb_metrics`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`innodb_metrics`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`innodb_metrics` where (`information_schema`.`innodb_metrics`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size'))) union all (select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) union all (select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`sys`.`format_time`(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,`sys`.`format_bytes`(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`sys`.`format_time`(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` AS select `information_schema`.`columns`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`columns`.`TABLE_NAME` AS `table_name`,`information_schema`.`columns`.`COLUMN_NAME` AS `column_name`,`information_schema`.`columns`.`DATA_TYPE` AS `data_type`,`information_schema`.`columns`.`COLUMN_TYPE` AS `column_type`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`tables`.`AUTO_INCREMENT` AS `auto_increment`,(`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`information_schema`.`columns` join `information_schema`.`tables` on(((`information_schema`.`columns`.`TABLE_SCHEMA` = `information_schema`.`tables`.`TABLE_SCHEMA`) and (`information_schema`.`columns`.`TABLE_NAME` = `information_schema`.`tables`.`TABLE_NAME`)))) where ((`information_schema`.`columns`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`tables`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`columns`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`tables`.`AUTO_INCREMENT` / ((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`columns`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`columns`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`routines` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`tables` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`statistics` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`triggers` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`events` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if((`redundant_keys`.`subpart_exists` or `dominant_keys`.`subpart_exists`),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`sys`.`x$schema_flattened_keys` `redundant_keys` join `sys`.`x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`sys`.`format_time`(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,`sys`.`format_bytes`(`ibp`.`allocated`) AS `innodb_buffer_allocated`,`sys`.`format_bytes`(`ibp`.`data`) AS `innodb_buffer_data`,`sys`.`format_bytes`((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` AS select `t`.`OBJECT_SCHEMA` AS `object_schema`,`t`.`OBJECT_NAME` AS `object_name`,`t`.`INDEX_NAME` AS `index_name` from (`performance_schema`.`table_io_waits_summary_by_index_usage` `t` join `information_schema`.`statistics` `s` on(((`t`.`OBJECT_SCHEMA` = `s`.`TABLE_SCHEMA`) and (`t`.`OBJECT_NAME` = `s`.`TABLE_NAME`) and (`t`.`INDEX_NAME` = `s`.`INDEX_NAME`)))) where ((`t`.`INDEX_NAME` is not null) and (`t`.`COUNT_STAR` = 0) and (`t`.`OBJECT_SCHEMA` <> 'mysql') and (`t`.`INDEX_NAME` <> 'PRIMARY') and (`s`.`NON_UNIQUE` = 1) and (`s`.`SEQ_IN_INDEX` = 1)) order by `t`.`OBJECT_SCHEMA`,`t`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `sys`.`processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` AS select '1.5.2' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` in ('thread/sql/one_connection','thread/thread_pool/tp_one_connection')),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` AS select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`statistics`.`TABLE_NAME` AS `table_name`,`information_schema`.`statistics`.`INDEX_NAME` AS `index_name`,max(`information_schema`.`statistics`.`NON_UNIQUE`) AS `non_unique`,max(if(isnull(`information_schema`.`statistics`.`SUB_PART`),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`statistics`.`COLUMN_NAME` order by `information_schema`.`statistics`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `information_schema`.`statistics` where ((`information_schema`.`statistics`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`statistics`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`TABLE_NAME`,`information_schema`.`statistics`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_DELETE` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 18:33:32
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: examdb
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `s_board`
--

DROP TABLE IF EXISTS `s_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_board` (
  `b_no` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(200) NOT NULL,
  `b_detail` text,
  `b_writer` varchar(45) NOT NULL,
  `b_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `b_count` int(11) DEFAULT '0',
  PRIMARY KEY (`b_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_board`
--

LOCK TABLES `s_board` WRITE;
/*!40000 ALTER TABLE `s_board` DISABLE KEYS */;
INSERT INTO `s_board` VALUES (1,'가나다라','한글책','세종대왕','2020-10-16 09:05:47',0),(3,'자바기반 안드로이드 앱개발_ D 1권','자바기반 안드로이드 앱개발_ D 1권','교육부','2020-10-19 02:26:57',0),(4,'일본어배우기','일본어 속성으로 배우기','니혼북','2020-10-19 03:25:11',0),(5,'Do it자바 프로그래밍 입문','Do it자바 프로그래밍 입문','최범균','2020-10-19 03:28:49',0),(7,'상견니','見你 상견니 소설','지엔치펑, 린신훼이','2020-10-19 03:38:42',0),(11,'커피이야기','커피에 대하여','커피빈','2020-10-19 06:26:28',0),(12,'도서 제목2','도서 내용2','저자','2020-10-19 07:09:48',0),(13,'팔공티 공략법','대만 밀크티','타이완','2020-10-19 07:40:52',0),(15,'게시글 제목22','게지판 낸용','글쓴이(저자)','2020-10-20 05:26:20',0);
/*!40000 ALTER TABLE `s_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_member` (
  `userid` varchar(16) NOT NULL,
  `passwd` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('aerisa','1111','이애리나');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 18:33:33
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: testdb
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `passwd` varchar(16) CHARACTER SET utf8 NOT NULL,
  `reg_date` datetime NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('a100','1111','2020-08-28 17:58:09','010-1234-5678','서울 서초구 서초동','');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 18:33:33
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstoredb
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank` (
  `account` varchar(30) NOT NULL,
  `bank` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('11111-111-11111','신핸은행','박신한'),('22222-222-22222','국민은행','오국민'),('33333-333-33333','우리은행','김우리');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) DEFAULT NULL,
  `content` text,
  `writer` varchar(40) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'게시글 제목12','게시글의 내용입니다.12','게시글 작성자','2020-10-29 11:25:22'),(2,'게시글 제목','게시글2','작성자','2020-10-29 11:57:09'),(3,'최신글','최신글내용','최신작성자','2020-10-29 12:09:22'),(4,'글1','글2','글2','2020-10-29 13:55:45'),(5,'게시글 제목124','게시글 내용124','게시글 작성자124','2020-10-29 13:59:59');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_kind` varchar(3) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_price` int(11) NOT NULL,
  `book_count` smallint(6) NOT NULL,
  `author` varchar(40) NOT NULL,
  `publishing_com` varchar(30) NOT NULL,
  `publishing_date` varchar(15) NOT NULL,
  `book_image` varchar(16) DEFAULT 'nothing.jpg',
  `book_content` text NOT NULL,
  `discount_rate` tinyint(4) DEFAULT '10',
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'300','java',15000,5,'java','java','2020-01-01','BOM.jpg','java',10,'2020-09-16 15:12:41'),(2,'100','???',5000,10,'????','??','2020-01-01','??.jpg','??',15,'2020-09-16 15:57:39'),(3,'100','???',15000,5,'????','??','2019-06-06','012_???.gif','???',15,'2020-09-16 16:23:58'),(4,'100','한글',15000,10,'한글','한글','2019-01-01','012_컬렉션1.gif','한글책',10,'2020-09-16 17:29:11'),(5,'200','일본어 회화100일의 기적',15000,19,'윤선경','넥서스','2016-02-02','1212.jpg','일본어 회화100일의 기적',15,'2020-09-17 11:58:47'),(6,'300','java',15000,15,'자바','java','2020-01-01','12121.jpg','java',20,'2020-09-17 11:59:44'),(7,'100','한글수업',15000,14,'세종대왕','대한출판사','2019-01-01','12122.jpg','한국어 배우기',20,'2020-09-17 12:29:14'),(8,'200','영어',11500,10,'외국인','외국출판사','2019-01-03','12123.jpg','영어배우자',5,'2020-09-17 12:32:27'),(9,'300','JSP수업',18000,5,'JSP선생님','JSP출판사','2017-05-01','12124.jpg','JSP수업용 도서',15,'2020-09-17 14:12:26'),(10,'100','가나다라',15000,5,'한글','한글','2020-01-01','12125.jpg','한글도서',5,'2020-09-17 16:59:28'),(11,'300','컴퓨터배우기',12000,5,'컴선생님','컴출판사','2018-05-06','12126.jpg','컴퓨터책',5,'2020-09-18 10:13:34'),(12,'100','바로바로 영어 독학 첫걸음',15000,20,'이민정','탑메이드북','2017-04-05','8971728337_b.jpg','바로바로 영어 독학 첫걸음',10,'2020-09-28 18:15:50');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bscode`
--

DROP TABLE IF EXISTS `bscode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bscode` (
  `id` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bscode`
--

LOCK TABLES `bscode` WRITE;
/*!40000 ALTER TABLE `bscode` DISABLE KEYS */;
INSERT INTO `bscode` VALUES ('100','문학'),('200','외국어'),('300','컴퓨터');
/*!40000 ALTER TABLE `bscode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buy` (
  `buy_id` bigint(20) DEFAULT NULL,
  `buyer` varchar(50) NOT NULL,
  `book_id` varchar(12) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `buy_price` int(11) NOT NULL,
  `buy_count` int(11) NOT NULL,
  `book_image` varchar(16) DEFAULT 'nothing.jpg',
  `buy_date` datetime NOT NULL,
  `account` varchar(50) NOT NULL,
  `deliveryName` varchar(10) NOT NULL,
  `deliveryTel` varchar(20) NOT NULL,
  `deliveryAddress` varchar(100) NOT NULL,
  `sanction` varchar(10) DEFAULT '상품준비중'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
INSERT INTO `buy` VALUES (2020092800001,'aerisa0608','9','JSP수업',15300,10,'12124.jpg','2020-09-28 17:09:32','22222-222-22222','이애리사','010-1234-5678','인천시 남동구 장도로 8 성화빌라 8동 401호','상품준비중'),(2020092800001,'aerisa0608','5','일본어 회화100일의 기적',12750,1,'1212.jpg','2020-09-28 17:09:32','22222-222-22222','이애리사','010-1234-5678','인천시 남동구 장도로 8 성화빌라 8동 401호','상품준비중'),(2020092800002,'aerisa0608','7','한글수업',12000,6,'12122.jpg','2020-09-28 17:54:03','33333-333-33333','이애리사','010-1234-5678','인천시 남동구 장도로 8 성화빌라 8동 401호','상품준비중'),(2020092800003,'aerisa0608','12','바로바로 영어 독학 첫걸음',13500,5,'8971728337_b.jpg','2020-09-28 18:16:36','11111-111-11111','이애리사','010-1234-5678','인천시 남동구 장도로 8 성화빌라 8동 401호','상품준비중');
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer` varchar(50) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `buy_price` int(11) NOT NULL,
  `buy_count` int(11) DEFAULT NULL,
  `book_image` varchar(16) DEFAULT 'nothing.jap',
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (22,'aerisa0608',9,'JSP수업',15300,1,'12124.jpg'),(23,'aerisa0608',7,'한글수업',12000,5,'12122.jpg'),(24,'aerisa0608',12,'바로바로 영어 독학 첫걸음',13500,2,'8971728337_b.jpg');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `cno` int(11) NOT NULL AUTO_INCREMENT,
  `bno` int(11) NOT NULL,
  `content` text,
  `writer` varchar(40) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cno`),
  KEY `bno` (`bno`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`bno`) REFERENCES `board` (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'댓글1입니다.','user','2020-10-29 11:25:34'),(2,1,'댓글 2입니다.','user','2020-10-29 11:40:56'),(3,1,' 댓글','user','2020-10-29 11:47:46'),(4,3,'댓글1','user','2020-10-29 13:53:17'),(5,3,'댓글3','user','2020-10-29 13:53:30'),(6,1,'댓글4','user','2020-10-29 13:55:21'),(7,4,'댓글1','user','2020-10-29 13:55:54');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `id` varchar(10) NOT NULL,
  `passwd` varchar(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES ('a100','1111','희동이'),('a200','2222','길동이'),('a300','3333','마이클');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `fno` int(11) NOT NULL,
  `bno` int(11) NOT NULL,
  `fileName` varchar(80) DEFAULT NULL,
  `fileOriName` varchar(80) DEFAULT NULL,
  `fileUrl` varchar(80) DEFAULT NULL,
  KEY `bno` (`bno`),
  CONSTRAINT `files_ibfk_1` FOREIGN KEY (`bno`) REFERENCES `board` (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `managerID` varchar(20) NOT NULL,
  `managerPasswd` varchar(20) NOT NULL,
  PRIMARY KEY (`managerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('bookmaster','1111');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(50) NOT NULL,
  `passwd` varchar(16) NOT NULL,
  `name` varchar(10) NOT NULL,
  `reg_date` datetime NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('aerisa0608','zz780608','이애리사','2020-09-22 16:01:35','010-1234-5678','인천시 남동구 장도로 8 성화빌라 8동 401호'),('kiesbabo','1111','애리사','2020-09-21 00:00:00','01011111111','장도로8');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `userid` varchar(20) DEFAULT NULL,
  `bno` int(11) DEFAULT NULL,
  KEY `bno` (`bno`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`bno`) REFERENCES `s_board` (`b_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_board`
--

DROP TABLE IF EXISTS `s_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `s_board` (
  `b_no` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(200) NOT NULL,
  `b_detail` text,
  `b_writer` varchar(45) NOT NULL,
  `b_date` timestamp NULL DEFAULT NULL,
  `b_count` int(11) DEFAULT '0',
  PRIMARY KEY (`b_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_board`
--

LOCK TABLES `s_board` WRITE;
/*!40000 ALTER TABLE `s_board` DISABLE KEYS */;
INSERT INTO `s_board` VALUES (1,'가나다라','한글책','세종대왕','2020-10-16 09:05:47',0),(3,'자바기반 안드로이드 앱개발_ D 1권','자바기반 안드로이드 앱개발_ D 1권','교육부','2020-10-19 02:26:57',0),(4,'일본어배우기','일본어 속성으로 배우기','니혼북','2020-10-19 03:25:11',0),(5,'Do it자바 프로그래밍 입문','Do it자바 프로그래밍 입문','최범균','2020-10-19 03:28:49',0),(7,'상견니','見你 상견니 소설','지엔치펑, 린신훼이','2020-10-19 03:38:42',0),(11,'커피이야기','커피에 대하여','커피빈','2020-10-19 06:26:28',0),(12,'도서 제목2','도서 내용2','저자','2020-10-19 07:09:48',0),(13,'팔공티 공략법','대만 밀크티','타이완','2020-10-19 07:40:52',0),(15,'게시글 제목22','게지판 낸용','글쓴이(저자)','2020-10-20 05:26:20',0);
/*!40000 ALTER TABLE `s_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 18:33:33
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: jpa_examdb
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1097);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_board` (
  `bno` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `regdate` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updatedate` datetime(6) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'게시물 내용 넣기.....','2020-10-26 17:10:58.670000','제목을 수정하였습니다.','2020-10-26 17:10:58.726000','user00'),(2,'내용 : 1','2020-10-26 18:02:33.023000','제목 : 1','2020-10-26 18:02:33.023000','user01'),(3,'내용 : 2','2020-10-26 18:02:33.141000','제목 : 2','2020-10-26 18:02:33.141000','user02'),(4,'내용 : 3','2020-10-26 18:02:33.201000','제목 : 3','2020-10-26 18:02:33.201000','user03'),(5,'내용 : 4','2020-10-26 18:02:33.259000','제목 : 4','2020-10-26 18:02:33.259000','user04'),(6,'내용 : 5','2020-10-26 18:02:33.308000','제목 : 5','2020-10-26 18:02:33.308000','user05'),(7,'내용 : 6','2020-10-26 18:02:33.358000','제목 : 6','2020-10-26 18:02:33.358000','user06'),(8,'내용 : 7','2020-10-26 18:02:33.409000','제목 : 7','2020-10-26 18:02:33.409000','user07'),(9,'내용 : 8','2020-10-26 18:02:33.476000','제목 : 8','2020-10-26 18:02:33.476000','user08'),(10,'내용 : 9','2020-10-26 18:02:33.542000','제목 : 9','2020-10-26 18:02:33.542000','user09'),(11,'내용 : 10','2020-10-26 18:02:33.592000','제목 : 10','2020-10-26 18:02:33.592000','user00'),(12,'내용 : 11','2020-10-26 18:02:33.667000','제목 : 11','2020-10-26 18:02:33.667000','user01'),(13,'내용 : 12','2020-10-26 18:02:33.734000','제목 : 12','2020-10-26 18:02:33.734000','user02'),(14,'내용 : 13','2020-10-26 18:02:33.800000','제목 : 13','2020-10-26 18:02:33.800000','user03'),(15,'내용 : 14','2020-10-26 18:02:33.851000','제목 : 14','2020-10-26 18:02:33.851000','user04'),(16,'내용 : 15','2020-10-26 18:02:33.917000','제목 : 15','2020-10-26 18:02:33.917000','user05'),(17,'내용 : 16','2020-10-26 18:02:33.991000','제목 : 16','2020-10-26 18:02:33.991000','user06'),(18,'내용 : 17','2020-10-26 18:02:34.083000','제목 : 17','2020-10-26 18:02:34.083000','user07'),(19,'내용 : 18','2020-10-26 18:02:34.151000','제목 : 18','2020-10-26 18:02:34.151000','user08'),(20,'내용 : 19','2020-10-26 18:02:34.209000','제목 : 19','2020-10-26 18:02:34.209000','user09'),(21,'내용 : 20','2020-10-26 18:02:34.275000','제목 : 20','2020-10-26 18:02:34.275000','user00'),(22,'내용 : 21','2020-10-26 18:02:34.325000','제목 : 21','2020-10-26 18:02:34.325000','user01'),(23,'내용 : 22','2020-10-26 18:02:34.392000','제목 : 22','2020-10-26 18:02:34.392000','user02'),(24,'내용 : 23','2020-10-26 18:02:34.459000','제목 : 23','2020-10-26 18:02:34.459000','user03'),(25,'내용 : 24','2020-10-26 18:02:34.508000','제목 : 24','2020-10-26 18:02:34.508000','user04'),(26,'내용 : 25','2020-10-26 18:02:34.558000','제목 : 25','2020-10-26 18:02:34.558000','user05'),(27,'내용 : 26','2020-10-26 18:02:34.609000','제목 : 26','2020-10-26 18:02:34.609000','user06'),(28,'내용 : 27','2020-10-26 18:02:34.658000','제목 : 27','2020-10-26 18:02:34.658000','user07'),(29,'내용 : 28','2020-10-26 18:02:34.776000','제목 : 28','2020-10-26 18:02:34.776000','user08'),(30,'내용 : 29','2020-10-26 18:02:34.825000','제목 : 29','2020-10-26 18:02:34.825000','user09'),(31,'내용 : 30','2020-10-26 18:02:34.893000','제목 : 30','2020-10-26 18:02:34.893000','user00'),(32,'내용 : 31','2020-10-26 18:02:34.985000','제목 : 31','2020-10-26 18:02:34.985000','user01'),(33,'내용 : 32','2020-10-26 18:02:35.067000','제목 : 32','2020-10-26 18:02:35.067000','user02'),(34,'내용 : 33','2020-10-26 18:02:35.117000','제목 : 33','2020-10-26 18:02:35.117000','user03'),(35,'내용 : 34','2020-10-26 18:02:35.185000','제목 : 34','2020-10-26 18:02:35.185000','user04'),(36,'내용 : 35','2020-10-26 18:02:35.251000','제목 : 35','2020-10-26 18:02:35.251000','user05'),(37,'내용 : 36','2020-10-26 18:02:35.300000','제목 : 36','2020-10-26 18:02:35.300000','user06'),(38,'내용 : 37','2020-10-26 18:02:35.351000','제목 : 37','2020-10-26 18:02:35.351000','user07'),(39,'내용 : 38','2020-10-26 18:02:35.392000','제목 : 38','2020-10-26 18:02:35.392000','user08'),(40,'내용 : 39','2020-10-26 18:02:35.442000','제목 : 39','2020-10-26 18:02:35.442000','user09'),(41,'내용 : 40','2020-10-26 18:02:35.500000','제목 : 40','2020-10-26 18:02:35.500000','user00'),(42,'내용 : 41','2020-10-26 18:02:35.550000','제목 : 41','2020-10-26 18:02:35.550000','user01'),(43,'내용 : 42','2020-10-26 18:02:35.601000','제목 : 42','2020-10-26 18:02:35.601000','user02'),(44,'내용 : 43','2020-10-26 18:02:35.668000','제목 : 43','2020-10-26 18:02:35.668000','user03'),(45,'내용 : 44','2020-10-26 18:02:35.735000','제목 : 44','2020-10-26 18:02:35.735000','user04'),(46,'내용 : 45','2020-10-26 18:02:35.792000','제목 : 45','2020-10-26 18:02:35.792000','user05'),(47,'내용 : 46','2020-10-26 18:02:35.843000','제목 : 46','2020-10-26 18:02:35.843000','user06'),(48,'내용 : 47','2020-10-26 18:02:35.893000','제목 : 47','2020-10-26 18:02:35.893000','user07'),(49,'내용 : 48','2020-10-26 18:02:35.959000','제목 : 48','2020-10-26 18:02:35.959000','user08'),(50,'내용 : 49','2020-10-26 18:02:36.076000','제목 : 49','2020-10-26 18:02:36.076000','user09'),(51,'내용 : 50','2020-10-26 18:02:36.127000','제목 : 50','2020-10-26 18:02:36.127000','user00'),(52,'내용 : 51','2020-10-26 18:02:36.184000','제목 : 51','2020-10-26 18:02:36.184000','user01'),(53,'내용 : 52','2020-10-26 18:02:36.252000','제목 : 52','2020-10-26 18:02:36.252000','user02'),(54,'내용 : 53','2020-10-26 18:02:36.310000','제목 : 53','2020-10-26 18:02:36.310000','user03'),(55,'내용 : 54','2020-10-26 18:02:36.377000','제목 : 54','2020-10-26 18:02:36.377000','user04'),(56,'내용 : 55','2020-10-26 18:02:36.443000','제목 : 55','2020-10-26 18:02:36.443000','user05'),(57,'내용 : 56','2020-10-26 18:02:36.501000','제목 : 56','2020-10-26 18:02:36.501000','user06'),(58,'내용 : 57','2020-10-26 18:02:36.551000','제목 : 57','2020-10-26 18:02:36.551000','user07'),(59,'내용 : 58','2020-10-26 18:02:36.619000','제목 : 58','2020-10-26 18:02:36.619000','user08'),(60,'내용 : 59','2020-10-26 18:02:36.659000','제목 : 59','2020-10-26 18:02:36.659000','user09'),(61,'내용 : 60','2020-10-26 18:02:36.710000','제목 : 60','2020-10-26 18:02:36.710000','user00'),(62,'내용 : 61','2020-10-26 18:02:36.760000','제목 : 61','2020-10-26 18:02:36.760000','user01'),(63,'내용 : 62','2020-10-26 18:02:36.860000','제목 : 62','2020-10-26 18:02:36.860000','user02'),(64,'내용 : 63','2020-10-26 18:02:36.919000','제목 : 63','2020-10-26 18:02:36.919000','user03'),(65,'내용 : 64','2020-10-26 18:02:37.043000','제목 : 64','2020-10-26 18:02:37.043000','user04'),(66,'내용 : 65','2020-10-26 18:02:37.151000','제목 : 65','2020-10-26 18:02:37.151000','user05'),(67,'내용 : 66','2020-10-26 18:02:37.229000','제목 : 66','2020-10-26 18:02:37.229000','user06'),(68,'내용 : 67','2020-10-26 18:02:37.376000','제목 : 67','2020-10-26 18:02:37.376000','user07'),(69,'내용 : 68','2020-10-26 18:02:37.427000','제목 : 68','2020-10-26 18:02:37.427000','user08'),(70,'내용 : 69','2020-10-26 18:02:37.493000','제목 : 69','2020-10-26 18:02:37.493000','user09'),(71,'내용 : 70','2020-10-26 18:02:37.560000','제목 : 70','2020-10-26 18:02:37.560000','user00'),(72,'내용 : 71','2020-10-26 18:02:37.618000','제목 : 71','2020-10-26 18:02:37.618000','user01'),(73,'내용 : 72','2020-10-26 18:02:37.702000','제목 : 72','2020-10-26 18:02:37.702000','user02'),(74,'내용 : 73','2020-10-26 18:02:37.752000','제목 : 73','2020-10-26 18:02:37.752000','user03'),(75,'내용 : 74','2020-10-26 18:02:37.844000','제목 : 74','2020-10-26 18:02:37.844000','user04'),(76,'내용 : 75','2020-10-26 18:02:37.910000','제목 : 75','2020-10-26 18:02:37.910000','user05'),(77,'내용 : 76','2020-10-26 18:02:38.026000','제목 : 76','2020-10-26 18:02:38.026000','user06'),(78,'내용 : 77','2020-10-26 18:02:38.086000','제목 : 77','2020-10-26 18:02:38.086000','user07'),(79,'내용 : 78','2020-10-26 18:02:38.160000','제목 : 78','2020-10-26 18:02:38.160000','user08'),(80,'내용 : 79','2020-10-26 18:02:38.210000','제목 : 79','2020-10-26 18:02:38.210000','user09'),(81,'내용 : 80','2020-10-26 18:02:38.285000','제목 : 80','2020-10-26 18:02:38.285000','user00'),(82,'내용 : 81','2020-10-26 18:02:38.335000','제목 : 81','2020-10-26 18:02:38.335000','user01'),(83,'내용 : 82','2020-10-26 18:02:38.385000','제목 : 82','2020-10-26 18:02:38.385000','user02'),(84,'내용 : 83','2020-10-26 18:02:38.435000','제목 : 83','2020-10-26 18:02:38.435000','user03'),(85,'내용 : 84','2020-10-26 18:02:38.510000','제목 : 84','2020-10-26 18:02:38.510000','user04'),(86,'내용 : 85','2020-10-26 18:02:38.560000','제목 : 85','2020-10-26 18:02:38.560000','user05'),(87,'내용 : 86','2020-10-26 18:02:38.610000','제목 : 86','2020-10-26 18:02:38.610000','user06'),(88,'내용 : 87','2020-10-26 18:02:38.660000','제목 : 87','2020-10-26 18:02:38.660000','user07'),(89,'내용 : 88','2020-10-26 18:02:38.711000','제목 : 88','2020-10-26 18:02:38.711000','user08'),(90,'내용 : 89','2020-10-26 18:02:38.761000','제목 : 89','2020-10-26 18:02:38.761000','user09'),(91,'내용 : 90','2020-10-26 18:02:38.811000','제목 : 90','2020-10-26 18:02:38.811000','user00'),(92,'내용 : 91','2020-10-26 18:02:38.868000','제목 : 91','2020-10-26 18:02:38.868000','user01'),(93,'내용 : 92','2020-10-26 18:02:38.945000','제목 : 92','2020-10-26 18:02:38.945000','user02'),(94,'내용 : 93','2020-10-26 18:02:38.993000','제목 : 93','2020-10-26 18:02:38.993000','user03'),(95,'내용 : 94','2020-10-26 18:02:39.044000','제목 : 94','2020-10-26 18:02:39.044000','user04'),(96,'내용 : 95','2020-10-26 18:02:39.093000','제목 : 95','2020-10-26 18:02:39.093000','user05'),(97,'내용 : 96','2020-10-26 18:02:39.194000','제목 : 96','2020-10-26 18:02:39.194000','user06'),(98,'내용 : 97','2020-10-26 18:02:39.243000','제목 : 97','2020-10-26 18:02:39.243000','user07'),(99,'내용 : 98','2020-10-26 18:02:39.293000','제목 : 98','2020-10-26 18:02:39.293000','user08'),(100,'내용 : 99','2020-10-26 18:02:39.353000','제목 : 99','2020-10-26 18:02:39.353000','user09'),(101,'내용 : 100','2020-10-26 18:02:39.402000','제목 : 100','2020-10-26 18:02:39.402000','user00'),(102,'내용 : 101','2020-10-26 18:02:39.477000','제목 : 101','2020-10-26 18:02:39.477000','user01'),(103,'내용 : 102','2020-10-26 18:02:39.527000','제목 : 102','2020-10-26 18:02:39.527000','user02'),(104,'내용 : 103','2020-10-26 18:02:39.570000','제목 : 103','2020-10-26 18:02:39.570000','user03'),(105,'내용 : 104','2020-10-26 18:02:39.620000','제목 : 104','2020-10-26 18:02:39.620000','user04'),(106,'내용 : 105','2020-10-26 18:02:39.669000','제목 : 105','2020-10-26 18:02:39.669000','user05'),(107,'내용 : 106','2020-10-26 18:02:39.719000','제목 : 106','2020-10-26 18:02:39.719000','user06'),(108,'내용 : 107','2020-10-26 18:02:39.770000','제목 : 107','2020-10-26 18:02:39.770000','user07'),(109,'내용 : 108','2020-10-26 18:02:39.820000','제목 : 108','2020-10-26 18:02:39.820000','user08'),(110,'내용 : 109','2020-10-26 18:02:39.869000','제목 : 109','2020-10-26 18:02:39.869000','user09'),(111,'내용 : 110','2020-10-26 18:02:39.927000','제목 : 110','2020-10-26 18:02:39.927000','user00'),(112,'내용 : 111','2020-10-26 18:02:39.986000','제목 : 111','2020-10-26 18:02:39.986000','user01'),(113,'내용 : 112','2020-10-26 18:02:40.111000','제목 : 112','2020-10-26 18:02:40.111000','user02'),(114,'내용 : 113','2020-10-26 18:02:40.161000','제목 : 113','2020-10-26 18:02:40.161000','user03'),(115,'내용 : 114','2020-10-26 18:02:40.211000','제목 : 114','2020-10-26 18:02:40.211000','user04'),(116,'내용 : 115','2020-10-26 18:02:40.269000','제목 : 115','2020-10-26 18:02:40.269000','user05'),(117,'내용 : 116','2020-10-26 18:02:40.319000','제목 : 116','2020-10-26 18:02:40.319000','user06'),(118,'내용 : 117','2020-10-26 18:02:40.369000','제목 : 117','2020-10-26 18:02:40.369000','user07'),(119,'내용 : 118','2020-10-26 18:02:40.419000','제목 : 118','2020-10-26 18:02:40.419000','user08'),(120,'내용 : 119','2020-10-26 18:02:40.469000','제목 : 119','2020-10-26 18:02:40.469000','user09'),(121,'내용 : 120','2020-10-26 18:02:40.537000','제목 : 120','2020-10-26 18:02:40.537000','user00'),(122,'내용 : 121','2020-10-26 18:02:40.627000','제목 : 121','2020-10-26 18:02:40.627000','user01'),(123,'내용 : 122','2020-10-26 18:02:40.678000','제목 : 122','2020-10-26 18:02:40.678000','user02'),(124,'내용 : 123','2020-10-26 18:02:40.728000','제목 : 123','2020-10-26 18:02:40.728000','user03'),(125,'내용 : 124','2020-10-26 18:02:40.786000','제목 : 124','2020-10-26 18:02:40.786000','user04'),(126,'내용 : 125','2020-10-26 18:02:40.845000','제목 : 125','2020-10-26 18:02:40.845000','user05'),(127,'내용 : 126','2020-10-26 18:02:40.910000','제목 : 126','2020-10-26 18:02:40.910000','user06'),(128,'내용 : 127','2020-10-26 18:02:40.961000','제목 : 127','2020-10-26 18:02:40.961000','user07'),(129,'내용 : 128','2020-10-26 18:02:41.011000','제목 : 128','2020-10-26 18:02:41.011000','user08'),(130,'내용 : 129','2020-10-26 18:02:41.061000','제목 : 129','2020-10-26 18:02:41.061000','user09'),(131,'내용 : 130','2020-10-26 18:02:41.137000','제목 : 130','2020-10-26 18:02:41.137000','user00'),(132,'내용 : 131','2020-10-26 18:02:41.336000','제목 : 131','2020-10-26 18:02:41.336000','user01'),(133,'내용 : 132','2020-10-26 18:02:41.512000','제목 : 132','2020-10-26 18:02:41.512000','user02'),(134,'내용 : 133','2020-10-26 18:02:41.578000','제목 : 133','2020-10-26 18:02:41.578000','user03'),(135,'내용 : 134','2020-10-26 18:02:41.628000','제목 : 134','2020-10-26 18:02:41.628000','user04'),(136,'내용 : 135','2020-10-26 18:02:41.703000','제목 : 135','2020-10-26 18:02:41.703000','user05'),(137,'내용 : 136','2020-10-26 18:02:41.754000','제목 : 136','2020-10-26 18:02:41.754000','user06'),(138,'내용 : 137','2020-10-26 18:02:41.803000','제목 : 137','2020-10-26 18:02:41.803000','user07'),(139,'내용 : 138','2020-10-26 18:02:41.870000','제목 : 138','2020-10-26 18:02:41.870000','user08'),(140,'내용 : 139','2020-10-26 18:02:41.928000','제목 : 139','2020-10-26 18:02:41.928000','user09'),(141,'내용 : 140','2020-10-26 18:02:41.978000','제목 : 140','2020-10-26 18:02:41.978000','user00'),(142,'내용 : 141','2020-10-26 18:02:42.029000','제목 : 141','2020-10-26 18:02:42.029000','user01'),(143,'내용 : 142','2020-10-26 18:02:42.094000','제목 : 142','2020-10-26 18:02:42.094000','user02'),(144,'내용 : 143','2020-10-26 18:02:42.144000','제목 : 143','2020-10-26 18:02:42.144000','user03'),(145,'내용 : 144','2020-10-26 18:02:42.212000','제목 : 144','2020-10-26 18:02:42.212000','user04'),(146,'내용 : 145','2020-10-26 18:02:42.261000','제목 : 145','2020-10-26 18:02:42.261000','user05'),(147,'내용 : 146','2020-10-26 18:02:42.320000','제목 : 146','2020-10-26 18:02:42.320000','user06'),(148,'내용 : 147','2020-10-26 18:02:42.370000','제목 : 147','2020-10-26 18:02:42.370000','user07'),(149,'내용 : 148','2020-10-26 18:02:42.421000','제목 : 148','2020-10-26 18:02:42.421000','user08'),(150,'내용 : 149','2020-10-26 18:02:42.470000','제목 : 149','2020-10-26 18:02:42.470000','user09'),(151,'내용 : 150','2020-10-26 18:02:42.519000','제목 : 150','2020-10-26 18:02:42.519000','user00'),(152,'내용 : 151','2020-10-26 18:02:42.587000','제목 : 151','2020-10-26 18:02:42.587000','user01'),(153,'내용 : 152','2020-10-26 18:02:42.636000','제목 : 152','2020-10-26 18:02:42.636000','user02'),(154,'내용 : 153','2020-10-26 18:02:42.687000','제목 : 153','2020-10-26 18:02:42.687000','user03'),(155,'내용 : 154','2020-10-26 18:02:42.753000','제목 : 154','2020-10-26 18:02:42.753000','user04'),(156,'내용 : 155','2020-10-26 18:02:42.803000','제목 : 155','2020-10-26 18:02:42.803000','user05'),(157,'내용 : 156','2020-10-26 18:02:42.920000','제목 : 156','2020-10-26 18:02:42.920000','user06'),(158,'내용 : 157','2020-10-26 18:02:42.977000','제목 : 157','2020-10-26 18:02:42.977000','user07'),(159,'내용 : 158','2020-10-26 18:02:43.026000','제목 : 158','2020-10-26 18:02:43.026000','user08'),(160,'내용 : 159','2020-10-26 18:02:43.118000','제목 : 159','2020-10-26 18:02:43.118000','user09'),(161,'내용 : 160','2020-10-26 18:02:43.168000','제목 : 160','2020-10-26 18:02:43.168000','user00'),(162,'내용 : 161','2020-10-26 18:02:43.218000','제목 : 161','2020-10-26 18:02:43.218000','user01'),(163,'내용 : 162','2020-10-26 18:02:43.318000','제목 : 162','2020-10-26 18:02:43.318000','user02'),(164,'내용 : 163','2020-10-26 18:02:43.410000','제목 : 163','2020-10-26 18:02:43.410000','user03'),(165,'내용 : 164','2020-10-26 18:02:43.451000','제목 : 164','2020-10-26 18:02:43.451000','user04'),(166,'내용 : 165','2020-10-26 18:02:43.553000','제목 : 165','2020-10-26 18:02:43.553000','user05'),(167,'내용 : 166','2020-10-26 18:02:43.618000','제목 : 166','2020-10-26 18:02:43.618000','user06'),(168,'내용 : 167','2020-10-26 18:02:43.726000','제목 : 167','2020-10-26 18:02:43.726000','user07'),(169,'내용 : 168','2020-10-26 18:02:43.777000','제목 : 168','2020-10-26 18:02:43.777000','user08'),(170,'내용 : 169','2020-10-26 18:02:43.851000','제목 : 169','2020-10-26 18:02:43.851000','user09'),(171,'내용 : 170','2020-10-26 18:02:43.943000','제목 : 170','2020-10-26 18:02:43.943000','user00'),(172,'내용 : 171','2020-10-26 18:02:44.070000','제목 : 171','2020-10-26 18:02:44.070000','user01'),(173,'내용 : 172','2020-10-26 18:02:44.200000','제목 : 172','2020-10-26 18:02:44.200000','user02'),(174,'내용 : 173','2020-10-26 18:02:44.319000','제목 : 173','2020-10-26 18:02:44.319000','user03'),(175,'내용 : 174','2020-10-26 18:02:44.402000','제목 : 174','2020-10-26 18:02:44.402000','user04'),(176,'내용 : 175','2020-10-26 18:02:44.579000','제목 : 175','2020-10-26 18:02:44.579000','user05'),(177,'내용 : 176','2020-10-26 18:02:44.662000','제목 : 176','2020-10-26 18:02:44.662000','user06'),(178,'내용 : 177','2020-10-26 18:02:44.729000','제목 : 177','2020-10-26 18:02:44.729000','user07'),(179,'내용 : 178','2020-10-26 18:02:44.812000','제목 : 178','2020-10-26 18:02:44.812000','user08'),(180,'내용 : 179','2020-10-26 18:02:44.879000','제목 : 179','2020-10-26 18:02:44.879000','user09'),(181,'내용 : 180','2020-10-26 18:02:44.962000','제목 : 180','2020-10-26 18:02:44.962000','user00'),(182,'내용 : 181','2020-10-26 18:02:45.037000','제목 : 181','2020-10-26 18:02:45.037000','user01'),(183,'내용 : 182','2020-10-26 18:02:45.129000','제목 : 182','2020-10-26 18:02:45.129000','user02'),(184,'내용 : 183','2020-10-26 18:02:45.221000','제목 : 183','2020-10-26 18:02:45.221000','user03'),(185,'내용 : 184','2020-10-26 18:02:45.372000','제목 : 184','2020-10-26 18:02:45.372000','user04'),(186,'내용 : 185','2020-10-26 18:02:45.435000','제목 : 185','2020-10-26 18:02:45.435000','user05'),(187,'내용 : 186','2020-10-26 18:02:45.477000','제목 : 186','2020-10-26 18:02:45.477000','user06'),(188,'내용 : 187','2020-10-26 18:02:45.527000','제목 : 187','2020-10-26 18:02:45.527000','user07'),(189,'내용 : 188','2020-10-26 18:02:45.577000','제목 : 188','2020-10-26 18:02:45.577000','user08'),(190,'내용 : 189','2020-10-26 18:02:45.628000','제목 : 189','2020-10-26 18:02:45.628000','user09'),(191,'내용 : 190','2020-10-26 18:02:45.678000','제목 : 190','2020-10-26 18:02:45.678000','user00'),(192,'내용 : 191','2020-10-26 18:02:45.735000','제목 : 191','2020-10-26 18:02:45.735000','user01'),(193,'내용 : 192','2020-10-26 18:02:45.810000','제목 : 192','2020-10-26 18:02:45.810000','user02'),(194,'내용 : 193','2020-10-26 18:02:45.878000','제목 : 193','2020-10-26 18:02:45.878000','user03'),(195,'내용 : 194','2020-10-26 18:02:45.969000','제목 : 194','2020-10-26 18:02:45.969000','user04'),(196,'내용 : 195','2020-10-26 18:02:46.019000','제목 : 195','2020-10-26 18:02:46.019000','user05'),(197,'내용 : 196','2020-10-26 18:02:46.111000','제목 : 196','2020-10-26 18:02:46.111000','user06'),(198,'내용 : 197','2020-10-26 18:02:46.160000','제목 : 197','2020-10-26 18:02:46.160000','user07'),(199,'내용 : 198','2020-10-26 18:02:46.278000','제목 : 198','2020-10-26 18:02:46.278000','user08'),(200,'내용 : 199','2020-10-26 18:02:46.327000','제목 : 199','2020-10-26 18:02:46.327000','user09'),(201,'내용 : 200','2020-10-26 18:02:46.436000','제목 : 200','2020-10-26 18:02:46.436000','user00'),(202,'내용 : 1','2020-10-26 18:05:31.755000','제목 : 1','2020-10-26 18:05:31.755000','user01'),(203,'내용 : 2','2020-10-26 18:05:31.805000','제목 : 2','2020-10-26 18:05:31.805000','user02'),(204,'내용 : 3','2020-10-26 18:05:31.855000','제목 : 3','2020-10-26 18:05:31.855000','user03'),(205,'내용 : 4','2020-10-26 18:05:31.905000','제목 : 4','2020-10-26 18:05:31.905000','user04'),(206,'내용 : 5','2020-10-26 18:05:31.956000','제목 : 5','2020-10-26 18:05:31.956000','user05'),(207,'내용 : 6','2020-10-26 18:05:32.031000','제목 : 6','2020-10-26 18:05:32.031000','user06'),(208,'내용 : 7','2020-10-26 18:05:32.098000','제목 : 7','2020-10-26 18:05:32.098000','user07'),(209,'내용 : 8','2020-10-26 18:05:32.156000','제목 : 8','2020-10-26 18:05:32.156000','user08'),(210,'내용 : 9','2020-10-26 18:05:32.222000','제목 : 9','2020-10-26 18:05:32.222000','user09'),(211,'내용 : 10','2020-10-26 18:05:32.272000','제목 : 10','2020-10-26 18:05:32.272000','user00'),(212,'내용 : 11','2020-10-26 18:05:32.331000','제목 : 11','2020-10-26 18:05:32.331000','user01'),(213,'내용 : 12','2020-10-26 18:05:32.415000','제목 : 12','2020-10-26 18:05:32.415000','user02'),(214,'내용 : 13','2020-10-26 18:05:32.464000','제목 : 13','2020-10-26 18:05:32.464000','user03'),(215,'내용 : 14','2020-10-26 18:05:32.514000','제목 : 14','2020-10-26 18:05:32.515000','user04'),(216,'내용 : 15','2020-10-26 18:05:32.556000','제목 : 15','2020-10-26 18:05:32.556000','user05'),(217,'내용 : 16','2020-10-26 18:05:32.623000','제목 : 16','2020-10-26 18:05:32.623000','user06'),(218,'내용 : 17','2020-10-26 18:05:32.673000','제목 : 17','2020-10-26 18:05:32.673000','user07'),(219,'내용 : 18','2020-10-26 18:05:32.723000','제목 : 18','2020-10-26 18:05:32.723000','user08'),(220,'내용 : 19','2020-10-26 18:05:32.789000','제목 : 19','2020-10-26 18:05:32.789000','user09'),(221,'내용 : 20','2020-10-26 18:05:32.839000','제목 : 20','2020-10-26 18:05:32.839000','user00'),(222,'내용 : 21','2020-10-26 18:05:32.889000','제목 : 21','2020-10-26 18:05:32.889000','user01'),(223,'내용 : 22','2020-10-26 18:05:32.940000','제목 : 22','2020-10-26 18:05:32.940000','user02'),(224,'내용 : 23','2020-10-26 18:05:32.989000','제목 : 23','2020-10-26 18:05:32.989000','user03'),(225,'내용 : 24','2020-10-26 18:05:33.039000','제목 : 24','2020-10-26 18:05:33.039000','user04'),(226,'내용 : 25','2020-10-26 18:05:33.156000','제목 : 25','2020-10-26 18:05:33.156000','user05'),(227,'내용 : 26','2020-10-26 18:05:33.223000','제목 : 26','2020-10-26 18:05:33.223000','user06'),(228,'내용 : 27','2020-10-26 18:05:33.298000','제목 : 27','2020-10-26 18:05:33.298000','user07'),(229,'내용 : 28','2020-10-26 18:05:33.349000','제목 : 28','2020-10-26 18:05:33.349000','user08'),(230,'내용 : 29','2020-10-26 18:05:33.398000','제목 : 29','2020-10-26 18:05:33.398000','user09'),(231,'내용 : 30','2020-10-26 18:05:33.515000','제목 : 30','2020-10-26 18:05:33.515000','user00'),(232,'내용 : 31','2020-10-26 18:05:33.564000','제목 : 31','2020-10-26 18:05:33.564000','user01'),(233,'내용 : 32','2020-10-26 18:05:33.624000','제목 : 32','2020-10-26 18:05:33.624000','user02'),(234,'내용 : 33','2020-10-26 18:05:33.682000','제목 : 33','2020-10-26 18:05:33.682000','user03'),(235,'내용 : 34','2020-10-26 18:05:33.732000','제목 : 34','2020-10-26 18:05:33.732000','user04'),(236,'내용 : 35','2020-10-26 18:05:33.790000','제목 : 35','2020-10-26 18:05:33.790000','user05'),(237,'내용 : 36','2020-10-26 18:05:33.840000','제목 : 36','2020-10-26 18:05:33.840000','user06'),(238,'내용 : 37','2020-10-26 18:05:33.890000','제목 : 37','2020-10-26 18:05:33.890000','user07'),(239,'내용 : 38','2020-10-26 18:05:33.941000','제목 : 38','2020-10-26 18:05:33.941000','user08'),(240,'내용 : 39','2020-10-26 18:05:33.992000','제목 : 39','2020-10-26 18:05:33.992000','user09'),(241,'내용 : 40','2020-10-26 18:05:34.058000','제목 : 40','2020-10-26 18:05:34.058000','user00'),(242,'내용 : 41','2020-10-26 18:05:34.125000','제목 : 41','2020-10-26 18:05:34.125000','user01'),(243,'내용 : 42','2020-10-26 18:05:34.182000','제목 : 42','2020-10-26 18:05:34.182000','user02'),(244,'내용 : 43','2020-10-26 18:05:34.234000','제목 : 43','2020-10-26 18:05:34.234000','user03'),(245,'내용 : 44','2020-10-26 18:05:34.298000','제목 : 44','2020-10-26 18:05:34.298000','user04'),(246,'내용 : 45','2020-10-26 18:05:34.357000','제목 : 45','2020-10-26 18:05:34.357000','user05'),(247,'내용 : 46','2020-10-26 18:05:34.423000','제목 : 46','2020-10-26 18:05:34.423000','user06'),(248,'내용 : 47','2020-10-26 18:05:34.473000','제목 : 47','2020-10-26 18:05:34.473000','user07'),(249,'내용 : 48','2020-10-26 18:05:34.524000','제목 : 48','2020-10-26 18:05:34.524000','user08'),(250,'내용 : 49','2020-10-26 18:05:34.648000','제목 : 49','2020-10-26 18:05:34.648000','user09'),(251,'내용 : 50','2020-10-26 18:05:34.707000','제목 : 50','2020-10-26 18:05:34.707000','user00'),(252,'내용 : 51','2020-10-26 18:05:34.775000','제목 : 51','2020-10-26 18:05:34.775000','user01'),(253,'내용 : 52','2020-10-26 18:05:34.849000','제목 : 52','2020-10-26 18:05:34.849000','user02'),(254,'내용 : 53','2020-10-26 18:05:34.907000','제목 : 53','2020-10-26 18:05:34.907000','user03'),(255,'내용 : 54','2020-10-26 18:05:34.957000','제목 : 54','2020-10-26 18:05:34.957000','user04'),(256,'내용 : 55','2020-10-26 18:05:35.007000','제목 : 55','2020-10-26 18:05:35.007000','user05'),(257,'내용 : 56','2020-10-26 18:05:35.056000','제목 : 56','2020-10-26 18:05:35.056000','user06'),(258,'내용 : 57','2020-10-26 18:05:35.123000','제목 : 57','2020-10-26 18:05:35.123000','user07'),(259,'내용 : 58','2020-10-26 18:05:35.173000','제목 : 58','2020-10-26 18:05:35.173000','user08'),(260,'내용 : 59','2020-10-26 18:05:35.298000','제목 : 59','2020-10-26 18:05:35.298000','user09'),(261,'내용 : 60','2020-10-26 18:05:35.366000','제목 : 60','2020-10-26 18:05:35.366000','user00'),(262,'내용 : 61','2020-10-26 18:05:35.502000','제목 : 61','2020-10-26 18:05:35.502000','user01'),(263,'내용 : 62','2020-10-26 18:05:35.568000','제목 : 62','2020-10-26 18:05:35.568000','user02'),(264,'내용 : 63','2020-10-26 18:05:35.626000','제목 : 63','2020-10-26 18:05:35.626000','user03'),(265,'내용 : 64','2020-10-26 18:05:35.752000','제목 : 64','2020-10-26 18:05:35.752000','user04'),(266,'내용 : 65','2020-10-26 18:05:35.826000','제목 : 65','2020-10-26 18:05:35.826000','user05'),(267,'내용 : 66','2020-10-26 18:05:35.909000','제목 : 66','2020-10-26 18:05:35.909000','user06'),(268,'내용 : 67','2020-10-26 18:05:35.959000','제목 : 67','2020-10-26 18:05:35.959000','user07'),(269,'내용 : 68','2020-10-26 18:05:36.018000','제목 : 68','2020-10-26 18:05:36.018000','user08'),(270,'내용 : 69','2020-10-26 18:05:36.068000','제목 : 69','2020-10-26 18:05:36.068000','user09'),(271,'내용 : 70','2020-10-26 18:05:36.126000','제목 : 70','2020-10-26 18:05:36.126000','user00'),(272,'내용 : 71','2020-10-26 18:05:36.184000','제목 : 71','2020-10-26 18:05:36.184000','user01'),(273,'내용 : 72','2020-10-26 18:05:36.260000','제목 : 72','2020-10-26 18:05:36.260000','user02'),(274,'내용 : 73','2020-10-26 18:05:36.318000','제목 : 73','2020-10-26 18:05:36.318000','user03'),(275,'내용 : 74','2020-10-26 18:05:36.375000','제목 : 74','2020-10-26 18:05:36.375000','user04'),(276,'내용 : 75','2020-10-26 18:05:36.434000','제목 : 75','2020-10-26 18:05:36.434000','user05'),(277,'내용 : 76','2020-10-26 18:05:36.476000','제목 : 76','2020-10-26 18:05:36.476000','user06'),(278,'내용 : 77','2020-10-26 18:05:36.534000','제목 : 77','2020-10-26 18:05:36.534000','user07'),(279,'내용 : 78','2020-10-26 18:05:36.617000','제목 : 78','2020-10-26 18:05:36.617000','user08'),(280,'내용 : 79','2020-10-26 18:05:36.677000','제목 : 79','2020-10-26 18:05:36.677000','user09'),(281,'내용 : 80','2020-10-26 18:05:36.726000','제목 : 80','2020-10-26 18:05:36.726000','user00'),(282,'내용 : 81','2020-10-26 18:05:36.777000','제목 : 81','2020-10-26 18:05:36.777000','user01'),(283,'내용 : 82','2020-10-26 18:05:36.844000','제목 : 82','2020-10-26 18:05:36.844000','user02'),(284,'내용 : 83','2020-10-26 18:05:36.893000','제목 : 83','2020-10-26 18:05:36.893000','user03'),(285,'내용 : 84','2020-10-26 18:05:36.943000','제목 : 84','2020-10-26 18:05:36.943000','user04'),(286,'내용 : 85','2020-10-26 18:05:36.993000','제목 : 85','2020-10-26 18:05:36.993000','user05'),(287,'내용 : 86','2020-10-26 18:05:37.043000','제목 : 86','2020-10-26 18:05:37.043000','user06'),(288,'내용 : 87','2020-10-26 18:05:37.093000','제목 : 87','2020-10-26 18:05:37.093000','user07'),(289,'내용 : 88','2020-10-26 18:05:37.152000','제목 : 88','2020-10-26 18:05:37.152000','user08'),(290,'내용 : 89','2020-10-26 18:05:37.209000','제목 : 89','2020-10-26 18:05:37.209000','user09'),(291,'내용 : 90','2020-10-26 18:05:37.261000','제목 : 90','2020-10-26 18:05:37.261000','user00'),(292,'내용 : 91','2020-10-26 18:05:37.311000','제목 : 91','2020-10-26 18:05:37.311000','user01'),(293,'내용 : 92','2020-10-26 18:05:37.377000','제목 : 92','2020-10-26 18:05:37.377000','user02'),(294,'내용 : 93','2020-10-26 18:05:37.426000','제목 : 93','2020-10-26 18:05:37.426000','user03'),(295,'내용 : 94','2020-10-26 18:05:37.477000','제목 : 94','2020-10-26 18:05:37.477000','user04'),(296,'내용 : 95','2020-10-26 18:05:37.544000','제목 : 95','2020-10-26 18:05:37.544000','user05'),(297,'내용 : 96','2020-10-26 18:05:37.601000','제목 : 96','2020-10-26 18:05:37.601000','user06'),(298,'내용 : 97','2020-10-26 18:05:37.643000','제목 : 97','2020-10-26 18:05:37.643000','user07'),(299,'내용 : 98','2020-10-26 18:05:37.760000','제목 : 98','2020-10-26 18:05:37.760000','user08'),(300,'내용 : 99','2020-10-26 18:05:37.811000','제목 : 99','2020-10-26 18:05:37.811000','user09'),(301,'내용 : 100','2020-10-26 18:05:37.893000','제목 : 100','2020-10-26 18:05:37.893000','user00'),(302,'내용 : 101','2020-10-26 18:05:37.943000','제목 : 101','2020-10-26 18:05:37.943000','user01'),(303,'내용 : 102','2020-10-26 18:05:38.043000','제목 : 102','2020-10-26 18:05:38.043000','user02'),(304,'내용 : 103','2020-10-26 18:05:38.102000','제목 : 103','2020-10-26 18:05:38.102000','user03'),(305,'내용 : 104','2020-10-26 18:05:38.153000','제목 : 104','2020-10-26 18:05:38.153000','user04'),(306,'내용 : 105','2020-10-26 18:05:38.202000','제목 : 105','2020-10-26 18:05:38.202000','user05'),(307,'내용 : 106','2020-10-26 18:05:38.302000','제목 : 106','2020-10-26 18:05:38.302000','user06'),(308,'내용 : 107','2020-10-26 18:05:38.360000','제목 : 107','2020-10-26 18:05:38.360000','user07'),(309,'내용 : 108','2020-10-26 18:05:38.419000','제목 : 108','2020-10-26 18:05:38.419000','user08'),(310,'내용 : 109','2020-10-26 18:05:38.502000','제목 : 109','2020-10-26 18:05:38.502000','user09'),(311,'내용 : 110','2020-10-26 18:05:38.569000','제목 : 110','2020-10-26 18:05:38.569000','user00'),(312,'내용 : 111','2020-10-26 18:05:38.685000','제목 : 111','2020-10-26 18:05:38.685000','user01'),(313,'내용 : 112','2020-10-26 18:05:38.735000','제목 : 112','2020-10-26 18:05:38.735000','user02'),(314,'내용 : 113','2020-10-26 18:05:38.785000','제목 : 113','2020-10-26 18:05:38.785000','user03'),(315,'내용 : 114','2020-10-26 18:05:38.844000','제목 : 114','2020-10-26 18:05:38.844000','user04'),(316,'내용 : 115','2020-10-26 18:05:38.902000','제목 : 115','2020-10-26 18:05:38.902000','user05'),(317,'내용 : 116','2020-10-26 18:05:38.960000','제목 : 116','2020-10-26 18:05:38.960000','user06'),(318,'내용 : 117','2020-10-26 18:05:39.036000','제목 : 117','2020-10-26 18:05:39.036000','user07'),(319,'내용 : 118','2020-10-26 18:05:39.095000','제목 : 118','2020-10-26 18:05:39.095000','user08'),(320,'내용 : 119','2020-10-26 18:05:39.153000','제목 : 119','2020-10-26 18:05:39.153000','user09'),(321,'내용 : 120','2020-10-26 18:05:39.235000','제목 : 120','2020-10-26 18:05:39.235000','user00'),(322,'내용 : 121','2020-10-26 18:05:39.285000','제목 : 121','2020-10-26 18:05:39.285000','user01'),(323,'내용 : 122','2020-10-26 18:05:39.345000','제목 : 122','2020-10-26 18:05:39.345000','user02'),(324,'내용 : 123','2020-10-26 18:05:39.411000','제목 : 123','2020-10-26 18:05:39.411000','user03'),(325,'내용 : 124','2020-10-26 18:05:39.461000','제목 : 124','2020-10-26 18:05:39.461000','user04'),(326,'내용 : 125','2020-10-26 18:05:39.570000','제목 : 125','2020-10-26 18:05:39.570000','user05'),(327,'내용 : 126','2020-10-26 18:05:39.627000','제목 : 126','2020-10-26 18:05:39.627000','user06'),(328,'내용 : 127','2020-10-26 18:05:39.744000','제목 : 127','2020-10-26 18:05:39.744000','user07'),(329,'내용 : 128','2020-10-26 18:05:39.795000','제목 : 128','2020-10-26 18:05:39.795000','user08'),(330,'내용 : 129','2020-10-26 18:05:39.853000','제목 : 129','2020-10-26 18:05:39.853000','user09'),(331,'내용 : 130','2020-10-26 18:05:39.911000','제목 : 130','2020-10-26 18:05:39.911000','user00'),(332,'내용 : 131','2020-10-26 18:05:39.961000','제목 : 131','2020-10-26 18:05:39.961000','user01'),(333,'내용 : 132','2020-10-26 18:05:40.086000','제목 : 132','2020-10-26 18:05:40.086000','user02'),(334,'내용 : 133','2020-10-26 18:05:40.136000','제목 : 133','2020-10-26 18:05:40.136000','user03'),(335,'내용 : 134','2020-10-26 18:05:40.194000','제목 : 134','2020-10-26 18:05:40.194000','user04'),(336,'내용 : 135','2020-10-26 18:05:40.252000','제목 : 135','2020-10-26 18:05:40.252000','user05'),(337,'내용 : 136','2020-10-26 18:05:40.303000','제목 : 136','2020-10-26 18:05:40.303000','user06'),(338,'내용 : 137','2020-10-26 18:05:40.353000','제목 : 137','2020-10-26 18:05:40.353000','user07'),(339,'내용 : 138','2020-10-26 18:05:40.411000','제목 : 138','2020-10-26 18:05:40.411000','user08'),(340,'내용 : 139','2020-10-26 18:05:40.477000','제목 : 139','2020-10-26 18:05:40.477000','user09'),(341,'내용 : 140','2020-10-26 18:05:40.518000','제목 : 140','2020-10-26 18:05:40.518000','user00'),(342,'내용 : 141','2020-10-26 18:05:40.569000','제목 : 141','2020-10-26 18:05:40.569000','user01'),(343,'내용 : 142','2020-10-26 18:05:40.619000','제목 : 142','2020-10-26 18:05:40.619000','user02'),(344,'내용 : 143','2020-10-26 18:05:40.669000','제목 : 143','2020-10-26 18:05:40.669000','user03'),(345,'내용 : 144','2020-10-26 18:05:40.745000','제목 : 144','2020-10-26 18:05:40.745000','user04'),(346,'내용 : 145','2020-10-26 18:05:40.802000','제목 : 145','2020-10-26 18:05:40.802000','user05'),(347,'내용 : 146','2020-10-26 18:05:40.861000','제목 : 146','2020-10-26 18:05:40.861000','user06'),(348,'내용 : 147','2020-10-26 18:05:40.919000','제목 : 147','2020-10-26 18:05:40.919000','user07'),(349,'내용 : 148','2020-10-26 18:05:40.986000','제목 : 148','2020-10-26 18:05:40.986000','user08'),(350,'내용 : 149','2020-10-26 18:05:41.045000','제목 : 149','2020-10-26 18:05:41.045000','user09'),(351,'내용 : 150','2020-10-26 18:05:41.145000','제목 : 150','2020-10-26 18:05:41.145000','user00'),(352,'내용 : 151','2020-10-26 18:05:41.203000','제목 : 151','2020-10-26 18:05:41.203000','user01'),(353,'내용 : 152','2020-10-26 18:05:41.261000','제목 : 152','2020-10-26 18:05:41.261000','user02'),(354,'내용 : 153','2020-10-26 18:05:41.320000','제목 : 153','2020-10-26 18:05:41.320000','user03'),(355,'내용 : 154','2020-10-26 18:05:41.378000','제목 : 154','2020-10-26 18:05:41.378000','user04'),(356,'내용 : 155','2020-10-26 18:05:41.436000','제목 : 155','2020-10-26 18:05:41.436000','user05'),(357,'내용 : 156','2020-10-26 18:05:41.487000','제목 : 156','2020-10-26 18:05:41.487000','user06'),(358,'내용 : 157','2020-10-26 18:05:41.545000','제목 : 157','2020-10-26 18:05:41.545000','user07'),(359,'내용 : 158','2020-10-26 18:05:41.603000','제목 : 158','2020-10-26 18:05:41.603000','user08'),(360,'내용 : 159','2020-10-26 18:05:41.661000','제목 : 159','2020-10-26 18:05:41.661000','user09'),(361,'내용 : 160','2020-10-26 18:05:41.720000','제목 : 160','2020-10-26 18:05:41.720000','user00'),(362,'내용 : 161','2020-10-26 18:05:41.769000','제목 : 161','2020-10-26 18:05:41.769000','user01'),(363,'내용 : 162','2020-10-26 18:05:41.820000','제목 : 162','2020-10-26 18:05:41.820000','user02'),(364,'내용 : 163','2020-10-26 18:05:41.870000','제목 : 163','2020-10-26 18:05:41.870000','user03'),(365,'내용 : 164','2020-10-26 18:05:41.928000','제목 : 164','2020-10-26 18:05:41.928000','user04'),(366,'내용 : 165','2020-10-26 18:05:42.052000','제목 : 165','2020-10-26 18:05:42.052000','user05'),(367,'내용 : 166','2020-10-26 18:05:42.120000','제목 : 166','2020-10-26 18:05:42.120000','user06'),(368,'내용 : 167','2020-10-26 18:05:42.178000','제목 : 167','2020-10-26 18:05:42.178000','user07'),(369,'내용 : 168','2020-10-26 18:05:42.228000','제목 : 168','2020-10-26 18:05:42.228000','user08'),(370,'내용 : 169','2020-10-26 18:05:42.295000','제목 : 169','2020-10-26 18:05:42.295000','user09'),(371,'내용 : 170','2020-10-26 18:05:42.353000','제목 : 170','2020-10-26 18:05:42.353000','user00'),(372,'내용 : 171','2020-10-26 18:05:42.411000','제목 : 171','2020-10-26 18:05:42.411000','user01'),(373,'내용 : 172','2020-10-26 18:05:42.461000','제목 : 172','2020-10-26 18:05:42.461000','user02'),(374,'내용 : 173','2020-10-26 18:05:42.520000','제목 : 173','2020-10-26 18:05:42.520000','user03'),(375,'내용 : 174','2020-10-26 18:05:42.665000','제목 : 174','2020-10-26 18:05:42.665000','user04'),(376,'내용 : 175','2020-10-26 18:05:42.778000','제목 : 175','2020-10-26 18:05:42.778000','user05'),(377,'내용 : 176','2020-10-26 18:05:42.845000','제목 : 176','2020-10-26 18:05:42.845000','user06'),(378,'내용 : 177','2020-10-26 18:05:42.969000','제목 : 177','2020-10-26 18:05:42.969000','user07'),(379,'내용 : 178','2020-10-26 18:05:43.028000','제목 : 178','2020-10-26 18:05:43.028000','user08'),(380,'내용 : 179','2020-10-26 18:05:43.087000','제목 : 179','2020-10-26 18:05:43.087000','user09'),(381,'내용 : 180','2020-10-26 18:05:43.145000','제목 : 180','2020-10-26 18:05:43.145000','user00'),(382,'내용 : 181','2020-10-26 18:05:43.204000','제목 : 181','2020-10-26 18:05:43.204000','user01'),(383,'내용 : 182','2020-10-26 18:05:43.262000','제목 : 182','2020-10-26 18:05:43.262000','user02'),(384,'내용 : 183','2020-10-26 18:05:43.321000','제목 : 183','2020-10-26 18:05:43.321000','user03'),(385,'내용 : 184','2020-10-26 18:05:43.362000','제목 : 184','2020-10-26 18:05:43.362000','user04'),(386,'내용 : 185','2020-10-26 18:05:43.421000','제목 : 185','2020-10-26 18:05:43.421000','user05'),(387,'내용 : 186','2020-10-26 18:05:43.471000','제목 : 186','2020-10-26 18:05:43.471000','user06'),(388,'내용 : 187','2020-10-26 18:05:43.521000','제목 : 187','2020-10-26 18:05:43.521000','user07'),(389,'내용 : 188','2020-10-26 18:05:43.572000','제목 : 188','2020-10-26 18:05:43.572000','user08'),(390,'내용 : 189','2020-10-26 18:05:43.645000','제목 : 189','2020-10-26 18:05:43.645000','user09'),(391,'내용 : 190','2020-10-26 18:05:43.771000','제목 : 190','2020-10-26 18:05:43.771000','user00'),(392,'내용 : 191','2020-10-26 18:05:43.829000','제목 : 191','2020-10-26 18:05:43.829000','user01'),(393,'내용 : 192','2020-10-26 18:05:43.949000','제목 : 192','2020-10-26 18:05:43.949000','user02'),(394,'내용 : 193','2020-10-26 18:05:44.037000','제목 : 193','2020-10-26 18:05:44.037000','user03'),(395,'내용 : 194','2020-10-26 18:05:44.105000','제목 : 194','2020-10-26 18:05:44.105000','user04'),(396,'내용 : 195','2020-10-26 18:05:44.170000','제목 : 195','2020-10-26 18:05:44.170000','user05'),(397,'내용 : 196','2020-10-26 18:05:44.229000','제목 : 196','2020-10-26 18:05:44.229000','user06'),(398,'내용 : 197','2020-10-26 18:05:44.288000','제목 : 197','2020-10-26 18:05:44.288000','user07'),(399,'내용 : 198','2020-10-26 18:05:44.346000','제목 : 198','2020-10-26 18:05:44.346000','user08'),(400,'내용 : 199','2020-10-26 18:05:44.471000','제목 : 199','2020-10-26 18:05:44.471000','user09'),(401,'내용 : 200','2020-10-26 18:05:44.529000','제목 : 200','2020-10-26 18:05:44.529000','user00'),(402,'내용 : 1','2020-10-27 11:10:20.384000','제목 : 1','2020-10-27 11:10:20.384000','user01'),(403,'내용 : 2','2020-10-27 11:10:20.460000','제목 : 2','2020-10-27 11:10:20.460000','user02'),(404,'내용 : 3','2020-10-27 11:10:20.517000','제목 : 3','2020-10-27 11:10:20.517000','user03'),(405,'내용 : 4','2020-10-27 11:10:20.576000','제목 : 4','2020-10-27 11:10:20.576000','user04'),(406,'내용 : 5','2020-10-27 11:10:20.636000','제목 : 5','2020-10-27 11:10:20.636000','user05'),(407,'내용 : 6','2020-10-27 11:10:20.710000','제목 : 6','2020-10-27 11:10:20.710000','user06'),(408,'내용 : 7','2020-10-27 11:10:20.767000','제목 : 7','2020-10-27 11:10:20.767000','user07'),(409,'내용 : 8','2020-10-27 11:10:20.827000','제목 : 8','2020-10-27 11:10:20.827000','user08'),(410,'내용 : 9','2020-10-27 11:10:20.884000','제목 : 9','2020-10-27 11:10:20.884000','user09'),(411,'내용 : 10','2020-10-27 11:10:20.943000','제목 : 10','2020-10-27 11:10:20.943000','user00'),(412,'내용 : 11','2020-10-27 11:10:21.002000','제목 : 11','2020-10-27 11:10:21.002000','user01'),(413,'내용 : 12','2020-10-27 11:10:21.059000','제목 : 12','2020-10-27 11:10:21.059000','user02'),(414,'내용 : 13','2020-10-27 11:10:21.118000','제목 : 13','2020-10-27 11:10:21.118000','user03'),(415,'내용 : 14','2020-10-27 11:10:21.177000','제목 : 14','2020-10-27 11:10:21.177000','user04'),(416,'내용 : 15','2020-10-27 11:10:21.244000','제목 : 15','2020-10-27 11:10:21.244000','user05'),(417,'내용 : 16','2020-10-27 11:10:21.310000','제목 : 16','2020-10-27 11:10:21.310000','user06'),(418,'내용 : 17','2020-10-27 11:10:21.369000','제목 : 17','2020-10-27 11:10:21.369000','user07'),(419,'내용 : 18','2020-10-27 11:10:21.435000','제목 : 18','2020-10-27 11:10:21.436000','user08'),(420,'내용 : 19','2020-10-27 11:10:21.503000','제목 : 19','2020-10-27 11:10:21.503000','user09'),(421,'내용 : 20','2020-10-27 11:10:21.559000','제목 : 20','2020-10-27 11:10:21.559000','user00'),(422,'내용 : 21','2020-10-27 11:10:21.610000','제목 : 21','2020-10-27 11:10:21.610000','user01'),(423,'내용 : 22','2020-10-27 11:10:21.677000','제목 : 22','2020-10-27 11:10:21.677000','user02'),(424,'내용 : 23','2020-10-27 11:10:21.744000','제목 : 23','2020-10-27 11:10:21.744000','user03'),(425,'내용 : 24','2020-10-27 11:10:21.818000','제목 : 24','2020-10-27 11:10:21.818000','user04'),(426,'내용 : 25','2020-10-27 11:10:21.885000','제목 : 25','2020-10-27 11:10:21.885000','user05'),(427,'내용 : 26','2020-10-27 11:10:21.944000','제목 : 26','2020-10-27 11:10:21.944000','user06'),(428,'내용 : 27','2020-10-27 11:10:22.026000','제목 : 27','2020-10-27 11:10:22.026000','user07'),(429,'내용 : 28','2020-10-27 11:10:22.177000','제목 : 28','2020-10-27 11:10:22.177000','user08'),(430,'내용 : 29','2020-10-27 11:10:22.235000','제목 : 29','2020-10-27 11:10:22.235000','user09'),(431,'내용 : 30','2020-10-27 11:10:22.293000','제목 : 30','2020-10-27 11:10:22.293000','user00'),(432,'내용 : 31','2020-10-27 11:10:22.386000','제목 : 31','2020-10-27 11:10:22.386000','user01'),(433,'내용 : 32','2020-10-27 11:10:22.443000','제목 : 32','2020-10-27 11:10:22.443000','user02'),(434,'내용 : 33','2020-10-27 11:10:22.535000','제목 : 33','2020-10-27 11:10:22.535000','user03'),(435,'내용 : 34','2020-10-27 11:10:22.594000','제목 : 34','2020-10-27 11:10:22.594000','user04'),(436,'내용 : 35','2020-10-27 11:10:22.652000','제목 : 35','2020-10-27 11:10:22.652000','user05'),(437,'내용 : 36','2020-10-27 11:10:22.718000','제목 : 36','2020-10-27 11:10:22.718000','user06'),(438,'내용 : 37','2020-10-27 11:10:22.777000','제목 : 37','2020-10-27 11:10:22.777000','user07'),(439,'내용 : 38','2020-10-27 11:10:22.844000','제목 : 38','2020-10-27 11:10:22.844000','user08'),(440,'내용 : 39','2020-10-27 11:10:22.911000','제목 : 39','2020-10-27 11:10:22.911000','user09'),(441,'내용 : 40','2020-10-27 11:10:22.976000','제목 : 40','2020-10-27 11:10:22.976000','user00'),(442,'내용 : 41','2020-10-27 11:10:23.028000','제목 : 41','2020-10-27 11:10:23.028000','user01'),(443,'내용 : 42','2020-10-27 11:10:23.094000','제목 : 42','2020-10-27 11:10:23.094000','user02'),(444,'내용 : 43','2020-10-27 11:10:23.153000','제목 : 43','2020-10-27 11:10:23.153000','user03'),(445,'내용 : 44','2020-10-27 11:10:23.268000','제목 : 44','2020-10-27 11:10:23.268000','user04'),(446,'내용 : 45','2020-10-27 11:10:23.327000','제목 : 45','2020-10-27 11:10:23.327000','user05'),(447,'내용 : 46','2020-10-27 11:10:23.386000','제목 : 46','2020-10-27 11:10:23.386000','user06'),(448,'내용 : 47','2020-10-27 11:10:23.509000','제목 : 47','2020-10-27 11:10:23.509000','user07'),(449,'내용 : 48','2020-10-27 11:10:23.635000','제목 : 48','2020-10-27 11:10:23.635000','user08'),(450,'내용 : 49','2020-10-27 11:10:23.694000','제목 : 49','2020-10-27 11:10:23.694000','user09'),(451,'내용 : 50','2020-10-27 11:10:23.752000','제목 : 50','2020-10-27 11:10:23.752000','user00'),(452,'내용 : 51','2020-10-27 11:10:23.811000','제목 : 51','2020-10-27 11:10:23.811000','user01'),(453,'내용 : 52','2020-10-27 11:10:23.895000','제목 : 52','2020-10-27 11:10:23.895000','user02'),(454,'내용 : 53','2020-10-27 11:10:23.994000','제목 : 53','2020-10-27 11:10:23.994000','user03'),(455,'내용 : 54','2020-10-27 11:10:24.103000','제목 : 54','2020-10-27 11:10:24.103000','user04'),(456,'내용 : 55','2020-10-27 11:10:24.178000','제목 : 55','2020-10-27 11:10:24.178000','user05'),(457,'내용 : 56','2020-10-27 11:10:24.236000','제목 : 56','2020-10-27 11:10:24.236000','user06'),(458,'내용 : 57','2020-10-27 11:10:24.295000','제목 : 57','2020-10-27 11:10:24.295000','user07'),(459,'내용 : 58','2020-10-27 11:10:24.344000','제목 : 58','2020-10-27 11:10:24.344000','user08'),(460,'내용 : 59','2020-10-27 11:10:24.402000','제목 : 59','2020-10-27 11:10:24.402000','user09'),(461,'내용 : 60','2020-10-27 11:10:24.461000','제목 : 60','2020-10-27 11:10:24.461000','user00'),(462,'내용 : 61','2020-10-27 11:10:24.601000','제목 : 61','2020-10-27 11:10:24.601000','user01'),(463,'내용 : 62','2020-10-27 11:10:24.670000','제목 : 62','2020-10-27 11:10:24.670000','user02'),(464,'내용 : 63','2020-10-27 11:10:24.728000','제목 : 63','2020-10-27 11:10:24.728000','user03'),(465,'내용 : 64','2020-10-27 11:10:24.802000','제목 : 64','2020-10-27 11:10:24.802000','user04'),(466,'내용 : 65','2020-10-27 11:10:24.862000','제목 : 65','2020-10-27 11:10:24.862000','user05'),(467,'내용 : 66','2020-10-27 11:10:24.920000','제목 : 66','2020-10-27 11:10:24.920000','user06'),(468,'내용 : 67','2020-10-27 11:10:24.977000','제목 : 67','2020-10-27 11:10:24.977000','user07'),(469,'내용 : 68','2020-10-27 11:10:25.028000','제목 : 68','2020-10-27 11:10:25.028000','user08'),(470,'내용 : 69','2020-10-27 11:10:25.078000','제목 : 69','2020-10-27 11:10:25.078000','user09'),(471,'내용 : 70','2020-10-27 11:10:25.127000','제목 : 70','2020-10-27 11:10:25.127000','user00'),(472,'내용 : 71','2020-10-27 11:10:25.186000','제목 : 71','2020-10-27 11:10:25.186000','user01'),(473,'내용 : 72','2020-10-27 11:10:25.236000','제목 : 72','2020-10-27 11:10:25.236000','user02'),(474,'내용 : 73','2020-10-27 11:10:25.311000','제목 : 73','2020-10-27 11:10:25.311000','user03'),(475,'내용 : 74','2020-10-27 11:10:25.378000','제목 : 74','2020-10-27 11:10:25.378000','user04'),(476,'내용 : 75','2020-10-27 11:10:25.437000','제목 : 75','2020-10-27 11:10:25.437000','user05'),(477,'내용 : 76','2020-10-27 11:10:25.494000','제목 : 76','2020-10-27 11:10:25.494000','user06'),(478,'내용 : 77','2020-10-27 11:10:25.552000','제목 : 77','2020-10-27 11:10:25.552000','user07'),(479,'내용 : 78','2020-10-27 11:10:25.611000','제목 : 78','2020-10-27 11:10:25.611000','user08'),(480,'내용 : 79','2020-10-27 11:10:25.670000','제목 : 79','2020-10-27 11:10:25.670000','user09'),(481,'내용 : 80','2020-10-27 11:10:25.720000','제목 : 80','2020-10-27 11:10:25.720000','user00'),(482,'내용 : 81','2020-10-27 11:10:25.778000','제목 : 81','2020-10-27 11:10:25.778000','user01'),(483,'내용 : 82','2020-10-27 11:10:25.837000','제목 : 82','2020-10-27 11:10:25.837000','user02'),(484,'내용 : 83','2020-10-27 11:10:25.895000','제목 : 83','2020-10-27 11:10:25.895000','user03'),(485,'내용 : 84','2020-10-27 11:10:25.979000','제목 : 84','2020-10-27 11:10:25.979000','user04'),(486,'내용 : 85','2020-10-27 11:10:26.036000','제목 : 85','2020-10-27 11:10:26.036000','user05'),(487,'내용 : 86','2020-10-27 11:10:26.095000','제목 : 86','2020-10-27 11:10:26.095000','user06'),(488,'내용 : 87','2020-10-27 11:10:26.153000','제목 : 87','2020-10-27 11:10:26.153000','user07'),(489,'내용 : 88','2020-10-27 11:10:26.212000','제목 : 88','2020-10-27 11:10:26.212000','user08'),(490,'내용 : 89','2020-10-27 11:10:26.270000','제목 : 89','2020-10-27 11:10:26.270000','user09'),(491,'내용 : 90','2020-10-27 11:10:26.353000','제목 : 90','2020-10-27 11:10:26.353000','user00'),(492,'내용 : 91','2020-10-27 11:10:26.411000','제목 : 91','2020-10-27 11:10:26.411000','user01'),(493,'내용 : 92','2020-10-27 11:10:26.471000','제목 : 92','2020-10-27 11:10:26.471000','user02'),(494,'내용 : 93','2020-10-27 11:10:26.528000','제목 : 93','2020-10-27 11:10:26.528000','user03'),(495,'내용 : 94','2020-10-27 11:10:26.652000','제목 : 94','2020-10-27 11:10:26.652000','user04'),(496,'내용 : 95','2020-10-27 11:10:26.712000','제목 : 95','2020-10-27 11:10:26.712000','user05'),(497,'내용 : 96','2020-10-27 11:10:26.770000','제목 : 96','2020-10-27 11:10:26.770000','user06'),(498,'내용 : 97','2020-10-27 11:10:26.836000','제목 : 97','2020-10-27 11:10:26.836000','user07'),(499,'내용 : 98','2020-10-27 11:10:26.896000','제목 : 98','2020-10-27 11:10:26.896000','user08'),(500,'내용 : 99','2020-10-27 11:10:26.954000','제목 : 99','2020-10-27 11:10:26.954000','user09'),(501,'내용 : 100','2020-10-27 11:10:27.012000','제목 : 100','2020-10-27 11:10:27.012000','user00'),(502,'내용 : 101','2020-10-27 11:10:27.070000','제목 : 101','2020-10-27 11:10:27.070000','user01'),(503,'내용 : 102','2020-10-27 11:10:27.120000','제목 : 102','2020-10-27 11:10:27.120000','user02'),(504,'내용 : 103','2020-10-27 11:10:27.194000','제목 : 103','2020-10-27 11:10:27.194000','user03'),(505,'내용 : 104','2020-10-27 11:10:27.252000','제목 : 104','2020-10-27 11:10:27.252000','user04'),(506,'내용 : 105','2020-10-27 11:10:27.302000','제목 : 105','2020-10-27 11:10:27.302000','user05'),(507,'내용 : 106','2020-10-27 11:10:27.386000','제목 : 106','2020-10-27 11:10:27.386000','user06'),(508,'내용 : 107','2020-10-27 11:10:27.435000','제목 : 107','2020-10-27 11:10:27.435000','user07'),(509,'내용 : 108','2020-10-27 11:10:27.543000','제목 : 108','2020-10-27 11:10:27.543000','user08'),(510,'내용 : 109','2020-10-27 11:10:27.593000','제목 : 109','2020-10-27 11:10:27.593000','user09'),(511,'내용 : 110','2020-10-27 11:10:27.643000','제목 : 110','2020-10-27 11:10:27.643000','user00'),(512,'내용 : 111','2020-10-27 11:10:27.694000','제목 : 111','2020-10-27 11:10:27.694000','user01'),(513,'내용 : 112','2020-10-27 11:10:27.786000','제목 : 112','2020-10-27 11:10:27.786000','user02'),(514,'내용 : 113','2020-10-27 11:10:27.845000','제목 : 113','2020-10-27 11:10:27.845000','user03'),(515,'내용 : 114','2020-10-27 11:10:27.946000','제목 : 114','2020-10-27 11:10:27.946000','user04'),(516,'내용 : 115','2020-10-27 11:10:28.003000','제목 : 115','2020-10-27 11:10:28.003000','user05'),(517,'내용 : 116','2020-10-27 11:10:28.088000','제목 : 116','2020-10-27 11:10:28.088000','user06'),(518,'내용 : 117','2020-10-27 11:10:28.145000','제목 : 117','2020-10-27 11:10:28.145000','user07'),(519,'내용 : 118','2020-10-27 11:10:28.221000','제목 : 118','2020-10-27 11:10:28.221000','user08'),(520,'내용 : 119','2020-10-27 11:10:28.278000','제목 : 119','2020-10-27 11:10:28.278000','user09'),(521,'내용 : 120','2020-10-27 11:10:28.403000','제목 : 120','2020-10-27 11:10:28.403000','user00'),(522,'내용 : 121','2020-10-27 11:10:28.471000','제목 : 121','2020-10-27 11:10:28.471000','user01'),(523,'내용 : 122','2020-10-27 11:10:28.529000','제목 : 122','2020-10-27 11:10:28.529000','user02'),(524,'내용 : 123','2020-10-27 11:10:28.579000','제목 : 123','2020-10-27 11:10:28.579000','user03'),(525,'내용 : 124','2020-10-27 11:10:28.638000','제목 : 124','2020-10-27 11:10:28.638000','user04'),(526,'내용 : 125','2020-10-27 11:10:28.696000','제목 : 125','2020-10-27 11:10:28.696000','user05'),(527,'내용 : 126','2020-10-27 11:10:28.755000','제목 : 126','2020-10-27 11:10:28.755000','user06'),(528,'내용 : 127','2020-10-27 11:10:28.812000','제목 : 127','2020-10-27 11:10:28.812000','user07'),(529,'내용 : 128','2020-10-27 11:10:28.937000','제목 : 128','2020-10-27 11:10:28.937000','user08'),(530,'내용 : 129','2020-10-27 11:10:28.996000','제목 : 129','2020-10-27 11:10:28.996000','user09'),(531,'내용 : 130','2020-10-27 11:10:29.055000','제목 : 130','2020-10-27 11:10:29.055000','user00'),(532,'내용 : 131','2020-10-27 11:10:29.137000','제목 : 131','2020-10-27 11:10:29.137000','user01'),(533,'내용 : 132','2020-10-27 11:10:29.196000','제목 : 132','2020-10-27 11:10:29.196000','user02'),(534,'내용 : 133','2020-10-27 11:10:29.255000','제목 : 133','2020-10-27 11:10:29.255000','user03'),(535,'내용 : 134','2020-10-27 11:10:29.445000','제목 : 134','2020-10-27 11:10:29.445000','user04'),(536,'내용 : 135','2020-10-27 11:10:29.555000','제목 : 135','2020-10-27 11:10:29.555000','user05'),(537,'내용 : 136','2020-10-27 11:10:29.663000','제목 : 136','2020-10-27 11:10:29.663000','user06'),(538,'내용 : 137','2020-10-27 11:10:29.739000','제목 : 137','2020-10-27 11:10:29.739000','user07'),(539,'내용 : 138','2020-10-27 11:10:29.788000','제목 : 138','2020-10-27 11:10:29.788000','user08'),(540,'내용 : 139','2020-10-27 11:10:29.837000','제목 : 139','2020-10-27 11:10:29.837000','user09'),(541,'내용 : 140','2020-10-27 11:10:29.888000','제목 : 140','2020-10-27 11:10:29.888000','user00'),(542,'내용 : 141','2020-10-27 11:10:29.937000','제목 : 141','2020-10-27 11:10:29.937000','user01'),(543,'내용 : 142','2020-10-27 11:10:29.988000','제목 : 142','2020-10-27 11:10:29.988000','user02'),(544,'내용 : 143','2020-10-27 11:10:30.054000','제목 : 143','2020-10-27 11:10:30.054000','user03'),(545,'내용 : 144','2020-10-27 11:10:30.104000','제목 : 144','2020-10-27 11:10:30.104000','user04'),(546,'내용 : 145','2020-10-27 11:10:30.172000','제목 : 145','2020-10-27 11:10:30.172000','user05'),(547,'내용 : 146','2020-10-27 11:10:30.238000','제목 : 146','2020-10-27 11:10:30.238000','user06'),(548,'내용 : 147','2020-10-27 11:10:30.314000','제목 : 147','2020-10-27 11:10:30.314000','user07'),(549,'내용 : 148','2020-10-27 11:10:30.377000','제목 : 148','2020-10-27 11:10:30.377000','user08'),(550,'내용 : 149','2020-10-27 11:10:30.459000','제목 : 149','2020-10-27 11:10:30.459000','user09'),(551,'내용 : 150','2020-10-27 11:10:30.526000','제목 : 150','2020-10-27 11:10:30.526000','user00'),(552,'내용 : 151','2020-10-27 11:10:30.585000','제목 : 151','2020-10-27 11:10:30.585000','user01'),(553,'내용 : 152','2020-10-27 11:10:30.661000','제목 : 152','2020-10-27 11:10:30.661000','user02'),(554,'내용 : 153','2020-10-27 11:10:30.718000','제목 : 153','2020-10-27 11:10:30.718000','user03'),(555,'내용 : 154','2020-10-27 11:10:30.777000','제목 : 154','2020-10-27 11:10:30.777000','user04'),(556,'내용 : 155','2020-10-27 11:10:30.836000','제목 : 155','2020-10-27 11:10:30.836000','user05'),(557,'내용 : 156','2020-10-27 11:10:30.894000','제목 : 156','2020-10-27 11:10:30.894000','user06'),(558,'내용 : 157','2020-10-27 11:10:30.952000','제목 : 157','2020-10-27 11:10:30.952000','user07'),(559,'내용 : 158','2020-10-27 11:10:31.011000','제목 : 158','2020-10-27 11:10:31.011000','user08'),(560,'내용 : 159','2020-10-27 11:10:31.069000','제목 : 159','2020-10-27 11:10:31.069000','user09'),(561,'내용 : 160','2020-10-27 11:10:31.128000','제목 : 160','2020-10-27 11:10:31.128000','user00'),(562,'내용 : 161','2020-10-27 11:10:31.186000','제목 : 161','2020-10-27 11:10:31.186000','user01'),(563,'내용 : 162','2020-10-27 11:10:31.311000','제목 : 162','2020-10-27 11:10:31.311000','user02'),(564,'내용 : 163','2020-10-27 11:10:31.369000','제목 : 163','2020-10-27 11:10:31.369000','user03'),(565,'내용 : 164','2020-10-27 11:10:31.428000','제목 : 164','2020-10-27 11:10:31.428000','user04'),(566,'내용 : 165','2020-10-27 11:10:31.485000','제목 : 165','2020-10-27 11:10:31.485000','user05'),(567,'내용 : 166','2020-10-27 11:10:31.544000','제목 : 166','2020-10-27 11:10:31.544000','user06'),(568,'내용 : 167','2020-10-27 11:10:31.594000','제목 : 167','2020-10-27 11:10:31.594000','user07'),(569,'내용 : 168','2020-10-27 11:10:31.652000','제목 : 168','2020-10-27 11:10:31.652000','user08'),(570,'내용 : 169','2020-10-27 11:10:31.713000','제목 : 169','2020-10-27 11:10:31.713000','user09'),(571,'내용 : 170','2020-10-27 11:10:31.771000','제목 : 170','2020-10-27 11:10:31.771000','user00'),(572,'내용 : 171','2020-10-27 11:10:31.830000','제목 : 171','2020-10-27 11:10:31.830000','user01'),(573,'내용 : 172','2020-10-27 11:10:31.889000','제목 : 172','2020-10-27 11:10:31.889000','user02'),(574,'내용 : 173','2020-10-27 11:10:31.946000','제목 : 173','2020-10-27 11:10:31.946000','user03'),(575,'내용 : 174','2020-10-27 11:10:32.081000','제목 : 174','2020-10-27 11:10:32.081000','user04'),(576,'내용 : 175','2020-10-27 11:10:32.143000','제목 : 175','2020-10-27 11:10:32.143000','user05'),(577,'내용 : 176','2020-10-27 11:10:32.202000','제목 : 176','2020-10-27 11:10:32.202000','user06'),(578,'내용 : 177','2020-10-27 11:10:32.261000','제목 : 177','2020-10-27 11:10:32.261000','user07'),(579,'내용 : 178','2020-10-27 11:10:32.347000','제목 : 178','2020-10-27 11:10:32.347000','user08'),(580,'내용 : 179','2020-10-27 11:10:32.411000','제목 : 179','2020-10-27 11:10:32.411000','user09'),(581,'내용 : 180','2020-10-27 11:10:32.519000','제목 : 180','2020-10-27 11:10:32.519000','user00'),(582,'내용 : 181','2020-10-27 11:10:32.610000','제목 : 181','2020-10-27 11:10:32.610000','user01'),(583,'내용 : 182','2020-10-27 11:10:32.678000','제목 : 182','2020-10-27 11:10:32.678000','user02'),(584,'내용 : 183','2020-10-27 11:10:32.736000','제목 : 183','2020-10-27 11:10:32.736000','user03'),(585,'내용 : 184','2020-10-27 11:10:32.794000','제목 : 184','2020-10-27 11:10:32.794000','user04'),(586,'내용 : 185','2020-10-27 11:10:32.853000','제목 : 185','2020-10-27 11:10:32.853000','user05'),(587,'내용 : 186','2020-10-27 11:10:32.972000','제목 : 186','2020-10-27 11:10:32.972000','user06'),(588,'내용 : 187','2020-10-27 11:10:33.027000','제목 : 187','2020-10-27 11:10:33.027000','user07'),(589,'내용 : 188','2020-10-27 11:10:33.078000','제목 : 188','2020-10-27 11:10:33.078000','user08'),(590,'내용 : 189','2020-10-27 11:10:33.136000','제목 : 189','2020-10-27 11:10:33.136000','user09'),(591,'내용 : 190','2020-10-27 11:10:33.194000','제목 : 190','2020-10-27 11:10:33.194000','user00'),(592,'내용 : 191','2020-10-27 11:10:33.253000','제목 : 191','2020-10-27 11:10:33.253000','user01'),(593,'내용 : 192','2020-10-27 11:10:33.311000','제목 : 192','2020-10-27 11:10:33.311000','user02'),(594,'내용 : 193','2020-10-27 11:10:33.369000','제목 : 193','2020-10-27 11:10:33.369000','user03'),(595,'내용 : 194','2020-10-27 11:10:33.428000','제목 : 194','2020-10-27 11:10:33.428000','user04'),(596,'내용 : 195','2020-10-27 11:10:33.507000','제목 : 195','2020-10-27 11:10:33.507000','user05'),(597,'내용 : 196','2020-10-27 11:10:33.570000','제목 : 196','2020-10-27 11:10:33.570000','user06'),(598,'내용 : 197','2020-10-27 11:10:33.628000','제목 : 197','2020-10-27 11:10:33.628000','user07'),(599,'내용 : 198','2020-10-27 11:10:33.752000','제목 : 198','2020-10-27 11:10:33.752000','user08'),(600,'내용 : 199','2020-10-27 11:10:33.812000','제목 : 199','2020-10-27 11:10:33.812000','user09'),(601,'내용 : 200','2020-10-27 11:10:33.870000','제목 : 200','2020-10-27 11:10:33.870000','user00'),(602,'내용 : 1','2020-10-27 11:11:59.817000','제목 : 1','2020-10-27 11:11:59.817000','user01'),(603,'내용 : 2','2020-10-27 11:11:59.880000','제목 : 2','2020-10-27 11:11:59.880000','user02'),(604,'내용 : 3','2020-10-27 11:11:59.930000','제목 : 3','2020-10-27 11:11:59.930000','user03'),(605,'내용 : 4','2020-10-27 11:11:59.990000','제목 : 4','2020-10-27 11:11:59.990000','user04'),(606,'내용 : 5','2020-10-27 11:12:00.057000','제목 : 5','2020-10-27 11:12:00.057000','user05'),(607,'내용 : 6','2020-10-27 11:12:00.123000','제목 : 6','2020-10-27 11:12:00.123000','user06'),(608,'내용 : 7','2020-10-27 11:12:00.181000','제목 : 7','2020-10-27 11:12:00.181000','user07'),(609,'내용 : 8','2020-10-27 11:12:00.239000','제목 : 8','2020-10-27 11:12:00.239000','user08'),(610,'내용 : 9','2020-10-27 11:12:00.298000','제목 : 9','2020-10-27 11:12:00.298000','user09'),(611,'내용 : 10','2020-10-27 11:12:00.356000','제목 : 10','2020-10-27 11:12:00.356000','user00'),(612,'내용 : 11','2020-10-27 11:12:00.415000','제목 : 11','2020-10-27 11:12:00.415000','user01'),(613,'내용 : 12','2020-10-27 11:12:00.484000','제목 : 12','2020-10-27 11:12:00.484000','user02'),(614,'내용 : 13','2020-10-27 11:12:00.540000','제목 : 13','2020-10-27 11:12:00.540000','user03'),(615,'내용 : 14','2020-10-27 11:12:00.606000','제목 : 14','2020-10-27 11:12:00.606000','user04'),(616,'내용 : 15','2020-10-27 11:12:00.665000','제목 : 15','2020-10-27 11:12:00.665000','user05'),(617,'내용 : 16','2020-10-27 11:12:00.723000','제목 : 16','2020-10-27 11:12:00.723000','user06'),(618,'내용 : 17','2020-10-27 11:12:00.781000','제목 : 17','2020-10-27 11:12:00.781000','user07'),(619,'내용 : 18','2020-10-27 11:12:00.844000','제목 : 18','2020-10-27 11:12:00.844000','user08'),(620,'내용 : 19','2020-10-27 11:12:00.906000','제목 : 19','2020-10-27 11:12:00.906000','user09'),(621,'내용 : 20','2020-10-27 11:12:00.973000','제목 : 20','2020-10-27 11:12:00.973000','user00'),(622,'내용 : 21','2020-10-27 11:12:01.030000','제목 : 21','2020-10-27 11:12:01.030000','user01'),(623,'내용 : 22','2020-10-27 11:12:01.098000','제목 : 22','2020-10-27 11:12:01.098000','user02'),(624,'내용 : 23','2020-10-27 11:12:01.165000','제목 : 23','2020-10-27 11:12:01.165000','user03'),(625,'내용 : 24','2020-10-27 11:12:01.223000','제목 : 24','2020-10-27 11:12:01.223000','user04'),(626,'내용 : 25','2020-10-27 11:12:01.272000','제목 : 25','2020-10-27 11:12:01.272000','user05'),(627,'내용 : 26','2020-10-27 11:12:01.332000','제목 : 26','2020-10-27 11:12:01.332000','user06'),(628,'내용 : 27','2020-10-27 11:12:01.449000','제목 : 27','2020-10-27 11:12:01.449000','user07'),(629,'내용 : 28','2020-10-27 11:12:01.523000','제목 : 28','2020-10-27 11:12:01.523000','user08'),(630,'내용 : 29','2020-10-27 11:12:01.582000','제목 : 29','2020-10-27 11:12:01.582000','user09'),(631,'내용 : 30','2020-10-27 11:12:01.639000','제목 : 30','2020-10-27 11:12:01.639000','user00'),(632,'내용 : 31','2020-10-27 11:12:01.698000','제목 : 31','2020-10-27 11:12:01.698000','user01'),(633,'내용 : 32','2020-10-27 11:12:01.765000','제목 : 32','2020-10-27 11:12:01.765000','user02'),(634,'내용 : 33','2020-10-27 11:12:01.831000','제목 : 33','2020-10-27 11:12:01.831000','user03'),(635,'내용 : 34','2020-10-27 11:12:01.889000','제목 : 34','2020-10-27 11:12:01.889000','user04'),(636,'내용 : 35','2020-10-27 11:12:01.948000','제목 : 35','2020-10-27 11:12:01.948000','user05'),(637,'내용 : 36','2020-10-27 11:12:02.006000','제목 : 36','2020-10-27 11:12:02.006000','user06'),(638,'내용 : 37','2020-10-27 11:12:02.074000','제목 : 37','2020-10-27 11:12:02.074000','user07'),(639,'내용 : 38','2020-10-27 11:12:02.176000','제목 : 38','2020-10-27 11:12:02.176000','user08'),(640,'내용 : 39','2020-10-27 11:12:02.239000','제목 : 39','2020-10-27 11:12:02.239000','user09'),(641,'내용 : 40','2020-10-27 11:12:02.322000','제목 : 40','2020-10-27 11:12:02.322000','user00'),(642,'내용 : 41','2020-10-27 11:12:02.381000','제목 : 41','2020-10-27 11:12:02.381000','user01'),(643,'내용 : 42','2020-10-27 11:12:02.511000','제목 : 42','2020-10-27 11:12:02.511000','user02'),(644,'내용 : 43','2020-10-27 11:12:02.581000','제목 : 43','2020-10-27 11:12:02.581000','user03'),(645,'내용 : 44','2020-10-27 11:12:02.648000','제목 : 44','2020-10-27 11:12:02.648000','user04'),(646,'내용 : 45','2020-10-27 11:12:02.706000','제목 : 45','2020-10-27 11:12:02.706000','user05'),(647,'내용 : 46','2020-10-27 11:12:02.765000','제목 : 46','2020-10-27 11:12:02.765000','user06'),(648,'내용 : 47','2020-10-27 11:12:02.831000','제목 : 47','2020-10-27 11:12:02.831000','user07'),(649,'내용 : 48','2020-10-27 11:12:02.949000','제목 : 48','2020-10-27 11:12:02.949000','user08'),(650,'내용 : 49','2020-10-27 11:12:03.015000','제목 : 49','2020-10-27 11:12:03.015000','user09'),(651,'내용 : 50','2020-10-27 11:12:03.107000','제목 : 50','2020-10-27 11:12:03.107000','user00'),(652,'내용 : 51','2020-10-27 11:12:03.175000','제목 : 51','2020-10-27 11:12:03.175000','user01'),(653,'내용 : 52','2020-10-27 11:12:03.231000','제목 : 52','2020-10-27 11:12:03.231000','user02'),(654,'내용 : 53','2020-10-27 11:12:03.351000','제목 : 53','2020-10-27 11:12:03.351000','user03'),(655,'내용 : 54','2020-10-27 11:12:03.407000','제목 : 54','2020-10-27 11:12:03.407000','user04'),(656,'내용 : 55','2020-10-27 11:12:03.494000','제목 : 55','2020-10-27 11:12:03.494000','user05'),(657,'내용 : 56','2020-10-27 11:12:03.552000','제목 : 56','2020-10-27 11:12:03.552000','user06'),(658,'내용 : 57','2020-10-27 11:12:03.610000','제목 : 57','2020-10-27 11:12:03.610000','user07'),(659,'내용 : 58','2020-10-27 11:12:03.669000','제목 : 58','2020-10-27 11:12:03.669000','user08'),(660,'내용 : 59','2020-10-27 11:12:03.727000','제목 : 59','2020-10-27 11:12:03.727000','user09'),(661,'내용 : 60','2020-10-27 11:12:03.793000','제목 : 60','2020-10-27 11:12:03.793000','user00'),(662,'내용 : 61','2020-10-27 11:12:03.901000','제목 : 61','2020-10-27 11:12:03.901000','user01'),(663,'내용 : 62','2020-10-27 11:12:03.969000','제목 : 62','2020-10-27 11:12:03.969000','user02'),(664,'내용 : 63','2020-10-27 11:12:04.032000','제목 : 63','2020-10-27 11:12:04.032000','user03'),(665,'내용 : 64','2020-10-27 11:12:04.091000','제목 : 64','2020-10-27 11:12:04.091000','user04'),(666,'내용 : 65','2020-10-27 11:12:04.149000','제목 : 65','2020-10-27 11:12:04.149000','user05'),(667,'내용 : 66','2020-10-27 11:12:04.208000','제목 : 66','2020-10-27 11:12:04.208000','user06'),(668,'내용 : 67','2020-10-27 11:12:04.266000','제목 : 67','2020-10-27 11:12:04.266000','user07'),(669,'내용 : 68','2020-10-27 11:12:04.324000','제목 : 68','2020-10-27 11:12:04.324000','user08'),(670,'내용 : 69','2020-10-27 11:12:04.457000','제목 : 69','2020-10-27 11:12:04.457000','user09'),(671,'내용 : 70','2020-10-27 11:12:04.543000','제목 : 70','2020-10-27 11:12:04.543000','user00'),(672,'내용 : 71','2020-10-27 11:12:04.608000','제목 : 71','2020-10-27 11:12:04.608000','user01'),(673,'내용 : 72','2020-10-27 11:12:04.665000','제목 : 72','2020-10-27 11:12:04.665000','user02'),(674,'내용 : 73','2020-10-27 11:12:04.724000','제목 : 73','2020-10-27 11:12:04.724000','user03'),(675,'내용 : 74','2020-10-27 11:12:04.782000','제목 : 74','2020-10-27 11:12:04.782000','user04'),(676,'내용 : 75','2020-10-27 11:12:04.841000','제목 : 75','2020-10-27 11:12:04.841000','user05'),(677,'내용 : 76','2020-10-27 11:12:04.917000','제목 : 76','2020-10-27 11:12:04.917000','user06'),(678,'내용 : 77','2020-10-27 11:12:04.974000','제목 : 77','2020-10-27 11:12:04.974000','user07'),(679,'내용 : 78','2020-10-27 11:12:05.025000','제목 : 78','2020-10-27 11:12:05.025000','user08'),(680,'내용 : 79','2020-10-27 11:12:05.084000','제목 : 79','2020-10-27 11:12:05.084000','user09'),(681,'내용 : 80','2020-10-27 11:12:05.167000','제목 : 80','2020-10-27 11:12:05.167000','user00'),(682,'내용 : 81','2020-10-27 11:12:05.272000','제목 : 81','2020-10-27 11:12:05.272000','user01'),(683,'내용 : 82','2020-10-27 11:12:05.341000','제목 : 82','2020-10-27 11:12:05.341000','user02'),(684,'내용 : 83','2020-10-27 11:12:05.433000','제목 : 83','2020-10-27 11:12:05.433000','user03'),(685,'내용 : 84','2020-10-27 11:12:05.511000','제목 : 84','2020-10-27 11:12:05.511000','user04'),(686,'내용 : 85','2020-10-27 11:12:05.583000','제목 : 85','2020-10-27 11:12:05.583000','user05'),(687,'내용 : 86','2020-10-27 11:12:05.633000','제목 : 86','2020-10-27 11:12:05.633000','user06'),(688,'내용 : 87','2020-10-27 11:12:05.700000','제목 : 87','2020-10-27 11:12:05.700000','user07'),(689,'내용 : 88','2020-10-27 11:12:05.766000','제목 : 88','2020-10-27 11:12:05.766000','user08'),(690,'내용 : 89','2020-10-27 11:12:05.824000','제목 : 89','2020-10-27 11:12:05.824000','user09'),(691,'내용 : 90','2020-10-27 11:12:05.883000','제목 : 90','2020-10-27 11:12:05.883000','user00'),(692,'내용 : 91','2020-10-27 11:12:05.941000','제목 : 91','2020-10-27 11:12:05.941000','user01'),(693,'내용 : 92','2020-10-27 11:12:05.999000','제목 : 92','2020-10-27 11:12:05.999000','user02'),(694,'내용 : 93','2020-10-27 11:12:06.116000','제목 : 93','2020-10-27 11:12:06.116000','user03'),(695,'내용 : 94','2020-10-27 11:12:06.256000','제목 : 94','2020-10-27 11:12:06.256000','user04'),(696,'내용 : 95','2020-10-27 11:12:06.417000','제목 : 95','2020-10-27 11:12:06.417000','user05'),(697,'내용 : 96','2020-10-27 11:12:06.553000','제목 : 96','2020-10-27 11:12:06.553000','user06'),(698,'내용 : 97','2020-10-27 11:12:06.679000','제목 : 97','2020-10-27 11:12:06.679000','user07'),(699,'내용 : 98','2020-10-27 11:12:06.817000','제목 : 98','2020-10-27 11:12:06.817000','user08'),(700,'내용 : 99','2020-10-27 11:12:06.928000','제목 : 99','2020-10-27 11:12:06.928000','user09'),(701,'내용 : 100','2020-10-27 11:12:07.102000','제목 : 100','2020-10-27 11:12:07.102000','user00'),(702,'내용 : 101','2020-10-27 11:12:07.262000','제목 : 101','2020-10-27 11:12:07.262000','user01'),(703,'내용 : 102','2020-10-27 11:12:07.379000','제목 : 102','2020-10-27 11:12:07.379000','user02'),(704,'내용 : 103','2020-10-27 11:12:07.476000','제목 : 103','2020-10-27 11:12:07.476000','user03'),(705,'내용 : 104','2020-10-27 11:12:07.638000','제목 : 104','2020-10-27 11:12:07.638000','user04'),(706,'내용 : 105','2020-10-27 11:12:07.694000','제목 : 105','2020-10-27 11:12:07.694000','user05'),(707,'내용 : 106','2020-10-27 11:12:07.860000','제목 : 106','2020-10-27 11:12:07.860000','user06'),(708,'내용 : 107','2020-10-27 11:12:07.902000','제목 : 107','2020-10-27 11:12:07.902000','user07'),(709,'내용 : 108','2020-10-27 11:12:07.961000','제목 : 108','2020-10-27 11:12:07.961000','user08'),(710,'내용 : 109','2020-10-27 11:12:08.011000','제목 : 109','2020-10-27 11:12:08.011000','user09'),(711,'내용 : 110','2020-10-27 11:12:08.069000','제목 : 110','2020-10-27 11:12:08.069000','user00'),(712,'내용 : 111','2020-10-27 11:12:08.128000','제목 : 111','2020-10-27 11:12:08.128000','user01'),(713,'내용 : 112','2020-10-27 11:12:08.244000','제목 : 112','2020-10-27 11:12:08.244000','user02'),(714,'내용 : 113','2020-10-27 11:12:08.294000','제목 : 113','2020-10-27 11:12:08.294000','user03'),(715,'내용 : 114','2020-10-27 11:12:08.416000','제목 : 114','2020-10-27 11:12:08.416000','user04'),(716,'내용 : 115','2020-10-27 11:12:08.476000','제목 : 115','2020-10-27 11:12:08.476000','user05'),(717,'내용 : 116','2020-10-27 11:12:08.545000','제목 : 116','2020-10-27 11:12:08.545000','user06'),(718,'내용 : 117','2020-10-27 11:12:08.616000','제목 : 117','2020-10-27 11:12:08.616000','user07'),(719,'내용 : 118','2020-10-27 11:12:08.676000','제목 : 118','2020-10-27 11:12:08.676000','user08'),(720,'내용 : 119','2020-10-27 11:12:08.733000','제목 : 119','2020-10-27 11:12:08.733000','user09'),(721,'내용 : 120','2020-10-27 11:12:08.834000','제목 : 120','2020-10-27 11:12:08.834000','user00'),(722,'내용 : 121','2020-10-27 11:12:08.900000','제목 : 121','2020-10-27 11:12:08.900000','user01'),(723,'내용 : 122','2020-10-27 11:12:08.959000','제목 : 122','2020-10-27 11:12:08.959000','user02'),(724,'내용 : 123','2020-10-27 11:12:09.017000','제목 : 123','2020-10-27 11:12:09.017000','user03'),(725,'내용 : 124','2020-10-27 11:12:09.076000','제목 : 124','2020-10-27 11:12:09.076000','user04'),(726,'내용 : 125','2020-10-27 11:12:09.134000','제목 : 125','2020-10-27 11:12:09.134000','user05'),(727,'내용 : 126','2020-10-27 11:12:09.192000','제목 : 126','2020-10-27 11:12:09.192000','user06'),(728,'내용 : 127','2020-10-27 11:12:09.362000','제목 : 127','2020-10-27 11:12:09.362000','user07'),(729,'내용 : 128','2020-10-27 11:12:09.412000','제목 : 128','2020-10-27 11:12:09.412000','user08'),(730,'내용 : 129','2020-10-27 11:12:09.461000','제목 : 129','2020-10-27 11:12:09.461000','user09'),(731,'내용 : 130','2020-10-27 11:12:09.551000','제목 : 130','2020-10-27 11:12:09.551000','user00'),(732,'내용 : 131','2020-10-27 11:12:09.617000','제목 : 131','2020-10-27 11:12:09.617000','user01'),(733,'내용 : 132','2020-10-27 11:12:09.675000','제목 : 132','2020-10-27 11:12:09.675000','user02'),(734,'내용 : 133','2020-10-27 11:12:09.734000','제목 : 133','2020-10-27 11:12:09.734000','user03'),(735,'내용 : 134','2020-10-27 11:12:09.792000','제목 : 134','2020-10-27 11:12:09.792000','user04'),(736,'내용 : 135','2020-10-27 11:12:09.850000','제목 : 135','2020-10-27 11:12:09.850000','user05'),(737,'내용 : 136','2020-10-27 11:12:09.908000','제목 : 136','2020-10-27 11:12:09.908000','user06'),(738,'내용 : 137','2020-10-27 11:12:09.966000','제목 : 137','2020-10-27 11:12:09.966000','user07'),(739,'내용 : 138','2020-10-27 11:12:10.025000','제목 : 138','2020-10-27 11:12:10.025000','user08'),(740,'내용 : 139','2020-10-27 11:12:10.084000','제목 : 139','2020-10-27 11:12:10.084000','user09'),(741,'내용 : 140','2020-10-27 11:12:10.142000','제목 : 140','2020-10-27 11:12:10.142000','user00'),(742,'내용 : 141','2020-10-27 11:12:10.225000','제목 : 141','2020-10-27 11:12:10.225000','user01'),(743,'내용 : 142','2020-10-27 11:12:10.285000','제목 : 142','2020-10-27 11:12:10.285000','user02'),(744,'내용 : 143','2020-10-27 11:12:10.342000','제목 : 143','2020-10-27 11:12:10.342000','user03'),(745,'내용 : 144','2020-10-27 11:12:10.401000','제목 : 144','2020-10-27 11:12:10.401000','user04'),(746,'내용 : 145','2020-10-27 11:12:10.459000','제목 : 145','2020-10-27 11:12:10.459000','user05'),(747,'내용 : 146','2020-10-27 11:12:10.517000','제목 : 146','2020-10-27 11:12:10.517000','user06'),(748,'내용 : 147','2020-10-27 11:12:10.620000','제목 : 147','2020-10-27 11:12:10.620000','user07'),(749,'내용 : 148','2020-10-27 11:12:10.688000','제목 : 148','2020-10-27 11:12:10.688000','user08'),(750,'내용 : 149','2020-10-27 11:12:10.745000','제목 : 149','2020-10-27 11:12:10.745000','user09'),(751,'내용 : 150','2020-10-27 11:12:10.796000','제목 : 150','2020-10-27 11:12:10.796000','user00'),(752,'내용 : 151','2020-10-27 11:12:10.862000','제목 : 151','2020-10-27 11:12:10.862000','user01'),(753,'내용 : 152','2020-10-27 11:12:10.938000','제목 : 152','2020-10-27 11:12:10.938000','user02'),(754,'내용 : 153','2020-10-27 11:12:10.996000','제목 : 153','2020-10-27 11:12:10.996000','user03'),(755,'내용 : 154','2020-10-27 11:12:11.046000','제목 : 154','2020-10-27 11:12:11.046000','user04'),(756,'내용 : 155','2020-10-27 11:12:11.095000','제목 : 155','2020-10-27 11:12:11.095000','user05'),(757,'내용 : 156','2020-10-27 11:12:11.146000','제목 : 156','2020-10-27 11:12:11.146000','user06'),(758,'내용 : 157','2020-10-27 11:12:11.196000','제목 : 157','2020-10-27 11:12:11.196000','user07'),(759,'내용 : 158','2020-10-27 11:12:11.247000','제목 : 158','2020-10-27 11:12:11.247000','user08'),(760,'내용 : 159','2020-10-27 11:12:11.305000','제목 : 159','2020-10-27 11:12:11.305000','user09'),(761,'내용 : 160','2020-10-27 11:12:11.355000','제목 : 160','2020-10-27 11:12:11.355000','user00'),(762,'내용 : 161','2020-10-27 11:12:11.480000','제목 : 161','2020-10-27 11:12:11.480000','user01'),(763,'내용 : 162','2020-10-27 11:12:11.546000','제목 : 162','2020-10-27 11:12:11.546000','user02'),(764,'내용 : 163','2020-10-27 11:12:11.629000','제목 : 163','2020-10-27 11:12:11.629000','user03'),(765,'내용 : 164','2020-10-27 11:12:11.696000','제목 : 164','2020-10-27 11:12:11.696000','user04'),(766,'내용 : 165','2020-10-27 11:12:11.754000','제목 : 165','2020-10-27 11:12:11.754000','user05'),(767,'내용 : 166','2020-10-27 11:12:11.813000','제목 : 166','2020-10-27 11:12:11.813000','user06'),(768,'내용 : 167','2020-10-27 11:12:11.871000','제목 : 167','2020-10-27 11:12:11.871000','user07'),(769,'내용 : 168','2020-10-27 11:12:11.929000','제목 : 168','2020-10-27 11:12:11.929000','user08'),(770,'내용 : 169','2020-10-27 11:12:12.013000','제목 : 169','2020-10-27 11:12:12.013000','user09'),(771,'내용 : 170','2020-10-27 11:12:12.071000','제목 : 170','2020-10-27 11:12:12.071000','user00'),(772,'내용 : 171','2020-10-27 11:12:12.121000','제목 : 171','2020-10-27 11:12:12.121000','user01'),(773,'내용 : 172','2020-10-27 11:12:12.221000','제목 : 172','2020-10-27 11:12:12.221000','user02'),(774,'내용 : 173','2020-10-27 11:12:12.270000','제목 : 173','2020-10-27 11:12:12.270000','user03'),(775,'내용 : 174','2020-10-27 11:12:12.387000','제목 : 174','2020-10-27 11:12:12.387000','user04'),(776,'내용 : 175','2020-10-27 11:12:12.446000','제목 : 175','2020-10-27 11:12:12.446000','user05'),(777,'내용 : 176','2020-10-27 11:12:12.505000','제목 : 176','2020-10-27 11:12:12.505000','user06'),(778,'내용 : 177','2020-10-27 11:12:12.603000','제목 : 177','2020-10-27 11:12:12.603000','user07'),(779,'내용 : 178','2020-10-27 11:12:12.668000','제목 : 178','2020-10-27 11:12:12.668000','user08'),(780,'내용 : 179','2020-10-27 11:12:12.784000','제목 : 179','2020-10-27 11:12:12.784000','user09'),(781,'내용 : 180','2020-10-27 11:12:12.844000','제목 : 180','2020-10-27 11:12:12.844000','user00'),(782,'내용 : 181','2020-10-27 11:12:12.919000','제목 : 181','2020-10-27 11:12:12.919000','user01'),(783,'내용 : 182','2020-10-27 11:12:12.977000','제목 : 182','2020-10-27 11:12:12.977000','user02'),(784,'내용 : 183','2020-10-27 11:12:13.034000','제목 : 183','2020-10-27 11:12:13.034000','user03'),(785,'내용 : 184','2020-10-27 11:12:13.094000','제목 : 184','2020-10-27 11:12:13.094000','user04'),(786,'내용 : 185','2020-10-27 11:12:13.151000','제목 : 185','2020-10-27 11:12:13.151000','user05'),(787,'내용 : 186','2020-10-27 11:12:13.210000','제목 : 186','2020-10-27 11:12:13.210000','user06'),(788,'내용 : 187','2020-10-27 11:12:13.269000','제목 : 187','2020-10-27 11:12:13.269000','user07'),(789,'내용 : 188','2020-10-27 11:12:13.326000','제목 : 188','2020-10-27 11:12:13.326000','user08'),(790,'내용 : 189','2020-10-27 11:12:13.411000','제목 : 189','2020-10-27 11:12:13.411000','user09'),(791,'내용 : 190','2020-10-27 11:12:13.468000','제목 : 190','2020-10-27 11:12:13.468000','user00'),(792,'내용 : 191','2020-10-27 11:12:13.527000','제목 : 191','2020-10-27 11:12:13.527000','user01'),(793,'내용 : 192','2020-10-27 11:12:13.623000','제목 : 192','2020-10-27 11:12:13.623000','user02'),(794,'내용 : 193','2020-10-27 11:12:13.688000','제목 : 193','2020-10-27 11:12:13.688000','user03'),(795,'내용 : 194','2020-10-27 11:12:13.802000','제목 : 194','2020-10-27 11:12:13.802000','user04'),(796,'내용 : 195','2020-10-27 11:12:13.856000','제목 : 195','2020-10-27 11:12:13.856000','user05'),(797,'내용 : 196','2020-10-27 11:12:13.913000','제목 : 196','2020-10-27 11:12:13.913000','user06'),(798,'내용 : 197','2020-10-27 11:12:13.996000','제목 : 197','2020-10-27 11:12:13.996000','user07'),(799,'내용 : 198','2020-10-27 11:12:14.072000','제목 : 198','2020-10-27 11:12:14.072000','user08'),(800,'내용 : 199','2020-10-27 11:12:14.169000','제목 : 199','2020-10-27 11:12:14.169000','user09'),(801,'내용 : 200','2020-10-27 11:12:14.228000','제목 : 200','2020-10-27 11:12:14.228000','user00'),(802,'내용 : 1','2020-10-27 11:24:25.899000','제목 : 1','2020-10-27 11:24:25.899000','user01'),(803,'내용 : 2','2020-10-27 11:24:25.964000','제목 : 2','2020-10-27 11:24:25.964000','user02'),(804,'내용 : 3','2020-10-27 11:24:26.021000','제목 : 3','2020-10-27 11:24:26.021000','user03'),(805,'내용 : 4','2020-10-27 11:24:26.080000','제목 : 4','2020-10-27 11:24:26.080000','user04'),(806,'내용 : 5','2020-10-27 11:24:26.138000','제목 : 5','2020-10-27 11:24:26.138000','user05'),(807,'내용 : 6','2020-10-27 11:24:26.206000','제목 : 6','2020-10-27 11:24:26.206000','user06'),(808,'내용 : 7','2020-10-27 11:24:26.272000','제목 : 7','2020-10-27 11:24:26.272000','user07'),(809,'내용 : 8','2020-10-27 11:24:26.321000','제목 : 8','2020-10-27 11:24:26.321000','user08'),(810,'내용 : 9','2020-10-27 11:24:26.380000','제목 : 9','2020-10-27 11:24:26.380000','user09'),(811,'내용 : 10','2020-10-27 11:24:26.448000','제목 : 10','2020-10-27 11:24:26.448000','user00'),(812,'내용 : 11','2020-10-27 11:24:26.505000','제목 : 11','2020-10-27 11:24:26.505000','user01'),(813,'내용 : 12','2020-10-27 11:24:26.563000','제목 : 12','2020-10-27 11:24:26.563000','user02'),(814,'내용 : 13','2020-10-27 11:24:26.622000','제목 : 13','2020-10-27 11:24:26.622000','user03'),(815,'내용 : 14','2020-10-27 11:24:26.680000','제목 : 14','2020-10-27 11:24:26.680000','user04'),(816,'내용 : 15','2020-10-27 11:24:26.739000','제목 : 15','2020-10-27 11:24:26.739000','user05'),(817,'내용 : 16','2020-10-27 11:24:26.796000','제목 : 16','2020-10-27 11:24:26.796000','user06'),(818,'내용 : 17','2020-10-27 11:24:26.856000','제목 : 17','2020-10-27 11:24:26.856000','user07'),(819,'내용 : 18','2020-10-27 11:24:26.931000','제목 : 18','2020-10-27 11:24:26.931000','user08'),(820,'내용 : 19','2020-10-27 11:24:26.998000','제목 : 19','2020-10-27 11:24:26.998000','user09'),(821,'내용 : 20','2020-10-27 11:24:27.055000','제목 : 20','2020-10-27 11:24:27.055000','user00'),(822,'내용 : 21','2020-10-27 11:24:27.147000','제목 : 21','2020-10-27 11:24:27.147000','user01'),(823,'내용 : 22','2020-10-27 11:24:27.214000','제목 : 22','2020-10-27 11:24:27.214000','user02'),(824,'내용 : 23','2020-10-27 11:24:27.273000','제목 : 23','2020-10-27 11:24:27.273000','user03'),(825,'내용 : 24','2020-10-27 11:24:27.406000','제목 : 24','2020-10-27 11:24:27.406000','user04'),(826,'내용 : 25','2020-10-27 11:24:27.464000','제목 : 25','2020-10-27 11:24:27.464000','user05'),(827,'내용 : 26','2020-10-27 11:24:27.523000','제목 : 26','2020-10-27 11:24:27.523000','user06'),(828,'내용 : 27','2020-10-27 11:24:27.580000','제목 : 27','2020-10-27 11:24:27.580000','user07'),(829,'내용 : 28','2020-10-27 11:24:27.639000','제목 : 28','2020-10-27 11:24:27.639000','user08'),(830,'내용 : 29','2020-10-27 11:24:27.705000','제목 : 29','2020-10-27 11:24:27.705000','user09'),(831,'내용 : 30','2020-10-27 11:24:27.756000','제목 : 30','2020-10-27 11:24:27.756000','user00'),(832,'내용 : 31','2020-10-27 11:24:27.814000','제목 : 31','2020-10-27 11:24:27.814000','user01'),(833,'내용 : 32','2020-10-27 11:24:27.864000','제목 : 32','2020-10-27 11:24:27.864000','user02'),(834,'내용 : 33','2020-10-27 11:24:27.931000','제목 : 33','2020-10-27 11:24:27.931000','user03'),(835,'내용 : 34','2020-10-27 11:24:27.989000','제목 : 34','2020-10-27 11:24:27.989000','user04'),(836,'내용 : 35','2020-10-27 11:24:28.064000','제목 : 35','2020-10-27 11:24:28.064000','user05'),(837,'내용 : 36','2020-10-27 11:24:28.122000','제목 : 36','2020-10-27 11:24:28.122000','user06'),(838,'내용 : 37','2020-10-27 11:24:28.189000','제목 : 37','2020-10-27 11:24:28.189000','user07'),(839,'내용 : 38','2020-10-27 11:24:28.248000','제목 : 38','2020-10-27 11:24:28.248000','user08'),(840,'내용 : 39','2020-10-27 11:24:28.314000','제목 : 39','2020-10-27 11:24:28.314000','user09'),(841,'내용 : 40','2020-10-27 11:24:28.422000','제목 : 40','2020-10-27 11:24:28.422000','user00'),(842,'내용 : 41','2020-10-27 11:24:28.480000','제목 : 41','2020-10-27 11:24:28.480000','user01'),(843,'내용 : 42','2020-10-27 11:24:28.532000','제목 : 42','2020-10-27 11:24:28.532000','user02'),(844,'내용 : 43','2020-10-27 11:24:28.590000','제목 : 43','2020-10-27 11:24:28.590000','user03'),(845,'내용 : 44','2020-10-27 11:24:28.657000','제목 : 44','2020-10-27 11:24:28.657000','user04'),(846,'내용 : 45','2020-10-27 11:24:28.724000','제목 : 45','2020-10-27 11:24:28.724000','user05'),(847,'내용 : 46','2020-10-27 11:24:28.809000','제목 : 46','2020-10-27 11:24:28.809000','user06'),(848,'내용 : 47','2020-10-27 11:24:28.867000','제목 : 47','2020-10-27 11:24:28.867000','user07'),(849,'내용 : 48','2020-10-27 11:24:28.926000','제목 : 48','2020-10-27 11:24:28.926000','user08'),(850,'내용 : 49','2020-10-27 11:24:28.984000','제목 : 49','2020-10-27 11:24:28.984000','user09'),(851,'내용 : 50','2020-10-27 11:24:29.042000','제목 : 50','2020-10-27 11:24:29.042000','user00'),(852,'내용 : 51','2020-10-27 11:24:29.100000','제목 : 51','2020-10-27 11:24:29.100000','user01'),(853,'내용 : 52','2020-10-27 11:24:29.150000','제목 : 52','2020-10-27 11:24:29.150000','user02'),(854,'내용 : 53','2020-10-27 11:24:29.209000','제목 : 53','2020-10-27 11:24:29.209000','user03'),(855,'내용 : 54','2020-10-27 11:24:29.266000','제목 : 54','2020-10-27 11:24:29.266000','user04'),(856,'내용 : 55','2020-10-27 11:24:29.325000','제목 : 55','2020-10-27 11:24:29.325000','user05'),(857,'내용 : 56','2020-10-27 11:24:29.384000','제목 : 56','2020-10-27 11:24:29.384000','user06'),(858,'내용 : 57','2020-10-27 11:24:29.534000','제목 : 57','2020-10-27 11:24:29.534000','user07'),(859,'내용 : 58','2020-10-27 11:24:29.601000','제목 : 58','2020-10-27 11:24:29.601000','user08'),(860,'내용 : 59','2020-10-27 11:24:29.717000','제목 : 59','2020-10-27 11:24:29.717000','user09'),(861,'내용 : 60','2020-10-27 11:24:29.776000','제목 : 60','2020-10-27 11:24:29.776000','user00'),(862,'내용 : 61','2020-10-27 11:24:29.834000','제목 : 61','2020-10-27 11:24:29.834000','user01'),(863,'내용 : 62','2020-10-27 11:24:29.892000','제목 : 62','2020-10-27 11:24:29.892000','user02'),(864,'내용 : 63','2020-10-27 11:24:29.951000','제목 : 63','2020-10-27 11:24:29.951000','user03'),(865,'내용 : 64','2020-10-27 11:24:30.010000','제목 : 64','2020-10-27 11:24:30.010000','user04'),(866,'내용 : 65','2020-10-27 11:24:30.067000','제목 : 65','2020-10-27 11:24:30.067000','user05'),(867,'내용 : 66','2020-10-27 11:24:30.184000','제목 : 66','2020-10-27 11:24:30.184000','user06'),(868,'내용 : 67','2020-10-27 11:24:30.243000','제목 : 67','2020-10-27 11:24:30.243000','user07'),(869,'내용 : 68','2020-10-27 11:24:30.301000','제목 : 68','2020-10-27 11:24:30.301000','user08'),(870,'내용 : 69','2020-10-27 11:24:30.359000','제목 : 69','2020-10-27 11:24:30.359000','user09'),(871,'내용 : 70','2020-10-27 11:24:30.418000','제목 : 70','2020-10-27 11:24:30.418000','user00'),(872,'내용 : 71','2020-10-27 11:24:30.475000','제목 : 71','2020-10-27 11:24:30.475000','user01'),(873,'내용 : 72','2020-10-27 11:24:30.535000','제목 : 72','2020-10-27 11:24:30.535000','user02'),(874,'내용 : 73','2020-10-27 11:24:30.592000','제목 : 73','2020-10-27 11:24:30.592000','user03'),(875,'내용 : 74','2020-10-27 11:24:30.643000','제목 : 74','2020-10-27 11:24:30.643000','user04'),(876,'내용 : 75','2020-10-27 11:24:30.700000','제목 : 75','2020-10-27 11:24:30.700000','user05'),(877,'내용 : 76','2020-10-27 11:24:30.759000','제목 : 76','2020-10-27 11:24:30.759000','user06'),(878,'내용 : 77','2020-10-27 11:24:30.818000','제목 : 77','2020-10-27 11:24:30.818000','user07'),(879,'내용 : 78','2020-10-27 11:24:30.876000','제목 : 78','2020-10-27 11:24:30.876000','user08'),(880,'내용 : 79','2020-10-27 11:24:30.935000','제목 : 79','2020-10-27 11:24:30.935000','user09'),(881,'내용 : 80','2020-10-27 11:24:31.009000','제목 : 80','2020-10-27 11:24:31.009000','user00'),(882,'내용 : 81','2020-10-27 11:24:31.068000','제목 : 81','2020-10-27 11:24:31.068000','user01'),(883,'내용 : 82','2020-10-27 11:24:31.125000','제목 : 82','2020-10-27 11:24:31.125000','user02'),(884,'내용 : 83','2020-10-27 11:24:31.184000','제목 : 83','2020-10-27 11:24:31.184000','user03'),(885,'내용 : 84','2020-10-27 11:24:31.243000','제목 : 84','2020-10-27 11:24:31.243000','user04'),(886,'내용 : 85','2020-10-27 11:24:31.300000','제목 : 85','2020-10-27 11:24:31.300000','user05'),(887,'내용 : 86','2020-10-27 11:24:31.359000','제목 : 86','2020-10-27 11:24:31.359000','user06'),(888,'내용 : 87','2020-10-27 11:24:31.417000','제목 : 87','2020-10-27 11:24:31.417000','user07'),(889,'내용 : 88','2020-10-27 11:24:31.476000','제목 : 88','2020-10-27 11:24:31.476000','user08'),(890,'내용 : 89','2020-10-27 11:24:31.544000','제목 : 89','2020-10-27 11:24:31.544000','user09'),(891,'내용 : 90','2020-10-27 11:24:31.610000','제목 : 90','2020-10-27 11:24:31.610000','user00'),(892,'내용 : 91','2020-10-27 11:24:31.735000','제목 : 91','2020-10-27 11:24:31.735000','user01'),(893,'내용 : 92','2020-10-27 11:24:31.867000','제목 : 92','2020-10-27 11:24:31.867000','user02'),(894,'내용 : 93','2020-10-27 11:24:31.926000','제목 : 93','2020-10-27 11:24:31.926000','user03'),(895,'내용 : 94','2020-10-27 11:24:31.984000','제목 : 94','2020-10-27 11:24:31.984000','user04'),(896,'내용 : 95','2020-10-27 11:24:32.043000','제목 : 95','2020-10-27 11:24:32.043000','user05'),(897,'내용 : 96','2020-10-27 11:24:32.102000','제목 : 96','2020-10-27 11:24:32.102000','user06'),(898,'내용 : 97','2020-10-27 11:24:32.168000','제목 : 97','2020-10-27 11:24:32.168000','user07'),(899,'내용 : 98','2020-10-27 11:24:32.226000','제목 : 98','2020-10-27 11:24:32.226000','user08'),(900,'내용 : 99','2020-10-27 11:24:32.310000','제목 : 99','2020-10-27 11:24:32.310000','user09'),(901,'내용 : 100','2020-10-27 11:24:32.368000','제목 : 100','2020-10-27 11:24:32.368000','user00'),(902,'내용 : 101','2020-10-27 11:24:32.426000','제목 : 101','2020-10-27 11:24:32.426000','user01'),(903,'내용 : 102','2020-10-27 11:24:32.485000','제목 : 102','2020-10-27 11:24:32.485000','user02'),(904,'내용 : 103','2020-10-27 11:24:32.544000','제목 : 103','2020-10-27 11:24:32.544000','user03'),(905,'내용 : 104','2020-10-27 11:24:32.602000','제목 : 104','2020-10-27 11:24:32.602000','user04'),(906,'내용 : 105','2020-10-27 11:24:32.739000','제목 : 105','2020-10-27 11:24:32.739000','user05'),(908,'내용 : 1','2020-10-27 12:15:49.991000','제목 : 1','2020-10-27 12:15:49.991000','user01'),(909,'내용 : 2','2020-10-27 12:15:50.067000','제목 : 2','2020-10-27 12:15:50.067000','user02'),(910,'내용 : 3','2020-10-27 12:15:50.125000','제목 : 3','2020-10-27 12:15:50.125000','user03'),(911,'내용 : 4','2020-10-27 12:15:50.193000','제목 : 4','2020-10-27 12:15:50.193000','user04'),(912,'내용 : 5','2020-10-27 12:15:50.261000','제목 : 5','2020-10-27 12:15:50.261000','user05'),(913,'내용 : 6','2020-10-27 12:15:50.342000','제목 : 6','2020-10-27 12:15:50.342000','user06'),(914,'내용 : 7','2020-10-27 12:15:50.400000','제목 : 7','2020-10-27 12:15:50.400000','user07'),(915,'내용 : 8','2020-10-27 12:15:50.468000','제목 : 8','2020-10-27 12:15:50.468000','user08'),(916,'내용 : 9','2020-10-27 12:15:50.526000','제목 : 9','2020-10-27 12:15:50.526000','user09'),(917,'내용 : 10','2020-10-27 12:15:50.584000','제목 : 10','2020-10-27 12:15:50.584000','user00'),(918,'내용 : 11','2020-10-27 12:15:50.665000','제목 : 11','2020-10-27 12:15:50.665000','user01'),(919,'내용 : 12','2020-10-27 12:15:50.731000','제목 : 12','2020-10-27 12:15:50.731000','user02'),(920,'내용 : 13','2020-10-27 12:15:50.799000','제목 : 13','2020-10-27 12:15:50.799000','user03'),(921,'내용 : 14','2020-10-27 12:15:50.864000','제목 : 14','2020-10-27 12:15:50.864000','user04'),(922,'내용 : 15','2020-10-27 12:15:50.948000','제목 : 15','2020-10-27 12:15:50.948000','user05'),(923,'내용 : 16','2020-10-27 12:15:51.023000','제목 : 16','2020-10-27 12:15:51.023000','user06'),(924,'내용 : 17','2020-10-27 12:15:51.081000','제목 : 17','2020-10-27 12:15:51.081000','user07'),(925,'내용 : 18','2020-10-27 12:15:51.147000','제목 : 18','2020-10-27 12:15:51.147000','user08'),(926,'내용 : 19','2020-10-27 12:15:51.226000','제목 : 19','2020-10-27 12:15:51.226000','user09'),(927,'내용 : 20','2020-10-27 12:15:51.284000','제목 : 20','2020-10-27 12:15:51.284000','user00'),(928,'내용 : 21','2020-10-27 12:15:51.351000','제목 : 21','2020-10-27 12:15:51.351000','user01'),(929,'내용 : 22','2020-10-27 12:15:51.419000','제목 : 22','2020-10-27 12:15:51.419000','user02'),(930,'내용 : 23','2020-10-27 12:15:51.485000','제목 : 23','2020-10-27 12:15:51.485000','user03'),(931,'내용 : 24','2020-10-27 12:15:51.552000','제목 : 24','2020-10-27 12:15:51.552000','user04'),(932,'내용 : 25','2020-10-27 12:15:51.618000','제목 : 25','2020-10-27 12:15:51.618000','user05'),(933,'내용 : 26','2020-10-27 12:15:51.684000','제목 : 26','2020-10-27 12:15:51.684000','user06'),(934,'내용 : 27','2020-10-27 12:15:51.751000','제목 : 27','2020-10-27 12:15:51.751000','user07'),(935,'내용 : 28','2020-10-27 12:15:51.809000','제목 : 28','2020-10-27 12:15:51.809000','user08'),(936,'내용 : 29','2020-10-27 12:15:51.867000','제목 : 29','2020-10-27 12:15:51.867000','user09'),(937,'내용 : 30','2020-10-27 12:15:51.935000','제목 : 30','2020-10-27 12:15:51.935000','user00'),(938,'내용 : 31','2020-10-27 12:15:52.001000','제목 : 31','2020-10-27 12:15:52.001000','user01'),(939,'내용 : 32','2020-10-27 12:15:52.134000','제목 : 32','2020-10-27 12:15:52.134000','user02'),(940,'내용 : 33','2020-10-27 12:15:52.202000','제목 : 33','2020-10-27 12:15:52.202000','user03'),(941,'내용 : 34','2020-10-27 12:15:52.267000','제목 : 34','2020-10-27 12:15:52.267000','user04'),(942,'내용 : 35','2020-10-27 12:15:52.326000','제목 : 35','2020-10-27 12:15:52.326000','user05'),(943,'내용 : 36','2020-10-27 12:15:52.393000','제목 : 36','2020-10-27 12:15:52.393000','user06'),(944,'내용 : 37','2020-10-27 12:15:52.443000','제목 : 37','2020-10-27 12:15:52.443000','user07'),(945,'내용 : 38','2020-10-27 12:15:52.510000','제목 : 38','2020-10-27 12:15:52.510000','user08'),(946,'내용 : 39','2020-10-27 12:15:52.568000','제목 : 39','2020-10-27 12:15:52.568000','user09'),(947,'내용 : 40','2020-10-27 12:15:52.626000','제목 : 40','2020-10-27 12:15:52.626000','user00'),(948,'내용 : 41','2020-10-27 12:15:52.694000','제목 : 41','2020-10-27 12:15:52.694000','user01'),(949,'내용 : 42','2020-10-27 12:15:52.760000','제목 : 42','2020-10-27 12:15:52.760000','user02'),(950,'내용 : 43','2020-10-27 12:15:52.819000','제목 : 43','2020-10-27 12:15:52.819000','user03'),(951,'내용 : 44','2020-10-27 12:15:52.876000','제목 : 44','2020-10-27 12:15:52.876000','user04'),(952,'내용 : 45','2020-10-27 12:15:52.994000','제목 : 45','2020-10-27 12:15:52.994000','user05'),(953,'내용 : 46','2020-10-27 12:15:53.060000','제목 : 46','2020-10-27 12:15:53.060000','user06'),(954,'내용 : 47','2020-10-27 12:15:53.126000','제목 : 47','2020-10-27 12:15:53.126000','user07'),(955,'내용 : 48','2020-10-27 12:15:53.194000','제목 : 48','2020-10-27 12:15:53.194000','user08'),(956,'내용 : 49','2020-10-27 12:15:53.260000','제목 : 49','2020-10-27 12:15:53.260000','user09'),(957,'내용 : 50','2020-10-27 12:15:53.326000','제목 : 50','2020-10-27 12:15:53.326000','user00'),(958,'내용 : 51','2020-10-27 12:15:53.386000','제목 : 51','2020-10-27 12:15:53.386000','user01'),(959,'내용 : 52','2020-10-27 12:15:53.451000','제목 : 52','2020-10-27 12:15:53.451000','user02'),(960,'내용 : 53','2020-10-27 12:15:53.511000','제목 : 53','2020-10-27 12:15:53.511000','user03'),(961,'내용 : 54','2020-10-27 12:15:53.577000','제목 : 54','2020-10-27 12:15:53.577000','user04'),(962,'내용 : 55','2020-10-27 12:15:53.635000','제목 : 55','2020-10-27 12:15:53.635000','user05'),(963,'내용 : 56','2020-10-27 12:15:53.702000','제목 : 56','2020-10-27 12:15:53.702000','user06'),(964,'내용 : 57','2020-10-27 12:15:53.761000','제목 : 57','2020-10-27 12:15:53.761000','user07'),(965,'내용 : 58','2020-10-27 12:15:53.826000','제목 : 58','2020-10-27 12:15:53.826000','user08'),(966,'내용 : 59','2020-10-27 12:15:53.877000','제목 : 59','2020-10-27 12:15:53.877000','user09'),(967,'내용 : 60','2020-10-27 12:15:53.944000','제목 : 60','2020-10-27 12:15:53.944000','user00'),(968,'내용 : 61','2020-10-27 12:15:54.010000','제목 : 61','2020-10-27 12:15:54.010000','user01'),(969,'내용 : 62','2020-10-27 12:15:54.137000','제목 : 62','2020-10-27 12:15:54.137000','user02'),(970,'내용 : 63','2020-10-27 12:15:54.203000','제목 : 63','2020-10-27 12:15:54.203000','user03'),(971,'내용 : 64','2020-10-27 12:15:54.261000','제목 : 64','2020-10-27 12:15:54.261000','user04'),(972,'내용 : 65','2020-10-27 12:15:54.369000','제목 : 65','2020-10-27 12:15:54.369000','user05'),(973,'내용 : 66','2020-10-27 12:15:54.435000','제목 : 66','2020-10-27 12:15:54.435000','user06'),(974,'내용 : 67','2020-10-27 12:15:54.581000','제목 : 67','2020-10-27 12:15:54.581000','user07'),(975,'내용 : 68','2020-10-27 12:15:54.641000','제목 : 68','2020-10-27 12:15:54.641000','user08'),(976,'내용 : 69','2020-10-27 12:15:54.740000','제목 : 69','2020-10-27 12:15:54.740000','user09'),(977,'내용 : 70','2020-10-27 12:15:54.798000','제목 : 70','2020-10-27 12:15:54.798000','user00'),(978,'내용 : 71','2020-10-27 12:15:54.857000','제목 : 71','2020-10-27 12:15:54.857000','user01'),(979,'내용 : 72','2020-10-27 12:15:54.915000','제목 : 72','2020-10-27 12:15:54.915000','user02'),(980,'내용 : 73','2020-10-27 12:15:54.973000','제목 : 73','2020-10-27 12:15:54.973000','user03'),(981,'내용 : 74','2020-10-27 12:15:55.032000','제목 : 74','2020-10-27 12:15:55.032000','user04'),(982,'내용 : 75','2020-10-27 12:15:55.090000','제목 : 75','2020-10-27 12:15:55.090000','user05'),(983,'내용 : 76','2020-10-27 12:15:55.149000','제목 : 76','2020-10-27 12:15:55.149000','user06'),(984,'내용 : 77','2020-10-27 12:15:55.207000','제목 : 77','2020-10-27 12:15:55.207000','user07'),(985,'내용 : 78','2020-10-27 12:15:55.266000','제목 : 78','2020-10-27 12:15:55.266000','user08'),(986,'내용 : 79','2020-10-27 12:15:55.324000','제목 : 79','2020-10-27 12:15:55.324000','user09'),(987,'내용 : 80','2020-10-27 12:15:55.383000','제목 : 80','2020-10-27 12:15:55.383000','user00'),(988,'내용 : 81','2020-10-27 12:15:55.433000','제목 : 81','2020-10-27 12:15:55.433000','user01'),(989,'내용 : 82','2020-10-27 12:15:55.490000','제목 : 82','2020-10-27 12:15:55.490000','user02'),(990,'내용 : 83','2020-10-27 12:15:55.549000','제목 : 83','2020-10-27 12:15:55.549000','user03'),(991,'내용 : 84','2020-10-27 12:15:55.607000','제목 : 84','2020-10-27 12:15:55.607000','user04'),(992,'내용 : 85','2020-10-27 12:15:55.666000','제목 : 85','2020-10-27 12:15:55.666000','user05'),(993,'내용 : 86','2020-10-27 12:15:55.724000','제목 : 86','2020-10-27 12:15:55.724000','user06'),(994,'내용 : 87','2020-10-27 12:15:55.782000','제목 : 87','2020-10-27 12:15:55.782000','user07'),(995,'내용 : 88','2020-10-27 12:15:55.903000','제목 : 88','2020-10-27 12:15:55.903000','user08'),(996,'내용 : 89','2020-10-27 12:15:55.991000','제목 : 89','2020-10-27 12:15:55.991000','user09'),(997,'내용 : 90','2020-10-27 12:15:56.050000','제목 : 90','2020-10-27 12:15:56.050000','user00'),(998,'내용 : 91','2020-10-27 12:15:56.116000','제목 : 91','2020-10-27 12:15:56.116000','user01'),(999,'내용 : 92','2020-10-27 12:15:56.174000','제목 : 92','2020-10-27 12:15:56.174000','user02'),(1000,'내용 : 93','2020-10-27 12:15:56.258000','제목 : 93','2020-10-27 12:15:56.258000','user03'),(1001,'내용 : 94','2020-10-27 12:15:56.341000','제목 : 94','2020-10-27 12:15:56.341000','user04'),(1002,'내용 : 95','2020-10-27 12:15:56.399000','제목 : 95','2020-10-27 12:15:56.399000','user05'),(1003,'내용 : 96','2020-10-27 12:15:56.458000','제목 : 96','2020-10-27 12:15:56.458000','user06'),(1004,'내용 : 97','2020-10-27 12:15:56.517000','제목 : 97','2020-10-27 12:15:56.517000','user07'),(1005,'내용 : 98','2020-10-27 12:15:56.566000','제목 : 98','2020-10-27 12:15:56.566000','user08'),(1006,'내용 : 99','2020-10-27 12:15:56.626000','제목 : 99','2020-10-27 12:15:56.626000','user09'),(1007,'내용 : 100','2020-10-27 12:15:56.742000','제목 : 100','2020-10-27 12:15:56.742000','user00'),(1008,'내용 : 101','2020-10-27 12:15:56.800000','제목 : 101','2020-10-27 12:15:56.800000','user01'),(1009,'내용 : 102','2020-10-27 12:15:56.886000','제목 : 102','2020-10-27 12:15:56.886000','user02'),(1010,'내용 : 103','2020-10-27 12:15:56.944000','제목 : 103','2020-10-27 12:15:56.944000','user03'),(1011,'내용 : 104','2020-10-27 12:15:57.061000','제목 : 104','2020-10-27 12:15:57.061000','user04'),(1012,'내용 : 105','2020-10-27 12:15:57.119000','제목 : 105','2020-10-27 12:15:57.119000','user05'),(1013,'내용 : 106','2020-10-27 12:15:57.211000','제목 : 106','2020-10-27 12:15:57.211000','user06'),(1014,'내용 : 107','2020-10-27 12:15:57.269000','제목 : 107','2020-10-27 12:15:57.269000','user07'),(1015,'내용 : 108','2020-10-27 12:15:57.386000','제목 : 108','2020-10-27 12:15:57.386000','user08'),(1016,'내용 : 109','2020-10-27 12:15:57.445000','제목 : 109','2020-10-27 12:15:57.445000','user09'),(1017,'내용 : 110','2020-10-27 12:15:57.503000','제목 : 110','2020-10-27 12:15:57.503000','user00'),(1018,'내용 : 111','2020-10-27 12:15:57.562000','제목 : 111','2020-10-27 12:15:57.562000','user01'),(1019,'내용 : 112','2020-10-27 12:15:57.620000','제목 : 112','2020-10-27 12:15:57.620000','user02'),(1020,'내용 : 113','2020-10-27 12:15:57.679000','제목 : 113','2020-10-27 12:15:57.679000','user03'),(1021,'내용 : 114','2020-10-27 12:15:57.736000','제목 : 114','2020-10-27 12:15:57.736000','user04'),(1022,'내용 : 115','2020-10-27 12:15:57.795000','제목 : 115','2020-10-27 12:15:57.795000','user05'),(1023,'내용 : 116','2020-10-27 12:15:57.853000','제목 : 116','2020-10-27 12:15:57.853000','user06'),(1024,'내용 : 117','2020-10-27 12:15:57.911000','제목 : 117','2020-10-27 12:15:57.911000','user07'),(1025,'내용 : 118','2020-10-27 12:15:57.970000','제목 : 118','2020-10-27 12:15:57.970000','user08'),(1026,'내용 : 119','2020-10-27 12:15:58.028000','제목 : 119','2020-10-27 12:15:58.028000','user09'),(1027,'내용 : 120','2020-10-27 12:15:58.078000','제목 : 120','2020-10-27 12:15:58.078000','user00'),(1028,'내용 : 121','2020-10-27 12:15:58.137000','제목 : 121','2020-10-27 12:15:58.137000','user01'),(1029,'내용 : 122','2020-10-27 12:15:58.195000','제목 : 122','2020-10-27 12:15:58.195000','user02'),(1030,'내용 : 123','2020-10-27 12:15:58.254000','제목 : 123','2020-10-27 12:15:58.254000','user03'),(1031,'내용 : 124','2020-10-27 12:15:58.321000','제목 : 124','2020-10-27 12:15:58.321000','user04'),(1032,'내용 : 125','2020-10-27 12:15:58.379000','제목 : 125','2020-10-27 12:15:58.379000','user05'),(1033,'내용 : 126','2020-10-27 12:15:58.436000','제목 : 126','2020-10-27 12:15:58.436000','user06'),(1034,'내용 : 127','2020-10-27 12:15:58.495000','제목 : 127','2020-10-27 12:15:58.495000','user07'),(1035,'내용 : 128','2020-10-27 12:15:58.621000','제목 : 128','2020-10-27 12:15:58.621000','user08'),(1036,'내용 : 129','2020-10-27 12:15:58.687000','제목 : 129','2020-10-27 12:15:58.687000','user09'),(1037,'내용 : 130','2020-10-27 12:15:58.833000','제목 : 130','2020-10-27 12:15:58.833000','user00'),(1038,'내용 : 131','2020-10-27 12:15:58.892000','제목 : 131','2020-10-27 12:15:58.892000','user01'),(1039,'내용 : 132','2020-10-27 12:15:58.958000','제목 : 132','2020-10-27 12:15:58.958000','user02'),(1040,'내용 : 133','2020-10-27 12:15:59.016000','제목 : 133','2020-10-27 12:15:59.016000','user03'),(1041,'내용 : 134','2020-10-27 12:15:59.109000','제목 : 134','2020-10-27 12:15:59.109000','user04'),(1042,'내용 : 135','2020-10-27 12:15:59.167000','제목 : 135','2020-10-27 12:15:59.167000','user05'),(1043,'내용 : 136','2020-10-27 12:15:59.291000','제목 : 136','2020-10-27 12:15:59.291000','user06'),(1044,'내용 : 137','2020-10-27 12:15:59.420000','제목 : 137','2020-10-27 12:15:59.420000','user07'),(1045,'내용 : 138','2020-10-27 12:15:59.479000','제목 : 138','2020-10-27 12:15:59.479000','user08'),(1046,'내용 : 139','2020-10-27 12:15:59.545000','제목 : 139','2020-10-27 12:15:59.545000','user09'),(1047,'내용 : 140','2020-10-27 12:15:59.628000','제목 : 140','2020-10-27 12:15:59.628000','user00'),(1048,'내용 : 141','2020-10-27 12:15:59.687000','제목 : 141','2020-10-27 12:15:59.687000','user01'),(1049,'내용 : 142','2020-10-27 12:15:59.736000','제목 : 142','2020-10-27 12:15:59.736000','user02'),(1050,'내용 : 143','2020-10-27 12:15:59.796000','제목 : 143','2020-10-27 12:15:59.796000','user03'),(1051,'내용 : 144','2020-10-27 12:15:59.905000','제목 : 144','2020-10-27 12:15:59.905000','user04'),(1052,'내용 : 145','2020-10-27 12:15:59.987000','제목 : 145','2020-10-27 12:15:59.987000','user05'),(1053,'내용 : 146','2020-10-27 12:16:00.045000','제목 : 146','2020-10-27 12:16:00.045000','user06'),(1054,'내용 : 147','2020-10-27 12:16:00.121000','제목 : 147','2020-10-27 12:16:00.121000','user07'),(1055,'내용 : 148','2020-10-27 12:16:00.187000','제목 : 148','2020-10-27 12:16:00.187000','user08'),(1056,'내용 : 149','2020-10-27 12:16:00.329000','제목 : 149','2020-10-27 12:16:00.329000','user09'),(1057,'내용 : 150','2020-10-27 12:16:00.487000','제목 : 150','2020-10-27 12:16:00.487000','user00'),(1058,'내용 : 151','2020-10-27 12:16:00.546000','제목 : 151','2020-10-27 12:16:00.546000','user01'),(1059,'내용 : 152','2020-10-27 12:16:00.646000','제목 : 152','2020-10-27 12:16:00.646000','user02'),(1060,'내용 : 153','2020-10-27 12:16:00.713000','제목 : 153','2020-10-27 12:16:00.713000','user03'),(1061,'내용 : 154','2020-10-27 12:16:00.837000','제목 : 154','2020-10-27 12:16:00.837000','user04'),(1062,'내용 : 155','2020-10-27 12:16:00.937000','제목 : 155','2020-10-27 12:16:00.937000','user05'),(1063,'내용 : 156','2020-10-27 12:16:00.996000','제목 : 156','2020-10-27 12:16:00.996000','user06'),(1064,'내용 : 157','2020-10-27 12:16:01.055000','제목 : 157','2020-10-27 12:16:01.055000','user07'),(1065,'내용 : 158','2020-10-27 12:16:01.112000','제목 : 158','2020-10-27 12:16:01.112000','user08'),(1066,'내용 : 159','2020-10-27 12:16:01.179000','제목 : 159','2020-10-27 12:16:01.179000','user09'),(1067,'내용 : 160','2020-10-27 12:16:01.237000','제목 : 160','2020-10-27 12:16:01.237000','user00'),(1068,'내용 : 161','2020-10-27 12:16:01.305000','제목 : 161','2020-10-27 12:16:01.305000','user01'),(1069,'내용 : 162','2020-10-27 12:16:01.371000','제목 : 162','2020-10-27 12:16:01.371000','user02'),(1070,'내용 : 163','2020-10-27 12:16:01.429000','제목 : 163','2020-10-27 12:16:01.429000','user03'),(1071,'내용 : 164','2020-10-27 12:16:01.487000','제목 : 164','2020-10-27 12:16:01.487000','user04'),(1072,'내용 : 165','2020-10-27 12:16:01.546000','제목 : 165','2020-10-27 12:16:01.546000','user05'),(1073,'내용 : 166','2020-10-27 12:16:01.604000','제목 : 166','2020-10-27 12:16:01.604000','user06'),(1074,'내용 : 167','2020-10-27 12:16:01.664000','제목 : 167','2020-10-27 12:16:01.664000','user07'),(1075,'내용 : 168','2020-10-27 12:16:01.721000','제목 : 168','2020-10-27 12:16:01.721000','user08'),(1076,'내용 : 169','2020-10-27 12:16:01.843000','제목 : 169','2020-10-27 12:16:01.843000','user09'),(1077,'내용 : 170','2020-10-27 12:16:01.917000','제목 : 170','2020-10-27 12:16:01.917000','user00'),(1078,'내용 : 171','2020-10-27 12:16:02.000000','제목 : 171','2020-10-27 12:16:02.000000','user01'),(1079,'내용 : 172','2020-10-27 12:16:02.061000','제목 : 172','2020-10-27 12:16:02.061000','user02'),(1080,'내용 : 173','2020-10-27 12:16:02.160000','제목 : 173','2020-10-27 12:16:02.160000','user03'),(1081,'내용 : 174','2020-10-27 12:16:02.276000','제목 : 174','2020-10-27 12:16:02.276000','user04'),(1082,'내용 : 175','2020-10-27 12:16:02.335000','제목 : 175','2020-10-27 12:16:02.335000','user05'),(1083,'내용 : 176','2020-10-27 12:16:02.393000','제목 : 176','2020-10-27 12:16:02.393000','user06'),(1084,'내용 : 177','2020-10-27 12:16:02.451000','제목 : 177','2020-10-27 12:16:02.451000','user07'),(1085,'내용 : 178','2020-10-27 12:16:02.509000','제목 : 178','2020-10-27 12:16:02.509000','user08'),(1086,'내용 : 179','2020-10-27 12:16:02.567000','제목 : 179','2020-10-27 12:16:02.567000','user09'),(1087,'내용 : 180','2020-10-27 12:16:02.627000','제목 : 180','2020-10-27 12:16:02.627000','user00'),(1088,'내용 : 181','2020-10-27 12:16:02.685000','제목 : 181','2020-10-27 12:16:02.685000','user01'),(1089,'내용 : 182','2020-10-27 12:16:02.743000','제목 : 182','2020-10-27 12:16:02.743000','user02'),(1090,'내용 : 183','2020-10-27 12:16:02.801000','제목 : 183','2020-10-27 12:16:02.801000','user03'),(1091,'내용 : 184','2020-10-27 12:16:02.859000','제목 : 184','2020-10-27 12:16:02.859000','user04'),(1092,'내용 : 185','2020-10-27 12:16:02.909000','제목 : 185','2020-10-27 12:16:02.909000','user05'),(1093,'내용 : 186','2020-10-27 12:16:02.968000','제목 : 186','2020-10-27 12:16:02.968000','user06'),(1094,'내용 : 187','2020-10-27 12:16:03.026000','제목 : 187','2020-10-27 12:16:03.026000','user07'),(1095,'내용 : 188','2020-10-27 12:16:03.084000','제목 : 188','2020-10-27 12:16:03.084000','user08'),(1096,'내용 : 189','2020-10-27 12:16:03.142000','제목 : 189','2020-10-27 12:16:03.142000','user09');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_members`
--

DROP TABLE IF EXISTS `tbl_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_members` (
  `uid` varchar(255) NOT NULL,
  `unmae` varchar(255) DEFAULT NULL,
  `upw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_members`
--

LOCK TABLES `tbl_members` WRITE;
/*!40000 ALTER TABLE `tbl_members` DISABLE KEYS */;
INSERT INTO `tbl_members` VALUES ('user1','사용자1','pw1'),('user10','사용자10','pw10'),('user100','사용자100','pw100'),('user11','사용자11','pw11'),('user12','사용자12','pw12'),('user13','사용자13','pw13'),('user14','사용자14','pw14'),('user15','사용자15','pw15'),('user16','사용자16','pw16'),('user17','사용자17','pw17'),('user18','사용자18','pw18'),('user19','사용자19','pw19'),('user2','사용자2','pw2'),('user20','사용자20','pw20'),('user21','사용자21','pw21'),('user22','사용자22','pw22'),('user23','사용자23','pw23'),('user24','사용자24','pw24'),('user25','사용자25','pw25'),('user26','사용자26','pw26'),('user27','사용자27','pw27'),('user28','사용자28','pw28'),('user29','사용자29','pw29'),('user3','사용자3','pw3'),('user30','사용자30','pw30'),('user31','사용자31','pw31'),('user32','사용자32','pw32'),('user33','사용자33','pw33'),('user34','사용자34','pw34'),('user35','사용자35','pw35'),('user36','사용자36','pw36'),('user37','사용자37','pw37'),('user38','사용자38','pw38'),('user39','사용자39','pw39'),('user4','사용자4','pw4'),('user40','사용자40','pw40'),('user41','사용자41','pw41'),('user42','사용자42','pw42'),('user43','사용자43','pw43'),('user44','사용자44','pw44'),('user45','사용자45','pw45'),('user46','사용자46','pw46'),('user47','사용자47','pw47'),('user48','사용자48','pw48'),('user49','사용자49','pw49'),('user5','사용자5','pw5'),('user50','사용자50','pw50'),('user51','사용자51','pw51'),('user52','사용자52','pw52'),('user53','사용자53','pw53'),('user54','사용자54','pw54'),('user55','사용자55','pw55'),('user56','사용자56','pw56'),('user57','사용자57','pw57'),('user58','사용자58','pw58'),('user59','사용자59','pw59'),('user6','사용자6','pw6'),('user60','사용자60','pw60'),('user61','사용자61','pw61'),('user62','사용자62','pw62'),('user63','사용자63','pw63'),('user64','사용자64','pw64'),('user65','사용자65','pw65'),('user66','사용자66','pw66'),('user67','사용자67','pw67'),('user68','사용자68','pw68'),('user69','사용자69','pw69'),('user7','사용자7','pw7'),('user70','사용자70','pw70'),('user71','사용자71','pw71'),('user72','사용자72','pw72'),('user73','사용자73','pw73'),('user74','사용자74','pw74'),('user75','사용자75','pw75'),('user76','사용자76','pw76'),('user77','사용자77','pw77'),('user78','사용자78','pw78'),('user79','사용자79','pw79'),('user8','사용자8','pw8'),('user80','사용자80','pw80'),('user81','사용자81','pw81'),('user82','사용자82','pw82'),('user83','사용자83','pw83'),('user84','사용자84','pw84'),('user85','사용자85','pw85'),('user86','사용자86','pw86'),('user87','사용자87','pw87'),('user88','사용자88','pw88'),('user89','사용자89','pw89'),('user9','사용자9','pw9'),('user90','사용자90','pw90'),('user91','사용자91','pw91'),('user92','사용자92','pw92'),('user93','사용자93','pw93'),('user94','사용자94','pw94'),('user95','사용자95','pw95'),('user96','사용자96','pw96'),('user97','사용자97','pw97'),('user98','사용자98','pw98'),('user99','사용자99','pw99');
/*!40000 ALTER TABLE `tbl_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_profile`
--

DROP TABLE IF EXISTS `tbl_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_profile` (
  `fno` bigint(20) NOT NULL AUTO_INCREMENT,
  `current` bit(1) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `memvbr_uid` varchar(255) DEFAULT NULL,
  `member_uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fno`),
  KEY `FKhqhkjyv8y8hupmgwkogh3922b` (`memvbr_uid`),
  KEY `FKhvsb89t46nv1one9hbodhrswo` (`member_uid`),
  CONSTRAINT `FKhqhkjyv8y8hupmgwkogh3922b` FOREIGN KEY (`memvbr_uid`) REFERENCES `tbl_members` (`uid`),
  CONSTRAINT `FKhvsb89t46nv1one9hbodhrswo` FOREIGN KEY (`member_uid`) REFERENCES `tbl_members` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_profile`
--

LOCK TABLES `tbl_profile` WRITE;
/*!40000 ALTER TABLE `tbl_profile` DISABLE KEYS */;
INSERT INTO `tbl_profile` VALUES (1,_binary '','face1.jpg',NULL,'user1');
/*!40000 ALTER TABLE `tbl_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_webboards`
--

DROP TABLE IF EXISTS `tbl_webboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_webboards` (
  `bno` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_webboards`
--

LOCK TABLES `tbl_webboards` WRITE;
/*!40000 ALTER TABLE `tbl_webboards` DISABLE KEYS */;
INSERT INTO `tbl_webboards` VALUES (1,'Content Sample ....... 1 of Board ','2020-10-30 16:34:41','Sample Board Title 1','2020-10-30 16:34:41','user01'),(2,'Content Sample ....... 2 of Board ','2020-10-30 16:34:41','Sample Board Title 2','2020-10-30 16:34:41','user02'),(3,'Content Sample ....... 3 of Board ','2020-10-30 16:34:41','Sample Board Title 3','2020-10-30 16:34:41','user03'),(4,'Content Sample ....... 4 of Board ','2020-10-30 16:34:41','Sample Board Title 4','2020-10-30 16:34:41','user04'),(5,'Content Sample ....... 5 of Board ','2020-10-30 16:34:41','Sample Board Title 5','2020-10-30 16:34:41','user05'),(6,'Content Sample ....... 6 of Board ','2020-10-30 16:34:41','Sample Board Title 6','2020-10-30 16:34:41','user06'),(7,'Content Sample ....... 7 of Board ','2020-10-30 16:34:41','Sample Board Title 7','2020-10-30 16:34:41','user07'),(8,'Content Sample ....... 8 of Board ','2020-10-30 16:34:41','Sample Board Title 8','2020-10-30 16:34:41','user08'),(9,'Content Sample ....... 9 of Board ','2020-10-30 16:34:41','Sample Board Title 9','2020-10-30 16:34:41','user09'),(10,'Content Sample ....... 10 of Board ','2020-10-30 16:34:41','Sample Board Title 10','2020-10-30 16:34:41','user00'),(11,'Content Sample ....... 11 of Board ','2020-10-30 16:34:41','Sample Board Title 11','2020-10-30 16:34:41','user01'),(12,'Content Sample ....... 12 of Board ','2020-10-30 16:34:41','Sample Board Title 12','2020-10-30 16:34:41','user02'),(13,'Content Sample ....... 13 of Board ','2020-10-30 16:34:41','Sample Board Title 13','2020-10-30 16:34:41','user03'),(14,'Content Sample ....... 14 of Board ','2020-10-30 16:34:41','Sample Board Title 14','2020-10-30 16:34:41','user04'),(15,'Content Sample ....... 15 of Board ','2020-10-30 16:34:41','Sample Board Title 15','2020-10-30 16:34:41','user05'),(16,'Content Sample ....... 16 of Board ','2020-10-30 16:34:41','Sample Board Title 16','2020-10-30 16:34:41','user06'),(17,'Content Sample ....... 17 of Board ','2020-10-30 16:34:41','Sample Board Title 17','2020-10-30 16:34:41','user07'),(18,'Content Sample ....... 18 of Board ','2020-10-30 16:34:41','Sample Board Title 18','2020-10-30 16:34:41','user08'),(19,'Content Sample ....... 19 of Board ','2020-10-30 16:34:41','Sample Board Title 19','2020-10-30 16:34:41','user09'),(20,'Content Sample ....... 20 of Board ','2020-10-30 16:34:41','Sample Board Title 20','2020-10-30 16:34:41','user00'),(21,'Content Sample ....... 21 of Board ','2020-10-30 16:34:41','Sample Board Title 21','2020-10-30 16:34:41','user01'),(22,'Content Sample ....... 22 of Board ','2020-10-30 16:34:41','Sample Board Title 22','2020-10-30 16:34:41','user02'),(23,'Content Sample ....... 23 of Board ','2020-10-30 16:34:41','Sample Board Title 23','2020-10-30 16:34:41','user03'),(24,'Content Sample ....... 24 of Board ','2020-10-30 16:34:41','Sample Board Title 24','2020-10-30 16:34:41','user04'),(25,'Content Sample ....... 25 of Board ','2020-10-30 16:34:41','Sample Board Title 25','2020-10-30 16:34:41','user05'),(26,'Content Sample ....... 26 of Board ','2020-10-30 16:34:41','Sample Board Title 26','2020-10-30 16:34:41','user06'),(27,'Content Sample ....... 27 of Board ','2020-10-30 16:34:41','Sample Board Title 27','2020-10-30 16:34:41','user07'),(28,'Content Sample ....... 28 of Board ','2020-10-30 16:34:41','Sample Board Title 28','2020-10-30 16:34:41','user08'),(29,'Content Sample ....... 29 of Board ','2020-10-30 16:34:41','Sample Board Title 29','2020-10-30 16:34:41','user09'),(30,'Content Sample ....... 30 of Board ','2020-10-30 16:34:42','Sample Board Title 30','2020-10-30 16:34:42','user00'),(31,'Content Sample ....... 31 of Board ','2020-10-30 16:34:42','Sample Board Title 31','2020-10-30 16:34:42','user01'),(32,'Content Sample ....... 32 of Board ','2020-10-30 16:34:42','Sample Board Title 32','2020-10-30 16:34:42','user02'),(33,'Content Sample ....... 33 of Board ','2020-10-30 16:34:42','Sample Board Title 33','2020-10-30 16:34:42','user03'),(34,'Content Sample ....... 34 of Board ','2020-10-30 16:34:42','Sample Board Title 34','2020-10-30 16:34:42','user04'),(35,'Content Sample ....... 35 of Board ','2020-10-30 16:34:42','Sample Board Title 35','2020-10-30 16:34:42','user05'),(36,'Content Sample ....... 36 of Board ','2020-10-30 16:34:42','Sample Board Title 36','2020-10-30 16:34:42','user06'),(37,'Content Sample ....... 37 of Board ','2020-10-30 16:34:42','Sample Board Title 37','2020-10-30 16:34:42','user07'),(38,'Content Sample ....... 38 of Board ','2020-10-30 16:34:42','Sample Board Title 38','2020-10-30 16:34:42','user08'),(39,'Content Sample ....... 39 of Board ','2020-10-30 16:34:42','Sample Board Title 39','2020-10-30 16:34:42','user09'),(40,'Content Sample ....... 40 of Board ','2020-10-30 16:34:42','Sample Board Title 40','2020-10-30 16:34:42','user00'),(41,'Content Sample ....... 41 of Board ','2020-10-30 16:34:42','Sample Board Title 41','2020-10-30 16:34:42','user01'),(42,'Content Sample ....... 42 of Board ','2020-10-30 16:34:42','Sample Board Title 42','2020-10-30 16:34:42','user02'),(43,'Content Sample ....... 43 of Board ','2020-10-30 16:34:42','Sample Board Title 43','2020-10-30 16:34:42','user03'),(44,'Content Sample ....... 44 of Board ','2020-10-30 16:34:42','Sample Board Title 44','2020-10-30 16:34:42','user04'),(45,'Content Sample ....... 45 of Board ','2020-10-30 16:34:42','Sample Board Title 45','2020-10-30 16:34:42','user05'),(46,'Content Sample ....... 46 of Board ','2020-10-30 16:34:42','Sample Board Title 46','2020-10-30 16:34:42','user06'),(47,'Content Sample ....... 47 of Board ','2020-10-30 16:34:42','Sample Board Title 47','2020-10-30 16:34:42','user07'),(48,'Content Sample ....... 48 of Board ','2020-10-30 16:34:42','Sample Board Title 48','2020-10-30 16:34:42','user08'),(49,'Content Sample ....... 49 of Board ','2020-10-30 16:34:42','Sample Board Title 49','2020-10-30 16:34:42','user09'),(50,'Content Sample ....... 50 of Board ','2020-10-30 16:34:42','Sample Board Title 50','2020-10-30 16:34:42','user00'),(51,'Content Sample ....... 51 of Board ','2020-10-30 16:34:42','Sample Board Title 51','2020-10-30 16:34:42','user01'),(52,'Content Sample ....... 52 of Board ','2020-10-30 16:34:42','Sample Board Title 52','2020-10-30 16:34:42','user02'),(53,'Content Sample ....... 53 of Board ','2020-10-30 16:34:42','Sample Board Title 53','2020-10-30 16:34:42','user03'),(54,'Content Sample ....... 54 of Board ','2020-10-30 16:34:42','Sample Board Title 54','2020-10-30 16:34:42','user04'),(55,'Content Sample ....... 55 of Board ','2020-10-30 16:34:42','Sample Board Title 55','2020-10-30 16:34:42','user05'),(56,'Content Sample ....... 56 of Board ','2020-10-30 16:34:42','Sample Board Title 56','2020-10-30 16:34:42','user06'),(57,'Content Sample ....... 57 of Board ','2020-10-30 16:34:43','Sample Board Title 57','2020-10-30 16:34:43','user07'),(58,'Content Sample ....... 58 of Board ','2020-10-30 16:34:43','Sample Board Title 58','2020-10-30 16:34:43','user08'),(59,'Content Sample ....... 59 of Board ','2020-10-30 16:34:43','Sample Board Title 59','2020-10-30 16:34:43','user09'),(60,'Content Sample ....... 60 of Board ','2020-10-30 16:34:43','Sample Board Title 60','2020-10-30 16:34:43','user00'),(61,'Content Sample ....... 61 of Board ','2020-10-30 16:34:43','Sample Board Title 61','2020-10-30 16:34:43','user01'),(62,'Content Sample ....... 62 of Board ','2020-10-30 16:34:43','Sample Board Title 62','2020-10-30 16:34:43','user02'),(63,'Content Sample ....... 63 of Board ','2020-10-30 16:34:43','Sample Board Title 63','2020-10-30 16:34:43','user03'),(64,'Content Sample ....... 64 of Board ','2020-10-30 16:34:43','Sample Board Title 64','2020-10-30 16:34:43','user04'),(65,'Content Sample ....... 65 of Board ','2020-10-30 16:34:43','Sample Board Title 65','2020-10-30 16:34:43','user05'),(66,'Content Sample ....... 66 of Board ','2020-10-30 16:34:43','Sample Board Title 66','2020-10-30 16:34:43','user06'),(67,'Content Sample ....... 67 of Board ','2020-10-30 16:34:43','Sample Board Title 67','2020-10-30 16:34:43','user07'),(68,'Content Sample ....... 68 of Board ','2020-10-30 16:34:43','Sample Board Title 68','2020-10-30 16:34:43','user08'),(69,'Content Sample ....... 69 of Board ','2020-10-30 16:34:43','Sample Board Title 69','2020-10-30 16:34:43','user09'),(70,'Content Sample ....... 70 of Board ','2020-10-30 16:34:43','Sample Board Title 70','2020-10-30 16:34:43','user00'),(71,'Content Sample ....... 71 of Board ','2020-10-30 16:34:43','Sample Board Title 71','2020-10-30 16:34:43','user01'),(72,'Content Sample ....... 72 of Board ','2020-10-30 16:34:43','Sample Board Title 72','2020-10-30 16:34:43','user02'),(73,'Content Sample ....... 73 of Board ','2020-10-30 16:34:43','Sample Board Title 73','2020-10-30 16:34:43','user03'),(74,'Content Sample ....... 74 of Board ','2020-10-30 16:34:43','Sample Board Title 74','2020-10-30 16:34:43','user04'),(75,'Content Sample ....... 75 of Board ','2020-10-30 16:34:43','Sample Board Title 75','2020-10-30 16:34:43','user05'),(76,'Content Sample ....... 76 of Board ','2020-10-30 16:34:43','Sample Board Title 76','2020-10-30 16:34:43','user06'),(77,'Content Sample ....... 77 of Board ','2020-10-30 16:34:43','Sample Board Title 77','2020-10-30 16:34:43','user07'),(78,'Content Sample ....... 78 of Board ','2020-10-30 16:34:43','Sample Board Title 78','2020-10-30 16:34:43','user08'),(79,'Content Sample ....... 79 of Board ','2020-10-30 16:34:43','Sample Board Title 79','2020-10-30 16:34:43','user09'),(80,'Content Sample ....... 80 of Board ','2020-10-30 16:34:43','Sample Board Title 80','2020-10-30 16:34:43','user00'),(81,'Content Sample ....... 81 of Board ','2020-10-30 16:34:43','Sample Board Title 81','2020-10-30 16:34:43','user01'),(82,'Content Sample ....... 82 of Board ','2020-10-30 16:34:43','Sample Board Title 82','2020-10-30 16:34:43','user02'),(83,'Content Sample ....... 83 of Board ','2020-10-30 16:34:44','Sample Board Title 83','2020-10-30 16:34:44','user03'),(84,'Content Sample ....... 84 of Board ','2020-10-30 16:34:44','Sample Board Title 84','2020-10-30 16:34:44','user04'),(85,'Content Sample ....... 85 of Board ','2020-10-30 16:34:44','Sample Board Title 85','2020-10-30 16:34:44','user05'),(86,'Content Sample ....... 86 of Board ','2020-10-30 16:34:44','Sample Board Title 86','2020-10-30 16:34:44','user06'),(87,'Content Sample ....... 87 of Board ','2020-10-30 16:34:44','Sample Board Title 87','2020-10-30 16:34:44','user07'),(88,'Content Sample ....... 88 of Board ','2020-10-30 16:34:44','Sample Board Title 88','2020-10-30 16:34:44','user08'),(89,'Content Sample ....... 89 of Board ','2020-10-30 16:34:44','Sample Board Title 89','2020-10-30 16:34:44','user09'),(90,'Content Sample ....... 90 of Board ','2020-10-30 16:34:44','Sample Board Title 90','2020-10-30 16:34:44','user00'),(91,'Content Sample ....... 91 of Board ','2020-10-30 16:34:44','Sample Board Title 91','2020-10-30 16:34:44','user01'),(92,'Content Sample ....... 92 of Board ','2020-10-30 16:34:44','Sample Board Title 92','2020-10-30 16:34:44','user02'),(93,'Content Sample ....... 93 of Board ','2020-10-30 16:34:44','Sample Board Title 93','2020-10-30 16:34:44','user03'),(94,'Content Sample ....... 94 of Board ','2020-10-30 16:34:44','Sample Board Title 94','2020-10-30 16:34:44','user04'),(95,'Content Sample ....... 95 of Board ','2020-10-30 16:34:44','Sample Board Title 95','2020-10-30 16:34:44','user05'),(96,'Content Sample ....... 96 of Board ','2020-10-30 16:34:44','Sample Board Title 96','2020-10-30 16:34:44','user06'),(97,'Content Sample ....... 97 of Board ','2020-10-30 16:34:44','Sample Board Title 97','2020-10-30 16:34:44','user07'),(98,'Content Sample ....... 98 of Board ','2020-10-30 16:34:44','Sample Board Title 98','2020-10-30 16:34:44','user08'),(99,'Content Sample ....... 99 of Board ','2020-10-30 16:34:44','Sample Board Title 99','2020-10-30 16:34:44','user09'),(100,'Content Sample ....... 100 of Board ','2020-10-30 16:34:44','Sample Board Title 100','2020-10-30 16:34:44','user00'),(101,'Content Sample ....... 101 of Board ','2020-10-30 16:34:44','Sample Board Title 101','2020-10-30 16:34:44','user01'),(102,'Content Sample ....... 102 of Board ','2020-10-30 16:34:44','Sample Board Title 102','2020-10-30 16:34:44','user02'),(103,'Content Sample ....... 103 of Board ','2020-10-30 16:34:44','Sample Board Title 103','2020-10-30 16:34:44','user03'),(104,'Content Sample ....... 104 of Board ','2020-10-30 16:34:44','Sample Board Title 104','2020-10-30 16:34:44','user04'),(105,'Content Sample ....... 105 of Board ','2020-10-30 16:34:44','Sample Board Title 105','2020-10-30 16:34:44','user05'),(106,'Content Sample ....... 106 of Board ','2020-10-30 16:34:44','Sample Board Title 106','2020-10-30 16:34:44','user06'),(107,'Content Sample ....... 107 of Board ','2020-10-30 16:34:44','Sample Board Title 107','2020-10-30 16:34:44','user07'),(108,'Content Sample ....... 108 of Board ','2020-10-30 16:34:44','Sample Board Title 108','2020-10-30 16:34:44','user08'),(109,'Content Sample ....... 109 of Board ','2020-10-30 16:34:44','Sample Board Title 109','2020-10-30 16:34:44','user09'),(110,'Content Sample ....... 110 of Board ','2020-10-30 16:34:44','Sample Board Title 110','2020-10-30 16:34:44','user00'),(111,'Content Sample ....... 111 of Board ','2020-10-30 16:34:44','Sample Board Title 111','2020-10-30 16:34:44','user01'),(112,'Content Sample ....... 112 of Board ','2020-10-30 16:34:44','Sample Board Title 112','2020-10-30 16:34:44','user02'),(113,'Content Sample ....... 113 of Board ','2020-10-30 16:34:44','Sample Board Title 113','2020-10-30 16:34:44','user03'),(114,'Content Sample ....... 114 of Board ','2020-10-30 16:34:44','Sample Board Title 114','2020-10-30 16:34:44','user04'),(115,'Content Sample ....... 115 of Board ','2020-10-30 16:34:45','Sample Board Title 115','2020-10-30 16:34:45','user05'),(116,'Content Sample ....... 116 of Board ','2020-10-30 16:34:45','Sample Board Title 116','2020-10-30 16:34:45','user06'),(117,'Content Sample ....... 117 of Board ','2020-10-30 16:34:45','Sample Board Title 117','2020-10-30 16:34:45','user07'),(118,'Content Sample ....... 118 of Board ','2020-10-30 16:34:45','Sample Board Title 118','2020-10-30 16:34:45','user08'),(119,'Content Sample ....... 119 of Board ','2020-10-30 16:34:45','Sample Board Title 119','2020-10-30 16:34:45','user09'),(120,'Content Sample ....... 120 of Board ','2020-10-30 16:34:45','Sample Board Title 120','2020-10-30 16:34:45','user00'),(121,'Content Sample ....... 121 of Board ','2020-10-30 16:34:45','Sample Board Title 121','2020-10-30 16:34:45','user01'),(122,'Content Sample ....... 122 of Board ','2020-10-30 16:34:45','Sample Board Title 122','2020-10-30 16:34:45','user02'),(123,'Content Sample ....... 123 of Board ','2020-10-30 16:34:45','Sample Board Title 123','2020-10-30 16:34:45','user03'),(124,'Content Sample ....... 124 of Board ','2020-10-30 16:34:45','Sample Board Title 124','2020-10-30 16:34:45','user04'),(125,'Content Sample ....... 125 of Board ','2020-10-30 16:34:45','Sample Board Title 125','2020-10-30 16:34:45','user05'),(126,'Content Sample ....... 126 of Board ','2020-10-30 16:34:45','Sample Board Title 126','2020-10-30 16:34:45','user06'),(127,'Content Sample ....... 127 of Board ','2020-10-30 16:34:45','Sample Board Title 127','2020-10-30 16:34:45','user07'),(128,'Content Sample ....... 128 of Board ','2020-10-30 16:34:45','Sample Board Title 128','2020-10-30 16:34:45','user08'),(129,'Content Sample ....... 129 of Board ','2020-10-30 16:34:45','Sample Board Title 129','2020-10-30 16:34:45','user09'),(130,'Content Sample ....... 130 of Board ','2020-10-30 16:34:45','Sample Board Title 130','2020-10-30 16:34:45','user00'),(131,'Content Sample ....... 131 of Board ','2020-10-30 16:34:45','Sample Board Title 131','2020-10-30 16:34:45','user01'),(132,'Content Sample ....... 132 of Board ','2020-10-30 16:34:45','Sample Board Title 132','2020-10-30 16:34:45','user02'),(133,'Content Sample ....... 133 of Board ','2020-10-30 16:34:45','Sample Board Title 133','2020-10-30 16:34:45','user03'),(134,'Content Sample ....... 134 of Board ','2020-10-30 16:34:45','Sample Board Title 134','2020-10-30 16:34:45','user04'),(135,'Content Sample ....... 135 of Board ','2020-10-30 16:34:45','Sample Board Title 135','2020-10-30 16:34:45','user05'),(136,'Content Sample ....... 136 of Board ','2020-10-30 16:34:46','Sample Board Title 136','2020-10-30 16:34:46','user06'),(137,'Content Sample ....... 137 of Board ','2020-10-30 16:34:46','Sample Board Title 137','2020-10-30 16:34:46','user07'),(138,'Content Sample ....... 138 of Board ','2020-10-30 16:34:46','Sample Board Title 138','2020-10-30 16:34:46','user08'),(139,'Content Sample ....... 139 of Board ','2020-10-30 16:34:46','Sample Board Title 139','2020-10-30 16:34:46','user09'),(140,'Content Sample ....... 140 of Board ','2020-10-30 16:34:46','Sample Board Title 140','2020-10-30 16:34:46','user00'),(141,'Content Sample ....... 141 of Board ','2020-10-30 16:34:46','Sample Board Title 141','2020-10-30 16:34:46','user01'),(142,'Content Sample ....... 142 of Board ','2020-10-30 16:34:46','Sample Board Title 142','2020-10-30 16:34:46','user02'),(143,'Content Sample ....... 143 of Board ','2020-10-30 16:34:46','Sample Board Title 143','2020-10-30 16:34:46','user03'),(144,'Content Sample ....... 144 of Board ','2020-10-30 16:34:46','Sample Board Title 144','2020-10-30 16:34:46','user04'),(145,'Content Sample ....... 145 of Board ','2020-10-30 16:34:46','Sample Board Title 145','2020-10-30 16:34:46','user05'),(146,'Content Sample ....... 146 of Board ','2020-10-30 16:34:46','Sample Board Title 146','2020-10-30 16:34:46','user06'),(147,'Content Sample ....... 147 of Board ','2020-10-30 16:34:46','Sample Board Title 147','2020-10-30 16:34:46','user07'),(148,'Content Sample ....... 148 of Board ','2020-10-30 16:34:46','Sample Board Title 148','2020-10-30 16:34:46','user08'),(149,'Content Sample ....... 149 of Board ','2020-10-30 16:34:46','Sample Board Title 149','2020-10-30 16:34:46','user09'),(150,'Content Sample ....... 150 of Board ','2020-10-30 16:34:46','Sample Board Title 150','2020-10-30 16:34:46','user00'),(151,'Content Sample ....... 151 of Board ','2020-10-30 16:34:46','Sample Board Title 151','2020-10-30 16:34:46','user01'),(152,'Content Sample ....... 152 of Board ','2020-10-30 16:34:46','Sample Board Title 152','2020-10-30 16:34:46','user02'),(153,'Content Sample ....... 153 of Board ','2020-10-30 16:34:46','Sample Board Title 153','2020-10-30 16:34:46','user03'),(154,'Content Sample ....... 154 of Board ','2020-10-30 16:34:46','Sample Board Title 154','2020-10-30 16:34:46','user04'),(155,'Content Sample ....... 155 of Board ','2020-10-30 16:34:46','Sample Board Title 155','2020-10-30 16:34:46','user05'),(156,'Content Sample ....... 156 of Board ','2020-10-30 16:34:46','Sample Board Title 156','2020-10-30 16:34:46','user06'),(157,'Content Sample ....... 157 of Board ','2020-10-30 16:34:46','Sample Board Title 157','2020-10-30 16:34:46','user07'),(158,'Content Sample ....... 158 of Board ','2020-10-30 16:34:46','Sample Board Title 158','2020-10-30 16:34:46','user08'),(159,'Content Sample ....... 159 of Board ','2020-10-30 16:34:46','Sample Board Title 159','2020-10-30 16:34:46','user09'),(160,'Content Sample ....... 160 of Board ','2020-10-30 16:34:46','Sample Board Title 160','2020-10-30 16:34:46','user00'),(161,'Content Sample ....... 161 of Board ','2020-10-30 16:34:46','Sample Board Title 161','2020-10-30 16:34:46','user01'),(162,'Content Sample ....... 162 of Board ','2020-10-30 16:34:46','Sample Board Title 162','2020-10-30 16:34:46','user02'),(163,'Content Sample ....... 163 of Board ','2020-10-30 16:34:46','Sample Board Title 163','2020-10-30 16:34:46','user03'),(164,'Content Sample ....... 164 of Board ','2020-10-30 16:34:46','Sample Board Title 164','2020-10-30 16:34:46','user04'),(165,'Content Sample ....... 165 of Board ','2020-10-30 16:34:47','Sample Board Title 165','2020-10-30 16:34:47','user05'),(166,'Content Sample ....... 166 of Board ','2020-10-30 16:34:47','Sample Board Title 166','2020-10-30 16:34:47','user06'),(167,'Content Sample ....... 167 of Board ','2020-10-30 16:34:47','Sample Board Title 167','2020-10-30 16:34:47','user07'),(168,'Content Sample ....... 168 of Board ','2020-10-30 16:34:47','Sample Board Title 168','2020-10-30 16:34:47','user08'),(169,'Content Sample ....... 169 of Board ','2020-10-30 16:34:47','Sample Board Title 169','2020-10-30 16:34:47','user09'),(170,'Content Sample ....... 170 of Board ','2020-10-30 16:34:47','Sample Board Title 170','2020-10-30 16:34:47','user00'),(171,'Content Sample ....... 171 of Board ','2020-10-30 16:34:47','Sample Board Title 171','2020-10-30 16:34:47','user01'),(172,'Content Sample ....... 172 of Board ','2020-10-30 16:34:47','Sample Board Title 172','2020-10-30 16:34:47','user02'),(173,'Content Sample ....... 173 of Board ','2020-10-30 16:34:47','Sample Board Title 173','2020-10-30 16:34:47','user03'),(174,'Content Sample ....... 174 of Board ','2020-10-30 16:34:47','Sample Board Title 174','2020-10-30 16:34:47','user04'),(175,'Content Sample ....... 175 of Board ','2020-10-30 16:34:47','Sample Board Title 175','2020-10-30 16:34:47','user05'),(176,'Content Sample ....... 176 of Board ','2020-10-30 16:34:47','Sample Board Title 176','2020-10-30 16:34:47','user06'),(177,'Content Sample ....... 177 of Board ','2020-10-30 16:34:47','Sample Board Title 177','2020-10-30 16:34:47','user07'),(178,'Content Sample ....... 178 of Board ','2020-10-30 16:34:47','Sample Board Title 178','2020-10-30 16:34:47','user08'),(179,'Content Sample ....... 179 of Board ','2020-10-30 16:34:47','Sample Board Title 179','2020-10-30 16:34:47','user09'),(180,'Content Sample ....... 180 of Board ','2020-10-30 16:34:47','Sample Board Title 180','2020-10-30 16:34:47','user00'),(181,'Content Sample ....... 181 of Board ','2020-10-30 16:34:47','Sample Board Title 181','2020-10-30 16:34:47','user01'),(182,'Content Sample ....... 182 of Board ','2020-10-30 16:34:47','Sample Board Title 182','2020-10-30 16:34:47','user02'),(183,'Content Sample ....... 183 of Board ','2020-10-30 16:34:47','Sample Board Title 183','2020-10-30 16:34:47','user03'),(184,'Content Sample ....... 184 of Board ','2020-10-30 16:34:47','Sample Board Title 184','2020-10-30 16:34:47','user04'),(185,'Content Sample ....... 185 of Board ','2020-10-30 16:34:47','Sample Board Title 185','2020-10-30 16:34:47','user05'),(186,'Content Sample ....... 186 of Board ','2020-10-30 16:34:47','Sample Board Title 186','2020-10-30 16:34:47','user06'),(187,'Content Sample ....... 187 of Board ','2020-10-30 16:34:47','Sample Board Title 187','2020-10-30 16:34:47','user07'),(188,'Content Sample ....... 188 of Board ','2020-10-30 16:34:47','Sample Board Title 188','2020-10-30 16:34:47','user08'),(189,'Content Sample ....... 189 of Board ','2020-10-30 16:34:47','Sample Board Title 189','2020-10-30 16:34:47','user09'),(190,'Content Sample ....... 190 of Board ','2020-10-30 16:34:47','Sample Board Title 190','2020-10-30 16:34:47','user00'),(191,'Content Sample ....... 191 of Board ','2020-10-30 16:34:47','Sample Board Title 191','2020-10-30 16:34:47','user01'),(192,'Content Sample ....... 192 of Board ','2020-10-30 16:34:48','Sample Board Title 192','2020-10-30 16:34:48','user02'),(193,'Content Sample ....... 193 of Board ','2020-10-30 16:34:48','Sample Board Title 193','2020-10-30 16:34:48','user03'),(194,'Content Sample ....... 194 of Board ','2020-10-30 16:34:48','Sample Board Title 194','2020-10-30 16:34:48','user04'),(195,'Content Sample ....... 195 of Board ','2020-10-30 16:34:48','Sample Board Title 195','2020-10-30 16:34:48','user05'),(196,'Content Sample ....... 196 of Board ','2020-10-30 16:34:48','Sample Board Title 196','2020-10-30 16:34:48','user06'),(197,'Content Sample ....... 197 of Board ','2020-10-30 16:34:48','Sample Board Title 197','2020-10-30 16:34:48','user07'),(198,'Content Sample ....... 198 of Board ','2020-10-30 16:34:48','Sample Board Title 198','2020-10-30 16:34:48','user08'),(199,'Content Sample ....... 199 of Board ','2020-10-30 16:34:48','Sample Board Title 199','2020-10-30 16:34:48','user09'),(200,'Content Sample ....... 200 of Board ','2020-10-30 16:34:48','Sample Board Title 200','2020-10-30 16:34:48','user00'),(201,'Content Sample ....... 201 of Board ','2020-10-30 16:34:48','Sample Board Title 201','2020-10-30 16:34:48','user01'),(202,'Content Sample ....... 202 of Board ','2020-10-30 16:34:48','Sample Board Title 202','2020-10-30 16:34:48','user02'),(203,'Content Sample ....... 203 of Board ','2020-10-30 16:34:48','Sample Board Title 203','2020-10-30 16:34:48','user03'),(204,'Content Sample ....... 204 of Board ','2020-10-30 16:34:48','Sample Board Title 204','2020-10-30 16:34:48','user04'),(205,'Content Sample ....... 205 of Board ','2020-10-30 16:34:48','Sample Board Title 205','2020-10-30 16:34:48','user05'),(206,'Content Sample ....... 206 of Board ','2020-10-30 16:34:48','Sample Board Title 206','2020-10-30 16:34:48','user06'),(207,'Content Sample ....... 207 of Board ','2020-10-30 16:34:48','Sample Board Title 207','2020-10-30 16:34:48','user07'),(208,'Content Sample ....... 208 of Board ','2020-10-30 16:34:48','Sample Board Title 208','2020-10-30 16:34:48','user08'),(209,'Content Sample ....... 209 of Board ','2020-10-30 16:34:48','Sample Board Title 209','2020-10-30 16:34:48','user09'),(210,'Content Sample ....... 210 of Board ','2020-10-30 16:34:48','Sample Board Title 210','2020-10-30 16:34:48','user00'),(211,'Content Sample ....... 211 of Board ','2020-10-30 16:34:48','Sample Board Title 211','2020-10-30 16:34:48','user01'),(212,'Content Sample ....... 212 of Board ','2020-10-30 16:34:48','Sample Board Title 212','2020-10-30 16:34:48','user02'),(213,'Content Sample ....... 213 of Board ','2020-10-30 16:34:48','Sample Board Title 213','2020-10-30 16:34:48','user03'),(214,'Content Sample ....... 214 of Board ','2020-10-30 16:34:48','Sample Board Title 214','2020-10-30 16:34:48','user04'),(215,'Content Sample ....... 215 of Board ','2020-10-30 16:34:49','Sample Board Title 215','2020-10-30 16:34:49','user05'),(216,'Content Sample ....... 216 of Board ','2020-10-30 16:34:49','Sample Board Title 216','2020-10-30 16:34:49','user06'),(217,'Content Sample ....... 217 of Board ','2020-10-30 16:34:49','Sample Board Title 217','2020-10-30 16:34:49','user07'),(218,'Content Sample ....... 218 of Board ','2020-10-30 16:34:49','Sample Board Title 218','2020-10-30 16:34:49','user08'),(219,'Content Sample ....... 219 of Board ','2020-10-30 16:34:49','Sample Board Title 219','2020-10-30 16:34:49','user09'),(220,'Content Sample ....... 220 of Board ','2020-10-30 16:34:49','Sample Board Title 220','2020-10-30 16:34:49','user00'),(221,'Content Sample ....... 221 of Board ','2020-10-30 16:34:49','Sample Board Title 221','2020-10-30 16:34:49','user01'),(222,'Content Sample ....... 222 of Board ','2020-10-30 16:34:49','Sample Board Title 222','2020-10-30 16:34:49','user02'),(223,'Content Sample ....... 223 of Board ','2020-10-30 16:34:49','Sample Board Title 223','2020-10-30 16:34:49','user03'),(224,'Content Sample ....... 224 of Board ','2020-10-30 16:34:49','Sample Board Title 224','2020-10-30 16:34:49','user04'),(225,'Content Sample ....... 225 of Board ','2020-10-30 16:34:49','Sample Board Title 225','2020-10-30 16:34:49','user05'),(226,'Content Sample ....... 226 of Board ','2020-10-30 16:34:49','Sample Board Title 226','2020-10-30 16:34:49','user06'),(227,'Content Sample ....... 227 of Board ','2020-10-30 16:34:49','Sample Board Title 227','2020-10-30 16:34:49','user07'),(228,'Content Sample ....... 228 of Board ','2020-10-30 16:34:49','Sample Board Title 228','2020-10-30 16:34:49','user08'),(229,'Content Sample ....... 229 of Board ','2020-10-30 16:34:49','Sample Board Title 229','2020-10-30 16:34:49','user09'),(230,'Content Sample ....... 230 of Board ','2020-10-30 16:34:49','Sample Board Title 230','2020-10-30 16:34:49','user00'),(231,'Content Sample ....... 231 of Board ','2020-10-30 16:34:49','Sample Board Title 231','2020-10-30 16:34:49','user01'),(232,'Content Sample ....... 232 of Board ','2020-10-30 16:34:49','Sample Board Title 232','2020-10-30 16:34:49','user02'),(233,'Content Sample ....... 233 of Board ','2020-10-30 16:34:49','Sample Board Title 233','2020-10-30 16:34:49','user03'),(234,'Content Sample ....... 234 of Board ','2020-10-30 16:34:49','Sample Board Title 234','2020-10-30 16:34:49','user04'),(235,'Content Sample ....... 235 of Board ','2020-10-30 16:34:49','Sample Board Title 235','2020-10-30 16:34:49','user05'),(236,'Content Sample ....... 236 of Board ','2020-10-30 16:34:49','Sample Board Title 236','2020-10-30 16:34:49','user06'),(237,'Content Sample ....... 237 of Board ','2020-10-30 16:34:49','Sample Board Title 237','2020-10-30 16:34:49','user07'),(238,'Content Sample ....... 238 of Board ','2020-10-30 16:34:49','Sample Board Title 238','2020-10-30 16:34:49','user08'),(239,'Content Sample ....... 239 of Board ','2020-10-30 16:34:49','Sample Board Title 239','2020-10-30 16:34:49','user09'),(240,'Content Sample ....... 240 of Board ','2020-10-30 16:34:49','Sample Board Title 240','2020-10-30 16:34:49','user00'),(241,'Content Sample ....... 241 of Board ','2020-10-30 16:34:49','Sample Board Title 241','2020-10-30 16:34:49','user01'),(242,'Content Sample ....... 242 of Board ','2020-10-30 16:34:50','Sample Board Title 242','2020-10-30 16:34:50','user02'),(243,'Content Sample ....... 243 of Board ','2020-10-30 16:34:50','Sample Board Title 243','2020-10-30 16:34:50','user03'),(244,'Content Sample ....... 244 of Board ','2020-10-30 16:34:50','Sample Board Title 244','2020-10-30 16:34:50','user04'),(245,'Content Sample ....... 245 of Board ','2020-10-30 16:34:50','Sample Board Title 245','2020-10-30 16:34:50','user05'),(246,'Content Sample ....... 246 of Board ','2020-10-30 16:34:50','Sample Board Title 246','2020-10-30 16:34:50','user06'),(247,'Content Sample ....... 247 of Board ','2020-10-30 16:34:50','Sample Board Title 247','2020-10-30 16:34:50','user07'),(248,'Content Sample ....... 248 of Board ','2020-10-30 16:34:50','Sample Board Title 248','2020-10-30 16:34:50','user08'),(249,'Content Sample ....... 249 of Board ','2020-10-30 16:34:50','Sample Board Title 249','2020-10-30 16:34:50','user09'),(250,'Content Sample ....... 250 of Board ','2020-10-30 16:34:50','Sample Board Title 250','2020-10-30 16:34:50','user00'),(251,'Content Sample ....... 251 of Board ','2020-10-30 16:34:50','Sample Board Title 251','2020-10-30 16:34:50','user01'),(252,'Content Sample ....... 252 of Board ','2020-10-30 16:34:50','Sample Board Title 252','2020-10-30 16:34:50','user02'),(253,'Content Sample ....... 253 of Board ','2020-10-30 16:34:50','Sample Board Title 253','2020-10-30 16:34:50','user03'),(254,'Content Sample ....... 254 of Board ','2020-10-30 16:34:50','Sample Board Title 254','2020-10-30 16:34:50','user04'),(255,'Content Sample ....... 255 of Board ','2020-10-30 16:34:50','Sample Board Title 255','2020-10-30 16:34:50','user05'),(256,'Content Sample ....... 256 of Board ','2020-10-30 16:34:50','Sample Board Title 256','2020-10-30 16:34:50','user06'),(257,'Content Sample ....... 257 of Board ','2020-10-30 16:34:50','Sample Board Title 257','2020-10-30 16:34:50','user07'),(258,'Content Sample ....... 258 of Board ','2020-10-30 16:34:50','Sample Board Title 258','2020-10-30 16:34:50','user08'),(259,'Content Sample ....... 259 of Board ','2020-10-30 16:34:50','Sample Board Title 259','2020-10-30 16:34:50','user09'),(260,'Content Sample ....... 260 of Board ','2020-10-30 16:34:50','Sample Board Title 260','2020-10-30 16:34:50','user00'),(261,'Content Sample ....... 261 of Board ','2020-10-30 16:34:50','Sample Board Title 261','2020-10-30 16:34:50','user01'),(262,'Content Sample ....... 262 of Board ','2020-10-30 16:34:50','Sample Board Title 262','2020-10-30 16:34:50','user02'),(263,'Content Sample ....... 263 of Board ','2020-10-30 16:34:50','Sample Board Title 263','2020-10-30 16:34:50','user03'),(264,'Content Sample ....... 264 of Board ','2020-10-30 16:34:50','Sample Board Title 264','2020-10-30 16:34:50','user04'),(265,'Content Sample ....... 265 of Board ','2020-10-30 16:34:50','Sample Board Title 265','2020-10-30 16:34:50','user05'),(266,'Content Sample ....... 266 of Board ','2020-10-30 16:34:50','Sample Board Title 266','2020-10-30 16:34:50','user06'),(267,'Content Sample ....... 267 of Board ','2020-10-30 16:34:50','Sample Board Title 267','2020-10-30 16:34:50','user07'),(268,'Content Sample ....... 268 of Board ','2020-10-30 16:34:50','Sample Board Title 268','2020-10-30 16:34:50','user08'),(269,'Content Sample ....... 269 of Board ','2020-10-30 16:34:50','Sample Board Title 269','2020-10-30 16:34:50','user09'),(270,'Content Sample ....... 270 of Board ','2020-10-30 16:34:51','Sample Board Title 270','2020-10-30 16:34:51','user00'),(271,'Content Sample ....... 271 of Board ','2020-10-30 16:34:51','Sample Board Title 271','2020-10-30 16:34:51','user01'),(272,'Content Sample ....... 272 of Board ','2020-10-30 16:34:51','Sample Board Title 272','2020-10-30 16:34:51','user02'),(273,'Content Sample ....... 273 of Board ','2020-10-30 16:34:51','Sample Board Title 273','2020-10-30 16:34:51','user03'),(274,'Content Sample ....... 274 of Board ','2020-10-30 16:34:51','Sample Board Title 274','2020-10-30 16:34:51','user04'),(275,'Content Sample ....... 275 of Board ','2020-10-30 16:34:51','Sample Board Title 275','2020-10-30 16:34:51','user05'),(276,'Content Sample ....... 276 of Board ','2020-10-30 16:34:51','Sample Board Title 276','2020-10-30 16:34:51','user06'),(277,'Content Sample ....... 277 of Board ','2020-10-30 16:34:51','Sample Board Title 277','2020-10-30 16:34:51','user07'),(278,'Content Sample ....... 278 of Board ','2020-10-30 16:34:51','Sample Board Title 278','2020-10-30 16:34:51','user08'),(279,'Content Sample ....... 279 of Board ','2020-10-30 16:34:51','Sample Board Title 279','2020-10-30 16:34:51','user09'),(280,'Content Sample ....... 280 of Board ','2020-10-30 16:34:51','Sample Board Title 280','2020-10-30 16:34:51','user00'),(281,'Content Sample ....... 281 of Board ','2020-10-30 16:34:51','Sample Board Title 281','2020-10-30 16:34:51','user01'),(282,'Content Sample ....... 282 of Board ','2020-10-30 16:34:51','Sample Board Title 282','2020-10-30 16:34:51','user02'),(283,'Content Sample ....... 283 of Board ','2020-10-30 16:34:51','Sample Board Title 283','2020-10-30 16:34:51','user03'),(284,'Content Sample ....... 284 of Board ','2020-10-30 16:34:51','Sample Board Title 284','2020-10-30 16:34:51','user04'),(285,'Content Sample ....... 285 of Board ','2020-10-30 16:34:51','Sample Board Title 285','2020-10-30 16:34:51','user05'),(286,'Content Sample ....... 286 of Board ','2020-10-30 16:34:51','Sample Board Title 286','2020-10-30 16:34:51','user06'),(287,'Content Sample ....... 287 of Board ','2020-10-30 16:34:51','Sample Board Title 287','2020-10-30 16:34:51','user07'),(288,'Content Sample ....... 288 of Board ','2020-10-30 16:34:51','Sample Board Title 288','2020-10-30 16:34:51','user08'),(289,'Content Sample ....... 289 of Board ','2020-10-30 16:34:51','Sample Board Title 289','2020-10-30 16:34:51','user09'),(290,'Content Sample ....... 290 of Board ','2020-10-30 16:34:51','Sample Board Title 290','2020-10-30 16:34:51','user00'),(291,'Content Sample ....... 291 of Board ','2020-10-30 16:34:51','Sample Board Title 291','2020-10-30 16:34:51','user01'),(292,'Content Sample ....... 292 of Board ','2020-10-30 16:34:51','Sample Board Title 292','2020-10-30 16:34:51','user02'),(293,'Content Sample ....... 293 of Board ','2020-10-30 16:34:51','Sample Board Title 293','2020-10-30 16:34:51','user03'),(294,'Content Sample ....... 294 of Board ','2020-10-30 16:34:51','Sample Board Title 294','2020-10-30 16:34:51','user04'),(295,'Content Sample ....... 295 of Board ','2020-10-30 16:34:51','Sample Board Title 295','2020-10-30 16:34:51','user05'),(296,'Content Sample ....... 296 of Board ','2020-10-30 16:34:51','Sample Board Title 296','2020-10-30 16:34:51','user06'),(297,'Content Sample ....... 297 of Board ','2020-10-30 16:34:51','Sample Board Title 297','2020-10-30 16:34:51','user07'),(298,'Content Sample ....... 298 of Board ','2020-10-30 16:34:51','Sample Board Title 298','2020-10-30 16:34:51','user08'),(299,'Content Sample ....... 299 of Board ','2020-10-30 16:34:51','Sample Board Title 299','2020-10-30 16:34:51','user09'),(300,'Content Sample ....... 300 of Board ','2020-10-30 16:34:51','Sample Board Title 300','2020-10-30 16:34:51','user00'),(301,'Content Sample ....... 1 of Board ','2020-10-30 16:38:31','Sample Board Title 1','2020-10-30 16:38:31','user01'),(302,'Content Sample ....... 2 of Board ','2020-10-30 16:38:31','Sample Board Title 2','2020-10-30 16:38:31','user02'),(303,'Content Sample ....... 3 of Board ','2020-10-30 16:38:31','Sample Board Title 3','2020-10-30 16:38:31','user03'),(304,'Content Sample ....... 4 of Board ','2020-10-30 16:38:31','Sample Board Title 4','2020-10-30 16:38:31','user04'),(305,'Content Sample ....... 5 of Board ','2020-10-30 16:38:31','Sample Board Title 5','2020-10-30 16:38:31','user05'),(306,'Content Sample ....... 6 of Board ','2020-10-30 16:38:31','Sample Board Title 6','2020-10-30 16:38:31','user06'),(307,'Content Sample ....... 7 of Board ','2020-10-30 16:38:31','Sample Board Title 7','2020-10-30 16:38:31','user07'),(308,'Content Sample ....... 8 of Board ','2020-10-30 16:38:31','Sample Board Title 8','2020-10-30 16:38:31','user08'),(309,'Content Sample ....... 9 of Board ','2020-10-30 16:38:31','Sample Board Title 9','2020-10-30 16:38:31','user09'),(310,'Content Sample ....... 10 of Board ','2020-10-30 16:38:31','Sample Board Title 10','2020-10-30 16:38:31','user00'),(311,'Content Sample ....... 11 of Board ','2020-10-30 16:38:31','Sample Board Title 11','2020-10-30 16:38:31','user01'),(312,'Content Sample ....... 12 of Board ','2020-10-30 16:38:31','Sample Board Title 12','2020-10-30 16:38:31','user02'),(313,'Content Sample ....... 13 of Board ','2020-10-30 16:38:31','Sample Board Title 13','2020-10-30 16:38:31','user03'),(314,'Content Sample ....... 14 of Board ','2020-10-30 16:38:31','Sample Board Title 14','2020-10-30 16:38:31','user04'),(315,'Content Sample ....... 15 of Board ','2020-10-30 16:38:31','Sample Board Title 15','2020-10-30 16:38:31','user05'),(316,'Content Sample ....... 16 of Board ','2020-10-30 16:38:31','Sample Board Title 16','2020-10-30 16:38:31','user06'),(317,'Content Sample ....... 17 of Board ','2020-10-30 16:38:31','Sample Board Title 17','2020-10-30 16:38:31','user07'),(318,'Content Sample ....... 18 of Board ','2020-10-30 16:38:31','Sample Board Title 18','2020-10-30 16:38:31','user08'),(319,'Content Sample ....... 19 of Board ','2020-10-30 16:38:31','Sample Board Title 19','2020-10-30 16:38:31','user09'),(320,'Content Sample ....... 20 of Board ','2020-10-30 16:38:31','Sample Board Title 20','2020-10-30 16:38:31','user00'),(321,'Content Sample ....... 21 of Board ','2020-10-30 16:38:31','Sample Board Title 21','2020-10-30 16:38:31','user01'),(322,'Content Sample ....... 22 of Board ','2020-10-30 16:38:32','Sample Board Title 22','2020-10-30 16:38:32','user02'),(323,'Content Sample ....... 23 of Board ','2020-10-30 16:38:32','Sample Board Title 23','2020-10-30 16:38:32','user03'),(324,'Content Sample ....... 24 of Board ','2020-10-30 16:38:32','Sample Board Title 24','2020-10-30 16:38:32','user04'),(325,'Content Sample ....... 25 of Board ','2020-10-30 16:38:32','Sample Board Title 25','2020-10-30 16:38:32','user05'),(326,'Content Sample ....... 26 of Board ','2020-10-30 16:38:32','Sample Board Title 26','2020-10-30 16:38:32','user06'),(327,'Content Sample ....... 27 of Board ','2020-10-30 16:38:32','Sample Board Title 27','2020-10-30 16:38:32','user07'),(328,'Content Sample ....... 28 of Board ','2020-10-30 16:38:32','Sample Board Title 28','2020-10-30 16:38:32','user08'),(329,'Content Sample ....... 29 of Board ','2020-10-30 16:38:32','Sample Board Title 29','2020-10-30 16:38:32','user09'),(330,'Content Sample ....... 30 of Board ','2020-10-30 16:38:32','Sample Board Title 30','2020-10-30 16:38:32','user00'),(331,'Content Sample ....... 31 of Board ','2020-10-30 16:38:32','Sample Board Title 31','2020-10-30 16:38:32','user01'),(332,'Content Sample ....... 32 of Board ','2020-10-30 16:38:32','Sample Board Title 32','2020-10-30 16:38:32','user02'),(333,'Content Sample ....... 33 of Board ','2020-10-30 16:38:32','Sample Board Title 33','2020-10-30 16:38:32','user03'),(334,'Content Sample ....... 34 of Board ','2020-10-30 16:38:32','Sample Board Title 34','2020-10-30 16:38:32','user04'),(335,'Content Sample ....... 35 of Board ','2020-10-30 16:38:32','Sample Board Title 35','2020-10-30 16:38:32','user05'),(336,'Content Sample ....... 36 of Board ','2020-10-30 16:38:32','Sample Board Title 36','2020-10-30 16:38:32','user06'),(337,'Content Sample ....... 37 of Board ','2020-10-30 16:38:32','Sample Board Title 37','2020-10-30 16:38:32','user07'),(338,'Content Sample ....... 38 of Board ','2020-10-30 16:38:32','Sample Board Title 38','2020-10-30 16:38:32','user08'),(339,'Content Sample ....... 39 of Board ','2020-10-30 16:38:32','Sample Board Title 39','2020-10-30 16:38:32','user09'),(340,'Content Sample ....... 40 of Board ','2020-10-30 16:38:32','Sample Board Title 40','2020-10-30 16:38:32','user00'),(341,'Content Sample ....... 41 of Board ','2020-10-30 16:38:32','Sample Board Title 41','2020-10-30 16:38:32','user01'),(342,'Content Sample ....... 42 of Board ','2020-10-30 16:38:32','Sample Board Title 42','2020-10-30 16:38:32','user02'),(343,'Content Sample ....... 43 of Board ','2020-10-30 16:38:32','Sample Board Title 43','2020-10-30 16:38:32','user03'),(344,'Content Sample ....... 44 of Board ','2020-10-30 16:38:32','Sample Board Title 44','2020-10-30 16:38:32','user04'),(345,'Content Sample ....... 45 of Board ','2020-10-30 16:38:32','Sample Board Title 45','2020-10-30 16:38:32','user05'),(346,'Content Sample ....... 46 of Board ','2020-10-30 16:38:32','Sample Board Title 46','2020-10-30 16:38:32','user06'),(347,'Content Sample ....... 47 of Board ','2020-10-30 16:38:32','Sample Board Title 47','2020-10-30 16:38:32','user07'),(348,'Content Sample ....... 48 of Board ','2020-10-30 16:38:32','Sample Board Title 48','2020-10-30 16:38:32','user08'),(349,'Content Sample ....... 49 of Board ','2020-10-30 16:38:32','Sample Board Title 49','2020-10-30 16:38:32','user09'),(350,'Content Sample ....... 50 of Board ','2020-10-30 16:38:32','Sample Board Title 50','2020-10-30 16:38:32','user00'),(351,'Content Sample ....... 51 of Board ','2020-10-30 16:38:32','Sample Board Title 51','2020-10-30 16:38:32','user01'),(352,'Content Sample ....... 52 of Board ','2020-10-30 16:38:32','Sample Board Title 52','2020-10-30 16:38:32','user02'),(353,'Content Sample ....... 53 of Board ','2020-10-30 16:38:32','Sample Board Title 53','2020-10-30 16:38:32','user03'),(354,'Content Sample ....... 54 of Board ','2020-10-30 16:38:32','Sample Board Title 54','2020-10-30 16:38:32','user04'),(355,'Content Sample ....... 55 of Board ','2020-10-30 16:38:32','Sample Board Title 55','2020-10-30 16:38:32','user05'),(356,'Content Sample ....... 56 of Board ','2020-10-30 16:38:33','Sample Board Title 56','2020-10-30 16:38:33','user06'),(357,'Content Sample ....... 57 of Board ','2020-10-30 16:38:33','Sample Board Title 57','2020-10-30 16:38:33','user07'),(358,'Content Sample ....... 58 of Board ','2020-10-30 16:38:33','Sample Board Title 58','2020-10-30 16:38:33','user08'),(359,'Content Sample ....... 59 of Board ','2020-10-30 16:38:33','Sample Board Title 59','2020-10-30 16:38:33','user09'),(360,'Content Sample ....... 60 of Board ','2020-10-30 16:38:33','Sample Board Title 60','2020-10-30 16:38:33','user00'),(361,'Content Sample ....... 61 of Board ','2020-10-30 16:38:33','Sample Board Title 61','2020-10-30 16:38:33','user01'),(362,'Content Sample ....... 62 of Board ','2020-10-30 16:38:33','Sample Board Title 62','2020-10-30 16:38:33','user02'),(363,'Content Sample ....... 63 of Board ','2020-10-30 16:38:33','Sample Board Title 63','2020-10-30 16:38:33','user03'),(364,'Content Sample ....... 64 of Board ','2020-10-30 16:38:33','Sample Board Title 64','2020-10-30 16:38:33','user04'),(365,'Content Sample ....... 65 of Board ','2020-10-30 16:38:33','Sample Board Title 65','2020-10-30 16:38:33','user05'),(366,'Content Sample ....... 66 of Board ','2020-10-30 16:38:33','Sample Board Title 66','2020-10-30 16:38:33','user06'),(367,'Content Sample ....... 67 of Board ','2020-10-30 16:38:33','Sample Board Title 67','2020-10-30 16:38:33','user07'),(368,'Content Sample ....... 68 of Board ','2020-10-30 16:38:33','Sample Board Title 68','2020-10-30 16:38:33','user08'),(369,'Content Sample ....... 69 of Board ','2020-10-30 16:38:33','Sample Board Title 69','2020-10-30 16:38:33','user09'),(370,'Content Sample ....... 70 of Board ','2020-10-30 16:38:33','Sample Board Title 70','2020-10-30 16:38:33','user00'),(371,'Content Sample ....... 71 of Board ','2020-10-30 16:38:33','Sample Board Title 71','2020-10-30 16:38:33','user01'),(372,'Content Sample ....... 72 of Board ','2020-10-30 16:38:33','Sample Board Title 72','2020-10-30 16:38:33','user02'),(373,'Content Sample ....... 73 of Board ','2020-10-30 16:38:33','Sample Board Title 73','2020-10-30 16:38:33','user03'),(374,'Content Sample ....... 74 of Board ','2020-10-30 16:38:33','Sample Board Title 74','2020-10-30 16:38:33','user04'),(375,'Content Sample ....... 75 of Board ','2020-10-30 16:38:33','Sample Board Title 75','2020-10-30 16:38:33','user05'),(376,'Content Sample ....... 76 of Board ','2020-10-30 16:38:33','Sample Board Title 76','2020-10-30 16:38:33','user06'),(377,'Content Sample ....... 77 of Board ','2020-10-30 16:38:33','Sample Board Title 77','2020-10-30 16:38:33','user07'),(378,'Content Sample ....... 78 of Board ','2020-10-30 16:38:33','Sample Board Title 78','2020-10-30 16:38:33','user08'),(379,'Content Sample ....... 79 of Board ','2020-10-30 16:38:33','Sample Board Title 79','2020-10-30 16:38:33','user09'),(380,'Content Sample ....... 80 of Board ','2020-10-30 16:38:33','Sample Board Title 80','2020-10-30 16:38:33','user00'),(381,'Content Sample ....... 81 of Board ','2020-10-30 16:38:33','Sample Board Title 81','2020-10-30 16:38:33','user01'),(382,'Content Sample ....... 82 of Board ','2020-10-30 16:38:33','Sample Board Title 82','2020-10-30 16:38:33','user02'),(383,'Content Sample ....... 83 of Board ','2020-10-30 16:38:33','Sample Board Title 83','2020-10-30 16:38:33','user03'),(384,'Content Sample ....... 84 of Board ','2020-10-30 16:38:33','Sample Board Title 84','2020-10-30 16:38:33','user04'),(385,'Content Sample ....... 85 of Board ','2020-10-30 16:38:33','Sample Board Title 85','2020-10-30 16:38:33','user05'),(386,'Content Sample ....... 86 of Board ','2020-10-30 16:38:33','Sample Board Title 86','2020-10-30 16:38:33','user06'),(387,'Content Sample ....... 87 of Board ','2020-10-30 16:38:34','Sample Board Title 87','2020-10-30 16:38:34','user07'),(388,'Content Sample ....... 88 of Board ','2020-10-30 16:38:34','Sample Board Title 88','2020-10-30 16:38:34','user08'),(389,'Content Sample ....... 89 of Board ','2020-10-30 16:38:34','Sample Board Title 89','2020-10-30 16:38:34','user09'),(390,'Content Sample ....... 90 of Board ','2020-10-30 16:38:34','Sample Board Title 90','2020-10-30 16:38:34','user00'),(391,'Content Sample ....... 91 of Board ','2020-10-30 16:38:34','Sample Board Title 91','2020-10-30 16:38:34','user01'),(392,'Content Sample ....... 92 of Board ','2020-10-30 16:38:34','Sample Board Title 92','2020-10-30 16:38:34','user02'),(393,'Content Sample ....... 93 of Board ','2020-10-30 16:38:34','Sample Board Title 93','2020-10-30 16:38:34','user03'),(394,'Content Sample ....... 94 of Board ','2020-10-30 16:38:34','Sample Board Title 94','2020-10-30 16:38:34','user04'),(395,'Content Sample ....... 95 of Board ','2020-10-30 16:38:34','Sample Board Title 95','2020-10-30 16:38:34','user05'),(396,'Content Sample ....... 96 of Board ','2020-10-30 16:38:34','Sample Board Title 96','2020-10-30 16:38:34','user06'),(397,'Content Sample ....... 97 of Board ','2020-10-30 16:38:34','Sample Board Title 97','2020-10-30 16:38:34','user07'),(398,'Content Sample ....... 98 of Board ','2020-10-30 16:38:34','Sample Board Title 98','2020-10-30 16:38:34','user08'),(399,'Content Sample ....... 99 of Board ','2020-10-30 16:38:34','Sample Board Title 99','2020-10-30 16:38:34','user09'),(400,'Content Sample ....... 100 of Board ','2020-10-30 16:38:34','Sample Board Title 100','2020-10-30 16:38:34','user00'),(401,'Content Sample ....... 101 of Board ','2020-10-30 16:38:34','Sample Board Title 101','2020-10-30 16:38:34','user01'),(402,'Content Sample ....... 102 of Board ','2020-10-30 16:38:34','Sample Board Title 102','2020-10-30 16:38:34','user02'),(403,'Content Sample ....... 103 of Board ','2020-10-30 16:38:34','Sample Board Title 103','2020-10-30 16:38:34','user03'),(404,'Content Sample ....... 104 of Board ','2020-10-30 16:38:34','Sample Board Title 104','2020-10-30 16:38:34','user04'),(405,'Content Sample ....... 105 of Board ','2020-10-30 16:38:34','Sample Board Title 105','2020-10-30 16:38:34','user05'),(406,'Content Sample ....... 106 of Board ','2020-10-30 16:38:34','Sample Board Title 106','2020-10-30 16:38:34','user06'),(407,'Content Sample ....... 107 of Board ','2020-10-30 16:38:34','Sample Board Title 107','2020-10-30 16:38:34','user07'),(408,'Content Sample ....... 108 of Board ','2020-10-30 16:38:34','Sample Board Title 108','2020-10-30 16:38:34','user08'),(409,'Content Sample ....... 109 of Board ','2020-10-30 16:38:34','Sample Board Title 109','2020-10-30 16:38:34','user09'),(410,'Content Sample ....... 110 of Board ','2020-10-30 16:38:34','Sample Board Title 110','2020-10-30 16:38:34','user00'),(411,'Content Sample ....... 111 of Board ','2020-10-30 16:38:34','Sample Board Title 111','2020-10-30 16:38:34','user01'),(412,'Content Sample ....... 112 of Board ','2020-10-30 16:38:34','Sample Board Title 112','2020-10-30 16:38:34','user02'),(413,'Content Sample ....... 113 of Board ','2020-10-30 16:38:34','Sample Board Title 113','2020-10-30 16:38:34','user03'),(414,'Content Sample ....... 114 of Board ','2020-10-30 16:38:34','Sample Board Title 114','2020-10-30 16:38:34','user04'),(415,'Content Sample ....... 115 of Board ','2020-10-30 16:38:34','Sample Board Title 115','2020-10-30 16:38:34','user05'),(416,'Content Sample ....... 116 of Board ','2020-10-30 16:38:34','Sample Board Title 116','2020-10-30 16:38:34','user06'),(417,'Content Sample ....... 117 of Board ','2020-10-30 16:38:34','Sample Board Title 117','2020-10-30 16:38:34','user07'),(418,'Content Sample ....... 118 of Board ','2020-10-30 16:38:34','Sample Board Title 118','2020-10-30 16:38:34','user08'),(419,'Content Sample ....... 119 of Board ','2020-10-30 16:38:34','Sample Board Title 119','2020-10-30 16:38:34','user09'),(420,'Content Sample ....... 120 of Board ','2020-10-30 16:38:34','Sample Board Title 120','2020-10-30 16:38:34','user00'),(421,'Content Sample ....... 121 of Board ','2020-10-30 16:38:35','Sample Board Title 121','2020-10-30 16:38:35','user01'),(422,'Content Sample ....... 122 of Board ','2020-10-30 16:38:35','Sample Board Title 122','2020-10-30 16:38:35','user02'),(423,'Content Sample ....... 123 of Board ','2020-10-30 16:38:35','Sample Board Title 123','2020-10-30 16:38:35','user03'),(424,'Content Sample ....... 124 of Board ','2020-10-30 16:38:35','Sample Board Title 124','2020-10-30 16:38:35','user04'),(425,'Content Sample ....... 125 of Board ','2020-10-30 16:38:35','Sample Board Title 125','2020-10-30 16:38:35','user05'),(426,'Content Sample ....... 126 of Board ','2020-10-30 16:38:35','Sample Board Title 126','2020-10-30 16:38:35','user06'),(427,'Content Sample ....... 127 of Board ','2020-10-30 16:38:35','Sample Board Title 127','2020-10-30 16:38:35','user07'),(428,'Content Sample ....... 128 of Board ','2020-10-30 16:38:35','Sample Board Title 128','2020-10-30 16:38:35','user08'),(429,'Content Sample ....... 129 of Board ','2020-10-30 16:38:35','Sample Board Title 129','2020-10-30 16:38:35','user09'),(430,'Content Sample ....... 130 of Board ','2020-10-30 16:38:35','Sample Board Title 130','2020-10-30 16:38:35','user00'),(431,'Content Sample ....... 131 of Board ','2020-10-30 16:38:35','Sample Board Title 131','2020-10-30 16:38:35','user01'),(432,'Content Sample ....... 132 of Board ','2020-10-30 16:38:35','Sample Board Title 132','2020-10-30 16:38:35','user02'),(433,'Content Sample ....... 133 of Board ','2020-10-30 16:38:35','Sample Board Title 133','2020-10-30 16:38:35','user03'),(434,'Content Sample ....... 134 of Board ','2020-10-30 16:38:35','Sample Board Title 134','2020-10-30 16:38:35','user04'),(435,'Content Sample ....... 135 of Board ','2020-10-30 16:38:35','Sample Board Title 135','2020-10-30 16:38:35','user05'),(436,'Content Sample ....... 136 of Board ','2020-10-30 16:38:35','Sample Board Title 136','2020-10-30 16:38:35','user06'),(437,'Content Sample ....... 137 of Board ','2020-10-30 16:38:35','Sample Board Title 137','2020-10-30 16:38:35','user07'),(438,'Content Sample ....... 138 of Board ','2020-10-30 16:38:35','Sample Board Title 138','2020-10-30 16:38:35','user08'),(439,'Content Sample ....... 139 of Board ','2020-10-30 16:38:35','Sample Board Title 139','2020-10-30 16:38:35','user09'),(440,'Content Sample ....... 140 of Board ','2020-10-30 16:38:35','Sample Board Title 140','2020-10-30 16:38:35','user00'),(441,'Content Sample ....... 141 of Board ','2020-10-30 16:38:35','Sample Board Title 141','2020-10-30 16:38:35','user01'),(442,'Content Sample ....... 142 of Board ','2020-10-30 16:38:35','Sample Board Title 142','2020-10-30 16:38:35','user02'),(443,'Content Sample ....... 143 of Board ','2020-10-30 16:38:35','Sample Board Title 143','2020-10-30 16:38:35','user03'),(444,'Content Sample ....... 144 of Board ','2020-10-30 16:38:35','Sample Board Title 144','2020-10-30 16:38:35','user04'),(445,'Content Sample ....... 145 of Board ','2020-10-30 16:38:35','Sample Board Title 145','2020-10-30 16:38:35','user05'),(446,'Content Sample ....... 146 of Board ','2020-10-30 16:38:35','Sample Board Title 146','2020-10-30 16:38:35','user06'),(447,'Content Sample ....... 147 of Board ','2020-10-30 16:38:35','Sample Board Title 147','2020-10-30 16:38:35','user07'),(448,'Content Sample ....... 148 of Board ','2020-10-30 16:38:35','Sample Board Title 148','2020-10-30 16:38:35','user08'),(449,'Content Sample ....... 149 of Board ','2020-10-30 16:38:36','Sample Board Title 149','2020-10-30 16:38:36','user09'),(450,'Content Sample ....... 150 of Board ','2020-10-30 16:38:36','Sample Board Title 150','2020-10-30 16:38:36','user00'),(451,'Content Sample ....... 151 of Board ','2020-10-30 16:38:36','Sample Board Title 151','2020-10-30 16:38:36','user01'),(452,'Content Sample ....... 152 of Board ','2020-10-30 16:38:36','Sample Board Title 152','2020-10-30 16:38:36','user02'),(453,'Content Sample ....... 153 of Board ','2020-10-30 16:38:36','Sample Board Title 153','2020-10-30 16:38:36','user03'),(454,'Content Sample ....... 154 of Board ','2020-10-30 16:38:36','Sample Board Title 154','2020-10-30 16:38:36','user04'),(455,'Content Sample ....... 155 of Board ','2020-10-30 16:38:36','Sample Board Title 155','2020-10-30 16:38:36','user05'),(456,'Content Sample ....... 156 of Board ','2020-10-30 16:38:36','Sample Board Title 156','2020-10-30 16:38:36','user06'),(457,'Content Sample ....... 157 of Board ','2020-10-30 16:38:36','Sample Board Title 157','2020-10-30 16:38:36','user07'),(458,'Content Sample ....... 158 of Board ','2020-10-30 16:38:36','Sample Board Title 158','2020-10-30 16:38:36','user08'),(459,'Content Sample ....... 159 of Board ','2020-10-30 16:38:36','Sample Board Title 159','2020-10-30 16:38:36','user09'),(460,'Content Sample ....... 160 of Board ','2020-10-30 16:38:36','Sample Board Title 160','2020-10-30 16:38:36','user00'),(461,'Content Sample ....... 161 of Board ','2020-10-30 16:38:36','Sample Board Title 161','2020-10-30 16:38:36','user01'),(462,'Content Sample ....... 162 of Board ','2020-10-30 16:38:36','Sample Board Title 162','2020-10-30 16:38:36','user02'),(463,'Content Sample ....... 163 of Board ','2020-10-30 16:38:36','Sample Board Title 163','2020-10-30 16:38:36','user03'),(464,'Content Sample ....... 164 of Board ','2020-10-30 16:38:36','Sample Board Title 164','2020-10-30 16:38:36','user04'),(465,'Content Sample ....... 165 of Board ','2020-10-30 16:38:36','Sample Board Title 165','2020-10-30 16:38:36','user05'),(466,'Content Sample ....... 166 of Board ','2020-10-30 16:38:36','Sample Board Title 166','2020-10-30 16:38:36','user06'),(467,'Content Sample ....... 167 of Board ','2020-10-30 16:38:36','Sample Board Title 167','2020-10-30 16:38:36','user07'),(468,'Content Sample ....... 168 of Board ','2020-10-30 16:38:36','Sample Board Title 168','2020-10-30 16:38:36','user08'),(469,'Content Sample ....... 169 of Board ','2020-10-30 16:38:36','Sample Board Title 169','2020-10-30 16:38:36','user09'),(470,'Content Sample ....... 170 of Board ','2020-10-30 16:38:36','Sample Board Title 170','2020-10-30 16:38:36','user00'),(471,'Content Sample ....... 171 of Board ','2020-10-30 16:38:36','Sample Board Title 171','2020-10-30 16:38:36','user01'),(472,'Content Sample ....... 172 of Board ','2020-10-30 16:38:36','Sample Board Title 172','2020-10-30 16:38:36','user02'),(473,'Content Sample ....... 173 of Board ','2020-10-30 16:38:36','Sample Board Title 173','2020-10-30 16:38:36','user03'),(474,'Content Sample ....... 174 of Board ','2020-10-30 16:38:36','Sample Board Title 174','2020-10-30 16:38:36','user04'),(475,'Content Sample ....... 175 of Board ','2020-10-30 16:38:36','Sample Board Title 175','2020-10-30 16:38:36','user05'),(476,'Content Sample ....... 176 of Board ','2020-10-30 16:38:36','Sample Board Title 176','2020-10-30 16:38:36','user06'),(477,'Content Sample ....... 177 of Board ','2020-10-30 16:38:36','Sample Board Title 177','2020-10-30 16:38:36','user07'),(478,'Content Sample ....... 178 of Board ','2020-10-30 16:38:36','Sample Board Title 178','2020-10-30 16:38:36','user08'),(479,'Content Sample ....... 179 of Board ','2020-10-30 16:38:36','Sample Board Title 179','2020-10-30 16:38:36','user09'),(480,'Content Sample ....... 180 of Board ','2020-10-30 16:38:36','Sample Board Title 180','2020-10-30 16:38:36','user00'),(481,'Content Sample ....... 181 of Board ','2020-10-30 16:38:36','Sample Board Title 181','2020-10-30 16:38:36','user01'),(482,'Content Sample ....... 182 of Board ','2020-10-30 16:38:36','Sample Board Title 182','2020-10-30 16:38:36','user02'),(483,'Content Sample ....... 183 of Board ','2020-10-30 16:38:36','Sample Board Title 183','2020-10-30 16:38:36','user03'),(484,'Content Sample ....... 184 of Board ','2020-10-30 16:38:37','Sample Board Title 184','2020-10-30 16:38:37','user04'),(485,'Content Sample ....... 185 of Board ','2020-10-30 16:38:37','Sample Board Title 185','2020-10-30 16:38:37','user05'),(486,'Content Sample ....... 186 of Board ','2020-10-30 16:38:37','Sample Board Title 186','2020-10-30 16:38:37','user06'),(487,'Content Sample ....... 187 of Board ','2020-10-30 16:38:37','Sample Board Title 187','2020-10-30 16:38:37','user07'),(488,'Content Sample ....... 188 of Board ','2020-10-30 16:38:37','Sample Board Title 188','2020-10-30 16:38:37','user08'),(489,'Content Sample ....... 189 of Board ','2020-10-30 16:38:37','Sample Board Title 189','2020-10-30 16:38:37','user09'),(490,'Content Sample ....... 190 of Board ','2020-10-30 16:38:37','Sample Board Title 190','2020-10-30 16:38:37','user00'),(491,'Content Sample ....... 191 of Board ','2020-10-30 16:38:37','Sample Board Title 191','2020-10-30 16:38:37','user01'),(492,'Content Sample ....... 192 of Board ','2020-10-30 16:38:37','Sample Board Title 192','2020-10-30 16:38:37','user02'),(493,'Content Sample ....... 193 of Board ','2020-10-30 16:38:37','Sample Board Title 193','2020-10-30 16:38:37','user03'),(494,'Content Sample ....... 194 of Board ','2020-10-30 16:38:37','Sample Board Title 194','2020-10-30 16:38:37','user04'),(495,'Content Sample ....... 195 of Board ','2020-10-30 16:38:37','Sample Board Title 195','2020-10-30 16:38:37','user05'),(496,'Content Sample ....... 196 of Board ','2020-10-30 16:38:37','Sample Board Title 196','2020-10-30 16:38:37','user06'),(497,'Content Sample ....... 197 of Board ','2020-10-30 16:38:37','Sample Board Title 197','2020-10-30 16:38:37','user07'),(498,'Content Sample ....... 198 of Board ','2020-10-30 16:38:37','Sample Board Title 198','2020-10-30 16:38:37','user08'),(499,'Content Sample ....... 199 of Board ','2020-10-30 16:38:37','Sample Board Title 199','2020-10-30 16:38:37','user09'),(500,'Content Sample ....... 200 of Board ','2020-10-30 16:38:37','Sample Board Title 200','2020-10-30 16:38:37','user00'),(501,'Content Sample ....... 201 of Board ','2020-10-30 16:38:37','Sample Board Title 201','2020-10-30 16:38:37','user01'),(502,'Content Sample ....... 202 of Board ','2020-10-30 16:38:37','Sample Board Title 202','2020-10-30 16:38:37','user02'),(503,'Content Sample ....... 203 of Board ','2020-10-30 16:38:37','Sample Board Title 203','2020-10-30 16:38:37','user03'),(504,'Content Sample ....... 204 of Board ','2020-10-30 16:38:37','Sample Board Title 204','2020-10-30 16:38:37','user04'),(505,'Content Sample ....... 205 of Board ','2020-10-30 16:38:37','Sample Board Title 205','2020-10-30 16:38:37','user05'),(506,'Content Sample ....... 206 of Board ','2020-10-30 16:38:37','Sample Board Title 206','2020-10-30 16:38:37','user06'),(507,'Content Sample ....... 207 of Board ','2020-10-30 16:38:37','Sample Board Title 207','2020-10-30 16:38:37','user07'),(508,'Content Sample ....... 208 of Board ','2020-10-30 16:38:37','Sample Board Title 208','2020-10-30 16:38:37','user08'),(509,'Content Sample ....... 209 of Board ','2020-10-30 16:38:37','Sample Board Title 209','2020-10-30 16:38:37','user09'),(510,'Content Sample ....... 210 of Board ','2020-10-30 16:38:37','Sample Board Title 210','2020-10-30 16:38:37','user00'),(511,'Content Sample ....... 211 of Board ','2020-10-30 16:38:37','Sample Board Title 211','2020-10-30 16:38:37','user01'),(512,'Content Sample ....... 212 of Board ','2020-10-30 16:38:37','Sample Board Title 212','2020-10-30 16:38:37','user02'),(513,'Content Sample ....... 213 of Board ','2020-10-30 16:38:37','Sample Board Title 213','2020-10-30 16:38:37','user03'),(514,'Content Sample ....... 214 of Board ','2020-10-30 16:38:38','Sample Board Title 214','2020-10-30 16:38:38','user04'),(515,'Content Sample ....... 215 of Board ','2020-10-30 16:38:38','Sample Board Title 215','2020-10-30 16:38:38','user05'),(516,'Content Sample ....... 216 of Board ','2020-10-30 16:38:38','Sample Board Title 216','2020-10-30 16:38:38','user06'),(517,'Content Sample ....... 217 of Board ','2020-10-30 16:38:38','Sample Board Title 217','2020-10-30 16:38:38','user07'),(518,'Content Sample ....... 218 of Board ','2020-10-30 16:38:38','Sample Board Title 218','2020-10-30 16:38:38','user08'),(519,'Content Sample ....... 219 of Board ','2020-10-30 16:38:38','Sample Board Title 219','2020-10-30 16:38:38','user09'),(520,'Content Sample ....... 220 of Board ','2020-10-30 16:38:38','Sample Board Title 220','2020-10-30 16:38:38','user00'),(521,'Content Sample ....... 221 of Board ','2020-10-30 16:38:38','Sample Board Title 221','2020-10-30 16:38:38','user01'),(522,'Content Sample ....... 222 of Board ','2020-10-30 16:38:38','Sample Board Title 222','2020-10-30 16:38:38','user02'),(523,'Content Sample ....... 223 of Board ','2020-10-30 16:38:38','Sample Board Title 223','2020-10-30 16:38:38','user03'),(524,'Content Sample ....... 224 of Board ','2020-10-30 16:38:38','Sample Board Title 224','2020-10-30 16:38:38','user04'),(525,'Content Sample ....... 225 of Board ','2020-10-30 16:38:38','Sample Board Title 225','2020-10-30 16:38:38','user05'),(526,'Content Sample ....... 226 of Board ','2020-10-30 16:38:38','Sample Board Title 226','2020-10-30 16:38:38','user06'),(527,'Content Sample ....... 227 of Board ','2020-10-30 16:38:38','Sample Board Title 227','2020-10-30 16:38:38','user07'),(528,'Content Sample ....... 228 of Board ','2020-10-30 16:38:38','Sample Board Title 228','2020-10-30 16:38:38','user08'),(529,'Content Sample ....... 229 of Board ','2020-10-30 16:38:38','Sample Board Title 229','2020-10-30 16:38:38','user09'),(530,'Content Sample ....... 230 of Board ','2020-10-30 16:38:38','Sample Board Title 230','2020-10-30 16:38:38','user00'),(531,'Content Sample ....... 231 of Board ','2020-10-30 16:38:38','Sample Board Title 231','2020-10-30 16:38:38','user01'),(532,'Content Sample ....... 232 of Board ','2020-10-30 16:38:38','Sample Board Title 232','2020-10-30 16:38:38','user02'),(533,'Content Sample ....... 233 of Board ','2020-10-30 16:38:38','Sample Board Title 233','2020-10-30 16:38:38','user03'),(534,'Content Sample ....... 234 of Board ','2020-10-30 16:38:38','Sample Board Title 234','2020-10-30 16:38:38','user04'),(535,'Content Sample ....... 235 of Board ','2020-10-30 16:38:38','Sample Board Title 235','2020-10-30 16:38:38','user05'),(536,'Content Sample ....... 236 of Board ','2020-10-30 16:38:38','Sample Board Title 236','2020-10-30 16:38:38','user06'),(537,'Content Sample ....... 237 of Board ','2020-10-30 16:38:38','Sample Board Title 237','2020-10-30 16:38:38','user07'),(538,'Content Sample ....... 238 of Board ','2020-10-30 16:38:38','Sample Board Title 238','2020-10-30 16:38:38','user08'),(539,'Content Sample ....... 239 of Board ','2020-10-30 16:38:38','Sample Board Title 239','2020-10-30 16:38:38','user09'),(540,'Content Sample ....... 240 of Board ','2020-10-30 16:38:38','Sample Board Title 240','2020-10-30 16:38:38','user00'),(541,'Content Sample ....... 241 of Board ','2020-10-30 16:38:38','Sample Board Title 241','2020-10-30 16:38:38','user01'),(542,'Content Sample ....... 242 of Board ','2020-10-30 16:38:38','Sample Board Title 242','2020-10-30 16:38:38','user02'),(543,'Content Sample ....... 243 of Board ','2020-10-30 16:38:38','Sample Board Title 243','2020-10-30 16:38:38','user03'),(544,'Content Sample ....... 244 of Board ','2020-10-30 16:38:38','Sample Board Title 244','2020-10-30 16:38:38','user04'),(545,'Content Sample ....... 245 of Board ','2020-10-30 16:38:39','Sample Board Title 245','2020-10-30 16:38:39','user05'),(546,'Content Sample ....... 246 of Board ','2020-10-30 16:38:39','Sample Board Title 246','2020-10-30 16:38:39','user06'),(547,'Content Sample ....... 247 of Board ','2020-10-30 16:38:39','Sample Board Title 247','2020-10-30 16:38:39','user07'),(548,'Content Sample ....... 248 of Board ','2020-10-30 16:38:39','Sample Board Title 248','2020-10-30 16:38:39','user08'),(549,'Content Sample ....... 249 of Board ','2020-10-30 16:38:39','Sample Board Title 249','2020-10-30 16:38:39','user09'),(550,'Content Sample ....... 250 of Board ','2020-10-30 16:38:39','Sample Board Title 250','2020-10-30 16:38:39','user00'),(551,'Content Sample ....... 251 of Board ','2020-10-30 16:38:39','Sample Board Title 251','2020-10-30 16:38:39','user01'),(552,'Content Sample ....... 252 of Board ','2020-10-30 16:38:39','Sample Board Title 252','2020-10-30 16:38:39','user02'),(553,'Content Sample ....... 253 of Board ','2020-10-30 16:38:39','Sample Board Title 253','2020-10-30 16:38:39','user03'),(554,'Content Sample ....... 254 of Board ','2020-10-30 16:38:39','Sample Board Title 254','2020-10-30 16:38:39','user04'),(555,'Content Sample ....... 255 of Board ','2020-10-30 16:38:39','Sample Board Title 255','2020-10-30 16:38:39','user05'),(556,'Content Sample ....... 256 of Board ','2020-10-30 16:38:39','Sample Board Title 256','2020-10-30 16:38:39','user06'),(557,'Content Sample ....... 257 of Board ','2020-10-30 16:38:39','Sample Board Title 257','2020-10-30 16:38:39','user07'),(558,'Content Sample ....... 258 of Board ','2020-10-30 16:38:39','Sample Board Title 258','2020-10-30 16:38:39','user08'),(559,'Content Sample ....... 259 of Board ','2020-10-30 16:38:39','Sample Board Title 259','2020-10-30 16:38:39','user09'),(560,'Content Sample ....... 260 of Board ','2020-10-30 16:38:39','Sample Board Title 260','2020-10-30 16:38:39','user00'),(561,'Content Sample ....... 261 of Board ','2020-10-30 16:38:39','Sample Board Title 261','2020-10-30 16:38:39','user01'),(562,'Content Sample ....... 262 of Board ','2020-10-30 16:38:39','Sample Board Title 262','2020-10-30 16:38:39','user02'),(563,'Content Sample ....... 263 of Board ','2020-10-30 16:38:39','Sample Board Title 263','2020-10-30 16:38:39','user03'),(564,'Content Sample ....... 264 of Board ','2020-10-30 16:38:39','Sample Board Title 264','2020-10-30 16:38:39','user04'),(565,'Content Sample ....... 265 of Board ','2020-10-30 16:38:39','Sample Board Title 265','2020-10-30 16:38:39','user05'),(566,'Content Sample ....... 266 of Board ','2020-10-30 16:38:39','Sample Board Title 266','2020-10-30 16:38:39','user06'),(567,'Content Sample ....... 267 of Board ','2020-10-30 16:38:39','Sample Board Title 267','2020-10-30 16:38:39','user07'),(568,'Content Sample ....... 268 of Board ','2020-10-30 16:38:39','Sample Board Title 268','2020-10-30 16:38:39','user08'),(569,'Content Sample ....... 269 of Board ','2020-10-30 16:38:39','Sample Board Title 269','2020-10-30 16:38:39','user09'),(570,'Content Sample ....... 270 of Board ','2020-10-30 16:38:39','Sample Board Title 270','2020-10-30 16:38:39','user00'),(571,'Content Sample ....... 271 of Board ','2020-10-30 16:38:39','Sample Board Title 271','2020-10-30 16:38:39','user01'),(572,'Content Sample ....... 272 of Board ','2020-10-30 16:38:39','Sample Board Title 272','2020-10-30 16:38:39','user02'),(573,'Content Sample ....... 273 of Board ','2020-10-30 16:38:39','Sample Board Title 273','2020-10-30 16:38:39','user03'),(574,'Content Sample ....... 274 of Board ','2020-10-30 16:38:39','Sample Board Title 274','2020-10-30 16:38:39','user04'),(575,'Content Sample ....... 275 of Board ','2020-10-30 16:38:39','Sample Board Title 275','2020-10-30 16:38:39','user05'),(576,'Content Sample ....... 276 of Board ','2020-10-30 16:38:39','Sample Board Title 276','2020-10-30 16:38:39','user06'),(577,'Content Sample ....... 277 of Board ','2020-10-30 16:38:40','Sample Board Title 277','2020-10-30 16:38:40','user07'),(578,'Content Sample ....... 278 of Board ','2020-10-30 16:38:40','Sample Board Title 278','2020-10-30 16:38:40','user08'),(579,'Content Sample ....... 279 of Board ','2020-10-30 16:38:40','Sample Board Title 279','2020-10-30 16:38:40','user09'),(580,'Content Sample ....... 280 of Board ','2020-10-30 16:38:40','Sample Board Title 280','2020-10-30 16:38:40','user00'),(581,'Content Sample ....... 281 of Board ','2020-10-30 16:38:40','Sample Board Title 281','2020-10-30 16:38:40','user01'),(582,'Content Sample ....... 282 of Board ','2020-10-30 16:38:40','Sample Board Title 282','2020-10-30 16:38:40','user02'),(583,'Content Sample ....... 283 of Board ','2020-10-30 16:38:40','Sample Board Title 283','2020-10-30 16:38:40','user03'),(584,'Content Sample ....... 284 of Board ','2020-10-30 16:38:40','Sample Board Title 284','2020-10-30 16:38:40','user04'),(585,'Content Sample ....... 285 of Board ','2020-10-30 16:38:40','Sample Board Title 285','2020-10-30 16:38:40','user05'),(586,'Content Sample ....... 286 of Board ','2020-10-30 16:38:40','Sample Board Title 286','2020-10-30 16:38:40','user06'),(587,'Content Sample ....... 287 of Board ','2020-10-30 16:38:40','Sample Board Title 287','2020-10-30 16:38:40','user07'),(588,'Content Sample ....... 288 of Board ','2020-10-30 16:38:40','Sample Board Title 288','2020-10-30 16:38:40','user08'),(589,'Content Sample ....... 289 of Board ','2020-10-30 16:38:40','Sample Board Title 289','2020-10-30 16:38:40','user09'),(590,'Content Sample ....... 290 of Board ','2020-10-30 16:38:40','Sample Board Title 290','2020-10-30 16:38:40','user00'),(591,'Content Sample ....... 291 of Board ','2020-10-30 16:38:40','Sample Board Title 291','2020-10-30 16:38:40','user01'),(592,'Content Sample ....... 292 of Board ','2020-10-30 16:38:40','Sample Board Title 292','2020-10-30 16:38:40','user02'),(593,'Content Sample ....... 293 of Board ','2020-10-30 16:38:40','Sample Board Title 293','2020-10-30 16:38:40','user03'),(594,'Content Sample ....... 294 of Board ','2020-10-30 16:38:40','Sample Board Title 294','2020-10-30 16:38:40','user04'),(595,'Content Sample ....... 295 of Board ','2020-10-30 16:38:40','Sample Board Title 295','2020-10-30 16:38:40','user05'),(596,'Content Sample ....... 296 of Board ','2020-10-30 16:38:40','Sample Board Title 296','2020-10-30 16:38:40','user06'),(597,'Content Sample ....... 297 of Board ','2020-10-30 16:38:40','Sample Board Title 297','2020-10-30 16:38:40','user07'),(598,'Content Sample ....... 298 of Board ','2020-10-30 16:38:40','Sample Board Title 298','2020-10-30 16:38:40','user08'),(599,'Content Sample ....... 299 of Board ','2020-10-30 16:38:40','Sample Board Title 299','2020-10-30 16:38:40','user09'),(600,'Content Sample ....... 300 of Board ','2020-10-30 16:38:40','Sample Board Title 300','2020-10-30 16:38:40','user00');
/*!40000 ALTER TABLE `tbl_webboards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-10 18:33:34
