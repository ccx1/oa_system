-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.26 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 oa_system.aoa_attachment_list 结构
CREATE TABLE IF NOT EXISTS `aoa_attachment_list` (
  `attachment_id` bigint NOT NULL AUTO_INCREMENT,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_path` varchar(255) DEFAULT NULL,
  `attachment_shuffix` varchar(255) DEFAULT NULL,
  `attachment_size` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_attachment_list 的数据：~0 rows (大约)
DELETE FROM `aoa_attachment_list`;
/*!40000 ALTER TABLE `aoa_attachment_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_attachment_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_attends_list 结构
CREATE TABLE IF NOT EXISTS `aoa_attends_list` (
  `attends_id` bigint NOT NULL AUTO_INCREMENT,
  `attends_ip` varchar(20) DEFAULT NULL,
  `attends_remark` varchar(20) DEFAULT NULL,
  `attends_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `attends_user_id` bigint DEFAULT NULL,
  `attend_hmtime` varchar(255) DEFAULT NULL,
  `week_ofday` varchar(255) DEFAULT NULL,
  `holiday_days` double(255,0) DEFAULT '0',
  `holiday_start` date DEFAULT NULL,
  PRIMARY KEY (`attends_id`),
  KEY `FKaxgqsm98npnl1rxysh9upfjee` (`attends_user_id`),
  CONSTRAINT `FKaxgqsm98npnl1rxysh9upfjee` FOREIGN KEY (`attends_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_attends_list 的数据：~0 rows (大约)
DELETE FROM `aoa_attends_list`;
/*!40000 ALTER TABLE `aoa_attends_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_attends_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_bursement 结构
CREATE TABLE IF NOT EXISTS `aoa_bursement` (
  `bursement_id` bigint NOT NULL AUTO_INCREMENT,
  `all_money` double DEFAULT NULL,
  `allinvoices` int DEFAULT NULL,
  `burse_time` datetime DEFAULT NULL,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `operation_name` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `user_name` bigint DEFAULT NULL,
  PRIMARY KEY (`bursement_id`),
  KEY `FKt3xu5y23deh0mtqkfk3ly6219` (`operation_name`) USING BTREE,
  KEY `FK666vswh4nl3voq8qalu73v2sq` (`pro_id`) USING BTREE,
  KEY `FKgnqp4eax31sh7mn3lt2su7olr` (`user_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_bursement 的数据：~0 rows (大约)
DELETE FROM `aoa_bursement`;
/*!40000 ALTER TABLE `aoa_bursement` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_bursement` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_catalog 结构
CREATE TABLE IF NOT EXISTS `aoa_catalog` (
  `catalog_id` bigint NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `cata_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`catalog_id`),
  KEY `FKbsk5nkjlqmd8j9rmkarse6j1x` (`cata_user_id`),
  CONSTRAINT `FKbsk5nkjlqmd8j9rmkarse6j1x` FOREIGN KEY (`cata_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_catalog 的数据：~1 rows (大约)
DELETE FROM `aoa_catalog`;
/*!40000 ALTER TABLE `aoa_catalog` DISABLE KEYS */;
INSERT INTO `aoa_catalog` (`catalog_id`, `catalog_name`, `parent_id`, `cata_user_id`) VALUES
	(1, '根目录', 1, NULL);
/*!40000 ALTER TABLE `aoa_catalog` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_comment_list 结构
CREATE TABLE IF NOT EXISTS `aoa_comment_list` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `comment_user_id` bigint DEFAULT NULL,
  `reply_id` bigint DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK2k00kkfhh93949ybod7qn56ax` (`comment_user_id`),
  KEY `FKeopff14rxco5thbwwlu7exglo` (`reply_id`),
  CONSTRAINT `FK2k00kkfhh93949ybod7qn56ax` FOREIGN KEY (`comment_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKeopff14rxco5thbwwlu7exglo` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_comment_list 的数据：~0 rows (大约)
DELETE FROM `aoa_comment_list`;
/*!40000 ALTER TABLE `aoa_comment_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_comment_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_dept 结构
CREATE TABLE IF NOT EXISTS `aoa_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT,
  `dept_addr` varchar(255) DEFAULT NULL,
  `dept_fax` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deptmanager` bigint DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_dept 的数据：~4 rows (大约)
DELETE FROM `aoa_dept`;
/*!40000 ALTER TABLE `aoa_dept` DISABLE KEYS */;
INSERT INTO `aoa_dept` (`dept_id`, `dept_addr`, `dept_fax`, `dept_name`, `dept_tel`, `email`, `deptmanager`, `end_time`, `start_time`) VALUES
	(1, '10楼', '', '总经办', '888888888', 'hq@fjhirg.com', NULL, '2017-11-15 22:50:05', '2017-11-07 22:50:11'),
	(2, '四楼', NULL, '研发部', '66666666', 'as@fwgh', 4, '2017-09-13 19:04:07', '2010-05-23 00:00:00'),
	(3, '三楼', NULL, '财务部', '233333', '153@qq.com', 5, '2017-09-19 16:46:26', '2016-09-19 16:46:32'),
	(5, '六楼', NULL, '人事部', '33332222', '103@qq.com', 7, '2017-10-07 14:12:05', '2017-05-09 14:12:14');
/*!40000 ALTER TABLE `aoa_dept` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_detailsburse 结构
CREATE TABLE IF NOT EXISTS `aoa_detailsburse` (
  `detailsburse_id` bigint NOT NULL AUTO_INCREMENT,
  `descript` varchar(255) DEFAULT NULL,
  `detailmoney` double NOT NULL,
  `invoices` int DEFAULT NULL,
  `produce_time` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bursment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`detailsburse_id`),
  KEY `FKi02w0bghxr73fsc5sbpeyqdnn` (`bursment_id`),
  CONSTRAINT `FKi02w0bghxr73fsc5sbpeyqdnn` FOREIGN KEY (`bursment_id`) REFERENCES `aoa_bursement` (`bursement_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_detailsburse 的数据：~0 rows (大约)
DELETE FROM `aoa_detailsburse`;
/*!40000 ALTER TABLE `aoa_detailsburse` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_detailsburse` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_director 结构
CREATE TABLE IF NOT EXISTS `aoa_director` (
  `director_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `company_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_path` int DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  KEY `FKi6pfdnqhbc6js940e2o1vape5` (`user_id`),
  CONSTRAINT `FKi6pfdnqhbc6js940e2o1vape5` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_director 的数据：~0 rows (大约)
DELETE FROM `aoa_director`;
/*!40000 ALTER TABLE `aoa_director` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_director` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_director_users 结构
CREATE TABLE IF NOT EXISTS `aoa_director_users` (
  `director_users_id` bigint NOT NULL AUTO_INCREMENT,
  `catelog_name` varchar(255) DEFAULT NULL,
  `is_handle` int DEFAULT NULL,
  `director_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `share_user_id` bigint DEFAULT NULL,
  `sharetime` datetime DEFAULT NULL,
  PRIMARY KEY (`director_users_id`),
  KEY `FK675oqfmv4kx9w6bgi9rgsb8nw` (`director_id`),
  KEY `FK7hq4xk2ja9eka4210qkqq03hi` (`user_id`),
  KEY `FKibwkjvmp9383ltkfew1kyy6ny` (`share_user_id`),
  CONSTRAINT `FK675oqfmv4kx9w6bgi9rgsb8nw` FOREIGN KEY (`director_id`) REFERENCES `aoa_director` (`director_id`),
  CONSTRAINT `FK7hq4xk2ja9eka4210qkqq03hi` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKibwkjvmp9383ltkfew1kyy6ny` FOREIGN KEY (`share_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_director_users 的数据：~0 rows (大约)
DELETE FROM `aoa_director_users`;
/*!40000 ALTER TABLE `aoa_director_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_director_users` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_discuss_list 结构
CREATE TABLE IF NOT EXISTS `aoa_discuss_list` (
  `discuss_id` bigint NOT NULL AUTO_INCREMENT,
  `attachment_id` int DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `visit_num` int DEFAULT NULL,
  `discuss_user_id` bigint DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`discuss_id`),
  KEY `FKt8hvx0ai5fto20mmxmy2g8j4g` (`discuss_user_id`),
  KEY `FK17yi8arj4vjdr5mm5dhjov10j` (`vote_id`),
  CONSTRAINT `FK17yi8arj4vjdr5mm5dhjov10j` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`),
  CONSTRAINT `FKt8hvx0ai5fto20mmxmy2g8j4g` FOREIGN KEY (`discuss_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_discuss_list 的数据：~0 rows (大约)
DELETE FROM `aoa_discuss_list`;
/*!40000 ALTER TABLE `aoa_discuss_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_discuss_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_evection 结构
CREATE TABLE IF NOT EXISTS `aoa_evection` (
  `evection_id` bigint NOT NULL AUTO_INCREMENT,
  `type_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evection_id`),
  KEY `FKql1c10e5u2vefisjqjbu2d5pa` (`pro_id`),
  CONSTRAINT `FKql1c10e5u2vefisjqjbu2d5pa` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_evection 的数据：~0 rows (大约)
DELETE FROM `aoa_evection`;
/*!40000 ALTER TABLE `aoa_evection` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_evection` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_evectionmoney 结构
CREATE TABLE IF NOT EXISTS `aoa_evectionmoney` (
  `evectionmoney_id` bigint NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `pro` int DEFAULT NULL,
  PRIMARY KEY (`evectionmoney_id`),
  KEY `FKcpuubnshaf2cg47hns9m0h1dq` (`pro_id`),
  CONSTRAINT `FKcpuubnshaf2cg47hns9m0h1dq` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_evectionmoney 的数据：~0 rows (大约)
DELETE FROM `aoa_evectionmoney`;
/*!40000 ALTER TABLE `aoa_evectionmoney` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_evectionmoney` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_file_list 结构
CREATE TABLE IF NOT EXISTS `aoa_file_list` (
  `file_id` bigint NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_shuffix` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `path_id` bigint DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `file_user_id` bigint DEFAULT NULL,
  `file_istrash` bigint(1) unsigned zerofill DEFAULT '0',
  `file_isshare` bigint DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `FKfshy9n300pqxjsweo9247jgqs` (`path_id`),
  KEY `FKlj6l9qroivus28aiqluue4bew` (`file_user_id`),
  CONSTRAINT `FKfshy9n300pqxjsweo9247jgqs` FOREIGN KEY (`path_id`) REFERENCES `aoa_file_path` (`path_id`),
  CONSTRAINT `FKlj6l9qroivus28aiqluue4bew` FOREIGN KEY (`file_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_file_list 的数据：~0 rows (大约)
DELETE FROM `aoa_file_list`;
/*!40000 ALTER TABLE `aoa_file_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_file_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_file_path 结构
CREATE TABLE IF NOT EXISTS `aoa_file_path` (
  `path_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL,
  `path_name` varchar(255) DEFAULT NULL,
  `path_user_id` bigint DEFAULT NULL,
  `path_istrash` bigint DEFAULT '0',
  PRIMARY KEY (`path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_file_path 的数据：~1 rows (大约)
DELETE FROM `aoa_file_path`;
/*!40000 ALTER TABLE `aoa_file_path` DISABLE KEYS */;
INSERT INTO `aoa_file_path` (`path_id`, `parent_id`, `path_name`, `path_user_id`, `path_istrash`) VALUES
	(95, 1, '罗密欧', 1, 0);
/*!40000 ALTER TABLE `aoa_file_path` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_holiday 结构
CREATE TABLE IF NOT EXISTS `aoa_holiday` (
  `holiday_id` bigint NOT NULL AUTO_INCREMENT,
  `leave_days` int DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`holiday_id`),
  KEY `FK1glo2wpb4kuiop1ymjxs0knxj` (`pro_id`),
  CONSTRAINT `FK1glo2wpb4kuiop1ymjxs0knxj` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_holiday 的数据：~0 rows (大约)
DELETE FROM `aoa_holiday`;
/*!40000 ALTER TABLE `aoa_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_holiday` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_in_mail_list 结构
CREATE TABLE IF NOT EXISTS `aoa_in_mail_list` (
  `mail_id` bigint NOT NULL AUTO_INCREMENT,
  `mail_content` text,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_file_id` bigint DEFAULT NULL,
  `mail_title` varchar(255) NOT NULL,
  `mail_type` bigint DEFAULT NULL,
  `mail_in_push_user_id` bigint DEFAULT NULL,
  `in_receiver` varchar(255) DEFAULT NULL,
  `mail_status_id` bigint DEFAULT NULL,
  `mail_number_id` bigint DEFAULT NULL,
  `mail_del` int DEFAULT NULL,
  `mail_push` int DEFAULT NULL,
  `mail_star` int DEFAULT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `FK33o7j8f0xk8n8vrk576iktglc` (`mail_file_id`),
  KEY `FK933q7ouoddu584qg08rbvwvxi` (`mail_in_push_user_id`),
  KEY `FKghibt111d1yvc3f02x06sihjp` (`mail_number_id`),
  CONSTRAINT `FK33o7j8f0xk8n8vrk576iktglc` FOREIGN KEY (`mail_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`),
  CONSTRAINT `FK933q7ouoddu584qg08rbvwvxi` FOREIGN KEY (`mail_in_push_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKghibt111d1yvc3f02x06sihjp` FOREIGN KEY (`mail_number_id`) REFERENCES `aoa_mailnumber` (`mail_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_in_mail_list 的数据：~0 rows (大约)
DELETE FROM `aoa_in_mail_list`;
/*!40000 ALTER TABLE `aoa_in_mail_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_in_mail_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_love_discuss_user 结构
CREATE TABLE IF NOT EXISTS `aoa_love_discuss_user` (
  `discuss_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`discuss_id`,`user_id`),
  KEY `FKkl0fitgg3qixkg5gg9mmjp5e7` (`user_id`),
  CONSTRAINT `FKkl0fitgg3qixkg5gg9mmjp5e7` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKnhdtxclyun4is9ne5o99nqw1c` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_love_discuss_user 的数据：~0 rows (大约)
DELETE FROM `aoa_love_discuss_user`;
/*!40000 ALTER TABLE `aoa_love_discuss_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_love_discuss_user` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_love_user 结构
CREATE TABLE IF NOT EXISTS `aoa_love_user` (
  `reply_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  KEY `FK7fv96y8gbqcnb44qao4ey4rmn` (`user_id`),
  KEY `FKcuptpmm0l1e0b9pjv0xksqqai` (`reply_id`),
  CONSTRAINT `FK7fv96y8gbqcnb44qao4ey4rmn` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKcuptpmm0l1e0b9pjv0xksqqai` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_love_user 的数据：~0 rows (大约)
DELETE FROM `aoa_love_user`;
/*!40000 ALTER TABLE `aoa_love_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_love_user` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_mailnumber 结构
CREATE TABLE IF NOT EXISTS `aoa_mailnumber` (
  `mail_number_id` bigint NOT NULL AUTO_INCREMENT,
  `mail_account` varchar(255) NOT NULL,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_des` varchar(255) DEFAULT NULL,
  `mail_type` bigint DEFAULT NULL,
  `mail_user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` bigint DEFAULT NULL,
  `mail_num_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`mail_number_id`),
  KEY `FKn9qg20uba4xn2k5m62jrcyc6c` (`mail_num_user_id`),
  CONSTRAINT `FKn9qg20uba4xn2k5m62jrcyc6c` FOREIGN KEY (`mail_num_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_mailnumber 的数据：~0 rows (大约)
DELETE FROM `aoa_mailnumber`;
/*!40000 ALTER TABLE `aoa_mailnumber` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_mailnumber` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_mail_reciver 结构
CREATE TABLE IF NOT EXISTS `aoa_mail_reciver` (
  `pk_id` bigint NOT NULL AUTO_INCREMENT,
  `is_read` int NOT NULL,
  `mail_id` bigint DEFAULT NULL,
  `mail_reciver_id` bigint DEFAULT NULL,
  `is_star` int DEFAULT NULL,
  `is_del` int DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FKj8ki52vm052q6qdal2rkh2c9q` (`mail_id`),
  KEY `FK65vdrbmq9hu4hrhvtw6slwxlc` (`mail_reciver_id`),
  CONSTRAINT `FK65vdrbmq9hu4hrhvtw6slwxlc` FOREIGN KEY (`mail_reciver_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKj8ki52vm052q6qdal2rkh2c9q` FOREIGN KEY (`mail_id`) REFERENCES `aoa_in_mail_list` (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_mail_reciver 的数据：~0 rows (大约)
DELETE FROM `aoa_mail_reciver`;
/*!40000 ALTER TABLE `aoa_mail_reciver` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_mail_reciver` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_notepaper 结构
CREATE TABLE IF NOT EXISTS `aoa_notepaper` (
  `notepaper_id` bigint NOT NULL AUTO_INCREMENT,
  `concent` text,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notepaper_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`notepaper_id`),
  KEY `FKsavcqw29haox5bu7y90it8jb7` (`notepaper_user_id`),
  CONSTRAINT `FKsavcqw29haox5bu7y90it8jb7` FOREIGN KEY (`notepaper_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_notepaper 的数据：~0 rows (大约)
DELETE FROM `aoa_notepaper`;
/*!40000 ALTER TABLE `aoa_notepaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_notepaper` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_note_list 结构
CREATE TABLE IF NOT EXISTS `aoa_note_list` (
  `note_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(15000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `catalog_id` bigint DEFAULT NULL,
  `attach_id` bigint DEFAULT NULL,
  `is_collected` bigint DEFAULT '0',
  `createman_id` bigint DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`note_id`),
  KEY `FK3e1rxyyg851r231ln3ucnrg7q` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_note_list 的数据：~0 rows (大约)
DELETE FROM `aoa_note_list`;
/*!40000 ALTER TABLE `aoa_note_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_note_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_notice_list 结构
CREATE TABLE IF NOT EXISTS `aoa_notice_list` (
  `notice_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `is_top` int DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `notice_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_notice_list 的数据：~0 rows (大约)
DELETE FROM `aoa_notice_list`;
/*!40000 ALTER TABLE `aoa_notice_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_notice_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_notice_user_relation 结构
CREATE TABLE IF NOT EXISTS `aoa_notice_user_relation` (
  `relatin_id` bigint NOT NULL AUTO_INCREMENT,
  `is_read` int DEFAULT NULL,
  `relatin_notice_id` bigint DEFAULT NULL,
  `relatin_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`relatin_id`),
  KEY `FKhxq8glkpb5qi1smn5gu142rky` (`relatin_notice_id`),
  KEY `FK52evvby6j47j24624ydi0o221` (`relatin_user_id`),
  CONSTRAINT `FK52evvby6j47j24624ydi0o221` FOREIGN KEY (`relatin_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKhxq8glkpb5qi1smn5gu142rky` FOREIGN KEY (`relatin_notice_id`) REFERENCES `aoa_notice_list` (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_notice_user_relation 的数据：~0 rows (大约)
DELETE FROM `aoa_notice_user_relation`;
/*!40000 ALTER TABLE `aoa_notice_user_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_notice_user_relation` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_overtime 结构
CREATE TABLE IF NOT EXISTS `aoa_overtime` (
  `overtime_id` bigint NOT NULL AUTO_INCREMENT,
  `type_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`overtime_id`),
  KEY `FK5o36fvdsrrhvr9q4dvffxkuoc` (`pro_id`),
  CONSTRAINT `FK5o36fvdsrrhvr9q4dvffxkuoc` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_overtime 的数据：~0 rows (大约)
DELETE FROM `aoa_overtime`;
/*!40000 ALTER TABLE `aoa_overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_overtime` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_plan_list 结构
CREATE TABLE IF NOT EXISTS `aoa_plan_list` (
  `plan_id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `plan_comment` varchar(5000) DEFAULT '',
  `plan_content` varchar(10000) DEFAULT NULL,
  `plan_summary` varchar(800) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `plan_user_id` bigint DEFAULT NULL,
  `attach_id` bigint DEFAULT NULL,
  PRIMARY KEY (`plan_id`,`start_time`),
  KEY `FKsqqfaj3e7rdl3jalr2sm0y4ln` (`plan_user_id`),
  CONSTRAINT `FKsqqfaj3e7rdl3jalr2sm0y4ln` FOREIGN KEY (`plan_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_plan_list 的数据：~0 rows (大约)
DELETE FROM `aoa_plan_list`;
/*!40000 ALTER TABLE `aoa_plan_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_plan_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_position 结构
CREATE TABLE IF NOT EXISTS `aoa_position` (
  `position_id` bigint NOT NULL AUTO_INCREMENT,
  `level` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describtion` varchar(255) DEFAULT NULL,
  `deptid` bigint DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_position 的数据：~16 rows (大约)
DELETE FROM `aoa_position`;
/*!40000 ALTER TABLE `aoa_position` DISABLE KEYS */;
INSERT INTO `aoa_position` (`position_id`, `level`, `name`, `describtion`, `deptid`) VALUES
	(1, 1, '超级管理员', '管理系统最高权限', 1),
	(2, 2, 'CEO', 'CEO类！~', 1),
	(3, 3, '总经理', '总经理类！~', 1),
	(4, 4, '研发部经理', NULL, 2),
	(5, 5, '财务部经理', NULL, 3),
	(7, 7, '人事部经理', NULL, 5),
	(8, 8, '人事专员', NULL, 5),
	(10, 10, '程序员', NULL, 2),
	(11, 11, '初级工程师', NULL, 2),
	(12, 12, '中级工程师', NULL, 2),
	(13, 13, '高级工程师', NULL, 2),
	(14, 14, '系统架构师', NULL, 2),
	(15, 15, '需求分析师', NULL, 2),
	(21, 21, '核算会计', NULL, 3),
	(22, 22, '税务会计', NULL, 3),
	(23, 23, '出纳员', NULL, 3);
/*!40000 ALTER TABLE `aoa_position` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_process_list 结构
CREATE TABLE IF NOT EXISTS `aoa_process_list` (
  `process_id` bigint NOT NULL AUTO_INCREMENT,
  `apply_time` datetime DEFAULT NULL,
  `deeply_id` bigint DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `process_des` text,
  `process_name` varchar(255) DEFAULT NULL,
  `procsee_days` int DEFAULT NULL,
  `is_checked` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `pro_file_id` bigint DEFAULT NULL,
  `process_user_id` bigint DEFAULT NULL,
  `shenuser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`process_id`),
  KEY `FKiltoi9iw3vjixl6u4cd60fi1p` (`pro_file_id`),
  KEY `FKhtdg4du5ryotah5v1dgyjfh2t` (`process_user_id`),
  CONSTRAINT `FKhtdg4du5ryotah5v1dgyjfh2t` FOREIGN KEY (`process_user_id`) REFERENCES `aoa_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKiltoi9iw3vjixl6u4cd60fi1p` FOREIGN KEY (`pro_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_process_list 的数据：~0 rows (大约)
DELETE FROM `aoa_process_list`;
/*!40000 ALTER TABLE `aoa_process_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_process_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_receiver_note 结构
CREATE TABLE IF NOT EXISTS `aoa_receiver_note` (
  `note_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK904cmor3q468pj3ft6mdrnqwk` (`user_id`),
  KEY `FKcx7spjjefkofw62v8yxmgjxao` (`note_id`),
  CONSTRAINT `FK904cmor3q468pj3ft6mdrnqwk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_NOTE_LIST` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKcx7spjjefkofw62v8yxmgjxao` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_receiver_note 的数据：~0 rows (大约)
DELETE FROM `aoa_receiver_note`;
/*!40000 ALTER TABLE `aoa_receiver_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_receiver_note` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_regular 结构
CREATE TABLE IF NOT EXISTS `aoa_regular` (
  `regular_id` bigint NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `deficiency` varchar(255) DEFAULT NULL,
  `dobetter` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `pullulate` varchar(255) DEFAULT NULL,
  `understand` varchar(255) DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `days` int DEFAULT NULL,
  PRIMARY KEY (`regular_id`),
  KEY `FK96uphskhww1otsi3fe916dfor` (`pro_id`),
  CONSTRAINT `FK96uphskhww1otsi3fe916dfor` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_regular 的数据：~0 rows (大约)
DELETE FROM `aoa_regular`;
/*!40000 ALTER TABLE `aoa_regular` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_regular` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_reply_list 结构
CREATE TABLE IF NOT EXISTS `aoa_reply_list` (
  `reply_id` bigint NOT NULL AUTO_INCREMENT,
  `content` text,
  `replay_time` datetime DEFAULT NULL,
  `discuss_id` bigint DEFAULT NULL,
  `reply_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK94s0c9f8hxomde6bede3d20y2` (`discuss_id`),
  KEY `FK2bn8fpyqw7mom14ks4kvrhtp9` (`reply_user_id`),
  CONSTRAINT `FK2bn8fpyqw7mom14ks4kvrhtp9` FOREIGN KEY (`reply_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FK94s0c9f8hxomde6bede3d20y2` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_reply_list 的数据：~0 rows (大约)
DELETE FROM `aoa_reply_list`;
/*!40000 ALTER TABLE `aoa_reply_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_reply_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_resign 结构
CREATE TABLE IF NOT EXISTS `aoa_resign` (
  `resign_id` bigint NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `is_finish` bit(1) DEFAULT NULL,
  `nofinish` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `suggest` varchar(255) DEFAULT NULL,
  `hand_user` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resign_id`),
  KEY `FK3t0d1mt9o7g5q59ha10e3mwpr` (`hand_user`),
  KEY `FKam7ii5j1kdforxq8s6q3mm13n` (`pro_id`),
  CONSTRAINT `FK3t0d1mt9o7g5q59ha10e3mwpr` FOREIGN KEY (`hand_user`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKam7ii5j1kdforxq8s6q3mm13n` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_resign 的数据：~0 rows (大约)
DELETE FROM `aoa_resign`;
/*!40000 ALTER TABLE `aoa_resign` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_resign` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_reviewed 结构
CREATE TABLE IF NOT EXISTS `aoa_reviewed` (
  `reviewed_id` bigint NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `reviewed_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `del` int DEFAULT NULL,
  PRIMARY KEY (`reviewed_id`),
  KEY `FKevjvy6myxg1l0ibiuph3i7jw2` (`pro_id`),
  KEY `FK2iljei0wvy0cylwwyfh5dr9yk` (`user_id`),
  CONSTRAINT `FK2iljei0wvy0cylwwyfh5dr9yk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKevjvy6myxg1l0ibiuph3i7jw2` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_reviewed 的数据：~0 rows (大约)
DELETE FROM `aoa_reviewed`;
/*!40000 ALTER TABLE `aoa_reviewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_reviewed` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_role_ 结构
CREATE TABLE IF NOT EXISTS `aoa_role_` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_value` int DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_role_ 的数据：~7 rows (大约)
DELETE FROM `aoa_role_`;
/*!40000 ALTER TABLE `aoa_role_` DISABLE KEYS */;
INSERT INTO `aoa_role_` (`role_id`, `role_name`, `role_value`) VALUES
	(1, '超级管理员', NULL),
	(2, 'CEO', NULL),
	(3, '总经理', NULL),
	(4, '部门经理', NULL),
	(5, '职员', NULL),
	(6, '实习生', NULL),
	(7, '试用生', NULL);
/*!40000 ALTER TABLE `aoa_role_` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_role_power_list 结构
CREATE TABLE IF NOT EXISTS `aoa_role_power_list` (
  `pk_id` bigint NOT NULL AUTO_INCREMENT,
  `is_show` int DEFAULT NULL,
  `menu_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2f9f91f213gwtglofko5r429s` (`menu_id`),
  KEY `FK7b71lfkstl47tston4lrd8066` (`role_id`),
  CONSTRAINT `FK2f9f91f213gwtglofko5r429s` FOREIGN KEY (`menu_id`) REFERENCES `aoa_sys_menu` (`menu_id`),
  CONSTRAINT `FK7b71lfkstl47tston4lrd8066` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_role_power_list 的数据：~385 rows (大约)
DELETE FROM `aoa_role_power_list`;
/*!40000 ALTER TABLE `aoa_role_power_list` DISABLE KEYS */;
INSERT INTO `aoa_role_power_list` (`pk_id`, `is_show`, `menu_id`, `role_id`) VALUES
	(1, 1, 1, 1),
	(2, 1, 2, 1),
	(3, 1, 3, 1),
	(4, 1, 4, 1),
	(5, 1, 5, 1),
	(6, 1, 6, 1),
	(7, 1, 7, 1),
	(8, 1, 8, 1),
	(9, 1, 9, 1),
	(10, 1, 10, 1),
	(11, 1, 11, 1),
	(12, 1, 12, 1),
	(13, 1, 13, 1),
	(14, 1, 14, 1),
	(15, 1, 15, 1),
	(16, 1, 16, 1),
	(17, 1, 17, 1),
	(18, 1, 18, 1),
	(19, 1, 19, 1),
	(20, 1, 20, 1),
	(21, 1, 21, 1),
	(22, 1, 22, 1),
	(23, 1, 23, 1),
	(24, 1, 24, 1),
	(25, 1, 25, 1),
	(26, 1, 26, 1),
	(27, 1, 27, 1),
	(28, 1, 28, 1),
	(29, 1, 29, 1),
	(30, 1, 30, 1),
	(31, 1, 31, 1),
	(32, 1, 32, 1),
	(33, 1, 33, 1),
	(34, 1, 34, 1),
	(35, 1, 35, 1),
	(36, 1, 36, 1),
	(37, 1, 37, 1),
	(38, 1, 38, 1),
	(39, 1, 39, 1),
	(40, 1, 40, 1),
	(41, 1, 41, 1),
	(42, 1, 42, 1),
	(43, 1, 67, 1),
	(44, 0, 76, 1),
	(45, 0, 77, 1),
	(46, 0, 78, 1),
	(47, 0, 79, 1),
	(48, 0, 80, 1),
	(49, 0, 81, 1),
	(50, 0, 82, 1),
	(51, 0, 86, 1),
	(52, 0, 87, 1),
	(53, 0, 88, 1),
	(54, 1, 89, 1),
	(55, 1, 90, 1),
	(56, 0, 1, 2),
	(57, 1, 2, 2),
	(58, 1, 3, 2),
	(59, 1, 4, 2),
	(60, 1, 5, 2),
	(61, 1, 6, 2),
	(62, 1, 7, 2),
	(63, 1, 8, 2),
	(64, 1, 9, 2),
	(65, 1, 10, 2),
	(66, 1, 11, 2),
	(67, 1, 12, 2),
	(68, 1, 13, 2),
	(69, 0, 14, 2),
	(70, 0, 15, 2),
	(71, 0, 16, 2),
	(72, 1, 17, 2),
	(73, 1, 18, 2),
	(74, 1, 19, 2),
	(75, 0, 20, 2),
	(76, 1, 21, 2),
	(77, 1, 22, 2),
	(78, 1, 23, 2),
	(79, 1, 24, 2),
	(80, 0, 25, 2),
	(81, 1, 26, 2),
	(82, 1, 27, 2),
	(83, 1, 28, 2),
	(84, 1, 29, 2),
	(85, 1, 30, 2),
	(86, 1, 31, 2),
	(87, 1, 32, 2),
	(88, 1, 33, 2),
	(89, 1, 34, 2),
	(90, 1, 35, 2),
	(91, 1, 36, 2),
	(92, 1, 37, 2),
	(93, 1, 38, 2),
	(94, 1, 39, 2),
	(95, 1, 40, 2),
	(96, 1, 41, 2),
	(97, 1, 42, 2),
	(98, 1, 67, 2),
	(99, 0, 76, 2),
	(100, 0, 77, 2),
	(101, 0, 78, 2),
	(102, 0, 79, 2),
	(103, 0, 80, 2),
	(104, 0, 81, 2),
	(105, 0, 82, 2),
	(106, 0, 86, 2),
	(107, 0, 87, 2),
	(108, 0, 88, 2),
	(109, 1, 89, 2),
	(110, 0, 90, 2),
	(111, 0, 1, 3),
	(112, 1, 2, 3),
	(113, 1, 3, 3),
	(114, 1, 4, 3),
	(115, 1, 5, 3),
	(116, 1, 6, 3),
	(117, 1, 7, 3),
	(118, 1, 8, 3),
	(119, 1, 9, 3),
	(120, 1, 10, 3),
	(121, 1, 11, 3),
	(122, 1, 12, 3),
	(123, 1, 13, 3),
	(124, 0, 14, 3),
	(125, 0, 15, 3),
	(126, 0, 16, 3),
	(127, 1, 17, 3),
	(128, 1, 18, 3),
	(129, 1, 19, 3),
	(130, 1, 20, 3),
	(131, 1, 21, 3),
	(132, 1, 22, 3),
	(133, 1, 23, 3),
	(134, 1, 24, 3),
	(135, 1, 25, 3),
	(136, 1, 26, 3),
	(137, 1, 27, 3),
	(138, 1, 28, 3),
	(139, 1, 29, 3),
	(140, 1, 30, 3),
	(141, 1, 31, 3),
	(142, 1, 32, 3),
	(143, 1, 33, 3),
	(144, 1, 34, 3),
	(145, 1, 35, 3),
	(146, 1, 36, 3),
	(147, 1, 37, 3),
	(148, 1, 38, 3),
	(149, 1, 39, 3),
	(150, 1, 40, 3),
	(151, 1, 41, 3),
	(152, 1, 42, 3),
	(153, 1, 67, 3),
	(154, 0, 76, 3),
	(155, 0, 77, 3),
	(156, 0, 78, 3),
	(157, 0, 79, 3),
	(158, 0, 80, 3),
	(159, 0, 81, 3),
	(160, 0, 82, 3),
	(161, 0, 86, 3),
	(162, 0, 87, 3),
	(163, 0, 88, 3),
	(164, 0, 89, 3),
	(165, 1, 90, 3),
	(166, 0, 1, 4),
	(167, 1, 2, 4),
	(168, 0, 3, 4),
	(169, 1, 4, 4),
	(170, 1, 5, 4),
	(171, 1, 6, 4),
	(172, 1, 7, 4),
	(173, 1, 8, 4),
	(174, 1, 9, 4),
	(175, 1, 10, 4),
	(176, 1, 11, 4),
	(177, 1, 12, 4),
	(178, 1, 13, 4),
	(179, 0, 14, 4),
	(180, 0, 15, 4),
	(181, 0, 16, 4),
	(182, 1, 17, 4),
	(183, 1, 18, 4),
	(184, 1, 19, 4),
	(185, 1, 20, 4),
	(186, 0, 21, 4),
	(187, 1, 22, 4),
	(188, 1, 23, 4),
	(189, 1, 24, 4),
	(190, 1, 25, 4),
	(191, 1, 26, 4),
	(192, 1, 27, 4),
	(193, 1, 28, 4),
	(194, 1, 29, 4),
	(195, 1, 30, 4),
	(196, 1, 31, 4),
	(197, 1, 32, 4),
	(198, 1, 33, 4),
	(199, 1, 34, 4),
	(200, 1, 35, 4),
	(201, 1, 36, 4),
	(202, 1, 37, 4),
	(203, 1, 38, 4),
	(204, 1, 39, 4),
	(205, 1, 40, 4),
	(206, 1, 41, 4),
	(207, 1, 42, 4),
	(208, 1, 67, 4),
	(209, 0, 76, 4),
	(210, 0, 77, 4),
	(211, 0, 78, 4),
	(212, 0, 79, 4),
	(213, 0, 80, 4),
	(214, 0, 81, 4),
	(215, 0, 82, 4),
	(216, 0, 86, 4),
	(217, 0, 87, 4),
	(218, 0, 88, 4),
	(219, 0, 89, 4),
	(220, 1, 90, 4),
	(221, 0, 1, 5),
	(222, 0, 2, 5),
	(223, 0, 3, 5),
	(224, 0, 4, 5),
	(225, 1, 5, 5),
	(226, 1, 6, 5),
	(227, 1, 7, 5),
	(228, 1, 8, 5),
	(229, 1, 9, 5),
	(230, 1, 10, 5),
	(231, 1, 11, 5),
	(232, 1, 12, 5),
	(233, 1, 13, 5),
	(234, 0, 14, 5),
	(235, 0, 15, 5),
	(236, 0, 16, 5),
	(237, 0, 17, 5),
	(238, 0, 18, 5),
	(239, 0, 19, 5),
	(240, 0, 20, 5),
	(241, 0, 21, 5),
	(242, 0, 22, 5),
	(243, 0, 23, 5),
	(244, 0, 24, 5),
	(245, 1, 25, 5),
	(246, 0, 26, 5),
	(247, 0, 27, 5),
	(248, 1, 28, 5),
	(249, 1, 29, 5),
	(250, 1, 30, 5),
	(251, 0, 31, 5),
	(252, 1, 32, 5),
	(253, 0, 33, 5),
	(254, 1, 34, 5),
	(255, 1, 35, 5),
	(256, 1, 36, 5),
	(257, 1, 37, 5),
	(258, 1, 38, 5),
	(259, 1, 39, 5),
	(260, 1, 40, 5),
	(261, 1, 41, 5),
	(262, 1, 42, 5),
	(263, 0, 67, 5),
	(264, 0, 76, 5),
	(265, 0, 77, 5),
	(266, 0, 78, 5),
	(267, 0, 79, 5),
	(268, 0, 80, 5),
	(269, 0, 81, 5),
	(270, 0, 82, 5),
	(271, 0, 86, 5),
	(272, 0, 87, 5),
	(273, 0, 88, 5),
	(274, 0, 89, 5),
	(275, 1, 90, 5),
	(276, 0, 1, 6),
	(277, 0, 2, 6),
	(278, 0, 3, 6),
	(279, 0, 4, 6),
	(280, 0, 5, 6),
	(281, 0, 6, 6),
	(282, 0, 7, 6),
	(283, 0, 8, 6),
	(284, 0, 9, 6),
	(285, 0, 10, 6),
	(286, 0, 11, 6),
	(287, 0, 12, 6),
	(288, 0, 13, 6),
	(289, 0, 14, 6),
	(290, 0, 15, 6),
	(291, 0, 16, 6),
	(292, 0, 17, 6),
	(293, 0, 18, 6),
	(294, 0, 19, 6),
	(295, 0, 20, 6),
	(296, 0, 21, 6),
	(297, 0, 22, 6),
	(298, 0, 23, 6),
	(299, 0, 24, 6),
	(300, 0, 25, 6),
	(301, 0, 26, 6),
	(302, 0, 27, 6),
	(303, 0, 28, 6),
	(304, 0, 29, 6),
	(305, 0, 30, 6),
	(306, 0, 31, 6),
	(307, 0, 32, 6),
	(308, 0, 33, 6),
	(309, 0, 34, 6),
	(310, 0, 35, 6),
	(311, 0, 36, 6),
	(312, 0, 37, 6),
	(313, 0, 38, 6),
	(314, 0, 39, 6),
	(315, 0, 40, 6),
	(316, 0, 41, 6),
	(317, 0, 42, 6),
	(318, 0, 67, 6),
	(319, 0, 76, 6),
	(320, 0, 77, 6),
	(321, 0, 78, 6),
	(322, 0, 79, 6),
	(323, 0, 80, 6),
	(324, 0, 81, 6),
	(325, 0, 82, 6),
	(326, 0, 86, 6),
	(327, 0, 87, 6),
	(328, 0, 88, 6),
	(329, 0, 89, 6),
	(330, 0, 90, 6),
	(331, 0, 1, 7),
	(332, 0, 2, 7),
	(333, 0, 3, 7),
	(334, 0, 4, 7),
	(335, 0, 5, 7),
	(336, 0, 6, 7),
	(337, 0, 7, 7),
	(338, 0, 8, 7),
	(339, 0, 9, 7),
	(340, 1, 10, 7),
	(341, 0, 11, 7),
	(342, 0, 12, 7),
	(343, 0, 13, 7),
	(344, 0, 14, 7),
	(345, 0, 15, 7),
	(346, 0, 16, 7),
	(347, 0, 17, 7),
	(348, 0, 18, 7),
	(349, 0, 19, 7),
	(350, 0, 20, 7),
	(351, 0, 21, 7),
	(352, 0, 22, 7),
	(353, 0, 23, 7),
	(354, 0, 24, 7),
	(355, 0, 25, 7),
	(356, 0, 26, 7),
	(357, 0, 27, 7),
	(358, 0, 28, 7),
	(359, 0, 29, 7),
	(360, 0, 30, 7),
	(361, 0, 31, 7),
	(362, 0, 32, 7),
	(363, 1, 33, 7),
	(364, 1, 34, 7),
	(365, 1, 35, 7),
	(366, 0, 36, 7),
	(367, 0, 37, 7),
	(368, 0, 38, 7),
	(369, 0, 39, 7),
	(370, 0, 40, 7),
	(371, 0, 41, 7),
	(372, 0, 42, 7),
	(373, 0, 67, 7),
	(374, 0, 76, 7),
	(375, 0, 77, 7),
	(376, 0, 78, 7),
	(377, 0, 79, 7),
	(378, 0, 80, 7),
	(379, 0, 81, 7),
	(380, 0, 82, 7),
	(381, 0, 86, 7),
	(382, 0, 87, 7),
	(383, 0, 88, 7),
	(384, 0, 89, 7),
	(385, 0, 90, 7);
/*!40000 ALTER TABLE `aoa_role_power_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_schedule_list 结构
CREATE TABLE IF NOT EXISTS `aoa_schedule_list` (
  `rc_id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `filedescribe` varchar(255) DEFAULT NULL,
  `is_remind` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  `isreminded` int DEFAULT NULL,
  PRIMARY KEY (`rc_id`),
  KEY `FKgcip21xf5ihmgm2bnh5o4jv15` (`user_id`),
  CONSTRAINT `FKgcip21xf5ihmgm2bnh5o4jv15` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_schedule_list 的数据：~0 rows (大约)
DELETE FROM `aoa_schedule_list`;
/*!40000 ALTER TABLE `aoa_schedule_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_schedule_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_schedule_user 结构
CREATE TABLE IF NOT EXISTS `aoa_schedule_user` (
  `rcid` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  KEY `FKh6hw8vp7p2lgfovi0o7bhhlyp` (`user_id`),
  KEY `FKcmd578ftbv7i53l6mxbbva137` (`rcid`),
  CONSTRAINT `FKcmd578ftbv7i53l6mxbbva137` FOREIGN KEY (`rcid`) REFERENCES `aoa_schedule_list` (`rc_id`),
  CONSTRAINT `FKh6hw8vp7p2lgfovi0o7bhhlyp` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_schedule_user 的数据：~0 rows (大约)
DELETE FROM `aoa_schedule_user`;
/*!40000 ALTER TABLE `aoa_schedule_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_schedule_user` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_status_list 结构
CREATE TABLE IF NOT EXISTS `aoa_status_list` (
  `status_id` bigint NOT NULL AUTO_INCREMENT,
  `status_color` varchar(255) DEFAULT NULL,
  `status_model` varchar(255) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `sort_value` int DEFAULT NULL,
  `sort_precent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_status_list 的数据：~29 rows (大约)
DELETE FROM `aoa_status_list`;
/*!40000 ALTER TABLE `aoa_status_list` DISABLE KEYS */;
INSERT INTO `aoa_status_list` (`status_id`, `status_color`, `status_model`, `status_name`, `sort_value`, `sort_precent`) VALUES
	(1, 'label-success', 'aoa_mailnumber', '有效', 0, NULL),
	(2, 'label-default', 'aoa_mailnumber', '无效', 1, NULL),
	(3, 'label-warning', 'aoa_task_list', '新任务', 0, '20%'),
	(4, 'label-info', 'aoa_task_list', '已接收', 1, '40%'),
	(5, 'label-primary', 'aoa_task_list', '进行中', 2, '60%'),
	(6, 'label-danger', 'aoa_task_list', '已提交', 3, '80%'),
	(7, 'label-success', 'aoa_task_list', '已完成', 4, '100%'),
	(8, 'label-info', 'aoa_note_list', '一般', 0, NULL),
	(9, 'label-danger', 'aoa_note_list', '重要', 1, NULL),
	(10, 'label-info', 'aoa_attends_list', '正常', 0, NULL),
	(11, 'label-warning', 'aoa_attends_list', '迟到', 1, NULL),
	(12, 'label-danger', 'aoa_attends_list', '早退', 2, NULL),
	(13, 'label-danger', 'a', '旷工', 3, NULL),
	(14, 'label-primary', 'inform', '一般', 0, NULL),
	(15, 'label-warning', 'inform', '重要', 1, ''),
	(16, 'label-danger', 'inform', '紧急', 2, NULL),
	(17, 'label-warning', 'aoa_plan_list', '未完成', 0, NULL),
	(18, 'label-success', 'aoa_plan_list', '已完成', 1, NULL),
	(19, 'label-info', 'aoa_plan_list', '已取消', 2, NULL),
	(20, 'label-primary', 'aoa_in_mail_list', '一般', 0, NULL),
	(21, 'label-warning', 'aoa_in_mail_list', '重要', 1, NULL),
	(22, 'label-danger', 'aoa_in_mail_list', '紧急', 2, NULL),
	(23, 'label-info', 'aoa_process_list', '未处理', 0, NULL),
	(24, 'label-primary', 'aoa_process_list', '处理中', 1, NULL),
	(25, 'label-success', 'aoa_process_list', '已批准', 2, NULL),
	(26, 'label-danger', 'aoa_process_list', '未通过', 3, NULL),
	(27, 'label-primary', 'aoa_schedule_list', '一般', 0, NULL),
	(28, 'label-warning', 'aoa_schedule_list', '重要', 1, NULL),
	(29, 'label-danger', 'aoa_schedule_list', '紧急', 2, NULL);
/*!40000 ALTER TABLE `aoa_status_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_stay 结构
CREATE TABLE IF NOT EXISTS `aoa_stay` (
  `stay_id` bigint NOT NULL AUTO_INCREMENT,
  `day` int DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  `stay_city` varchar(255) DEFAULT NULL,
  `stay_money` double DEFAULT NULL,
  `stay_time` datetime DEFAULT NULL,
  `evemoney_id` bigint DEFAULT NULL,
  `user_name` bigint DEFAULT NULL,
  PRIMARY KEY (`stay_id`),
  KEY `FK50vbdodv3kd8dixbmyf9ixyc` (`evemoney_id`),
  KEY `FKho0k9o03kbn6dd96l57xvcx3y` (`user_name`),
  CONSTRAINT `FK50vbdodv3kd8dixbmyf9ixyc` FOREIGN KEY (`evemoney_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`),
  CONSTRAINT `FKho0k9o03kbn6dd96l57xvcx3y` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_stay 的数据：~0 rows (大约)
DELETE FROM `aoa_stay`;
/*!40000 ALTER TABLE `aoa_stay` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_stay` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_subject 结构
CREATE TABLE IF NOT EXISTS `aoa_subject` (
  `subject_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_subject 的数据：~25 rows (大约)
DELETE FROM `aoa_subject`;
/*!40000 ALTER TABLE `aoa_subject` DISABLE KEYS */;
INSERT INTO `aoa_subject` (`subject_id`, `name`, `parent_id`) VALUES
	(1, '报销科目', 0),
	(2, '办公室费用', 1),
	(3, '第三方采购费', 1),
	(4, '管理费用', 1),
	(5, '投标保证金', 1),
	(6, '销售费用', 1),
	(7, '预付款', 1),
	(9, '差旅费', 2),
	(10, '采购费', 3),
	(11, '外包费用', 3),
	(12, '外包服务费', 3),
	(13, '房租', 4),
	(14, '工资', 4),
	(15, '公积金', 4),
	(16, '固定电话费', 4),
	(17, '社保金', 4),
	(18, '水费', 4),
	(19, '印刷费', 4),
	(20, '电费', 4),
	(21, '投标保证金', 5),
	(22, '车辆油费', 6),
	(23, '市场推广费', 6),
	(24, '市内交通费', 6),
	(25, '招待费', 6),
	(26, '预付款', 7);
/*!40000 ALTER TABLE `aoa_subject` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_sys_menu 结构
CREATE TABLE IF NOT EXISTS `aoa_sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `is_show` int DEFAULT NULL,
  `menu_grade` int DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `sort_id` int DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_sys_menu 的数据：~55 rows (大约)
DELETE FROM `aoa_sys_menu`;
/*!40000 ALTER TABLE `aoa_sys_menu` DISABLE KEYS */;
INSERT INTO `aoa_sys_menu` (`menu_id`, `is_show`, `menu_grade`, `menu_icon`, `menu_name`, `menu_url`, `parent_id`, `sort_id`) VALUES
	(1, 1, NULL, 'glyphicon-cog', '系统管理', '##', 0, 0),
	(2, 1, NULL, 'glyphicon-education', '用户管理', '#', 0, 2),
	(3, 1, NULL, 'glyphicon-user', '角色列表', '#', 0, 3),
	(4, 1, NULL, 'glyphicon-time', '考勤管理', '#', 0, 4),
	(5, 1, NULL, 'glyphicon-hourglass', '流程管理', '#', 0, 5),
	(6, 1, NULL, 'glyphicon-bell', '公告管理', '#', 0, 6),
	(7, 1, NULL, 'glyphicon-envelope', '邮件管理', '#', 0, 7),
	(8, 1, NULL, 'glyphicon-flag', '任务管理', '#', 0, 8),
	(9, 1, NULL, 'glyphicon-calendar', '日程管理', '#', 0, 9),
	(10, 1, NULL, 'glyphicon-plane', '工作计划', '#', 0, 10),
	(11, 1, NULL, 'glyphicon-folder-open', '文件管理', '#', 0, 11),
	(12, 1, NULL, 'glyphicon-edit', '笔记管理', '#', 0, 12),
	(13, 1, NULL, 'glyphicon-comment', '讨论区', '#', 0, 14),
	(14, 1, NULL, 'glyphicon-record', '菜单管理', '/testsysmenu', 1, 2),
	(15, 1, NULL, 'glyphicon-record', '类型管理', '/testsystype', 1, 1),
	(16, 1, NULL, 'glyphicon-record', '状态管理', '/testsysstatus', 1, 3),
	(17, 1, NULL, 'glyphicon-record', '部门管理', '/deptmanage', 2, 1),
	(18, 1, NULL, 'glyphicon-record', '职位管理', '/positionmanage', 2, 3),
	(19, 1, NULL, 'glyphicon-record', '用户管理', '/usermanage', 2, 4),
	(20, 1, NULL, 'glyphicon-record', '在线用户', '/morelogrecord', 2, 2),
	(21, 1, NULL, 'glyphicon-record', '角色列表', '/rolemanage', 3, 1),
	(22, 1, NULL, 'glyphicon-record', '考勤管理', '/attendceatt', 4, 1),
	(23, 1, NULL, 'glyphicon-record', '考勤周报表', '/attendceweek', 4, 2),
	(24, 1, NULL, 'glyphicon-record', '考勤月报表', '/attendcemonth', 4, 3),
	(25, 1, NULL, 'glyphicon-record', '我的申请', '/flowmanage', 5, 1),
	(26, 1, NULL, 'glyphicon-record', '流程审核', '/audit', 5, 2),
	(27, 1, NULL, 'glyphicon-record', '通知管理', '/infrommanage', 6, 1),
	(28, 1, NULL, 'glyphicon-record', '通知列表', '/infromlist', 6, 2),
	(29, 1, NULL, 'glyphicon-record', '账号管理', '/accountmanage', 7, 1),
	(30, 1, NULL, 'glyphicon-record', '邮件管理', '/mail', 7, 2),
	(31, 1, NULL, 'glyphicon-record', '任务管理', '/taskmanage', 8, 1),
	(32, 1, NULL, 'glyphicon-record', '我的任务', '/mytask', 8, 2),
	(33, 1, NULL, 'glyphicon-record', '日程管理', '/daymanage', 9, 1),
	(34, 1, NULL, 'glyphicon-record', '我的日历', '/daycalendar', 9, 2),
	(35, 1, NULL, 'glyphicon-record', '计划管理', '/planview', 10, 1),
	(36, 1, NULL, 'glyphicon-record', '计划报表', '/myplan', 10, 2),
	(37, 1, NULL, 'glyphicon-record', '文件管理', '/filemanage', 11, 1),
	(38, 1, NULL, 'glyphicon-record', '笔记管理', '/noteview', 12, 0),
	(39, 1, NULL, 'glyphicon-earphone', '通讯录', '#', 0, 13),
	(40, 1, NULL, 'glyphicon-record', '通讯录', '/addrmanage', 39, 1),
	(41, 1, NULL, 'glyphicon-record', '我的管理', '/chatmanage', 13, 1),
	(42, 1, NULL, 'glyphicon-record', '讨论区列表', '/chatlist', 13, 2),
	(67, 1, NULL, 'glyphicon-record', '考勤列表', '/attendcelist', 4, 4),
	(76, NULL, NULL, '21', '12', '21', NULL, NULL),
	(77, 0, NULL, '额', '额', 'e', NULL, NULL),
	(78, 0, NULL, '312', '31', '312', NULL, NULL),
	(79, 0, NULL, '放大', '范德萨', '富士达', NULL, NULL),
	(80, NULL, NULL, '富士达', '任务', '富士达', NULL, NULL),
	(81, 1, NULL, '富士达', '任务', '富士达', NULL, NULL),
	(82, 1, NULL, '21', '12', '21', NULL, NULL),
	(86, 1, NULL, 'glyphicon-record', 'fds', 'fdsa', 999, 0),
	(87, 1, NULL, 'glyphicon-record', '1', '1', 999, 0),
	(88, 0, NULL, 'glyphicon-record', '1', '1', 999, 0),
	(89, 1, NULL, 'glyphicon-record', '超级管理员', '/adminmanage', 13, 0),
	(90, 1, NULL, 'glyphicon-record', '新建流程', '/xinxeng', 5, 0);
/*!40000 ALTER TABLE `aoa_sys_menu` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_task_list 结构
CREATE TABLE IF NOT EXISTS `aoa_task_list` (
  `task_id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_cancel` int DEFAULT '0',
  `is_top` int DEFAULT '0',
  `modify_time` datetime DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `star_time` datetime DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `task_describe` varchar(255) NOT NULL,
  `ticking` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `type_id` bigint DEFAULT NULL,
  `task_push_user_id` bigint DEFAULT NULL,
  `reciverlist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FK7qch0fh6s2y73dvngy1m87aw7` (`task_push_user_id`),
  CONSTRAINT `FK7qch0fh6s2y73dvngy1m87aw7` FOREIGN KEY (`task_push_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_task_list 的数据：~0 rows (大约)
DELETE FROM `aoa_task_list`;
/*!40000 ALTER TABLE `aoa_task_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_task_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_task_logger 结构
CREATE TABLE IF NOT EXISTS `aoa_task_logger` (
  `logger_id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `logger_ticking` varchar(255) DEFAULT NULL,
  `task_id` bigint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `logger_statusid` int DEFAULT NULL,
  PRIMARY KEY (`logger_id`),
  KEY `FK5gu0thq54i7ujc6cict009h4y` (`task_id`),
  CONSTRAINT `FK5gu0thq54i7ujc6cict009h4y` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_task_logger 的数据：~0 rows (大约)
DELETE FROM `aoa_task_logger`;
/*!40000 ALTER TABLE `aoa_task_logger` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_task_logger` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_task_user 结构
CREATE TABLE IF NOT EXISTS `aoa_task_user` (
  `pk_id` bigint NOT NULL AUTO_INCREMENT,
  `status_id` bigint DEFAULT NULL,
  `task_id` bigint DEFAULT NULL,
  `task_recive_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2714kl5ywm5chya4dxte8c788` (`task_id`),
  KEY `FK654dfo0oouy3fk07fs7rqo4ld` (`task_recive_user_id`),
  CONSTRAINT `FK2714kl5ywm5chya4dxte8c788` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`),
  CONSTRAINT `FK654dfo0oouy3fk07fs7rqo4ld` FOREIGN KEY (`task_recive_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_task_user 的数据：~0 rows (大约)
DELETE FROM `aoa_task_user`;
/*!40000 ALTER TABLE `aoa_task_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_task_user` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_traffic 结构
CREATE TABLE IF NOT EXISTS `aoa_traffic` (
  `traffic_id` bigint NOT NULL AUTO_INCREMENT,
  `depart_name` varchar(255) DEFAULT NULL,
  `depart_time` datetime DEFAULT NULL,
  `reach_name` varchar(255) DEFAULT NULL,
  `seat_type` varchar(255) DEFAULT NULL,
  `traffic_money` double DEFAULT NULL,
  `traffic_name` varchar(255) DEFAULT NULL,
  `evection_id` bigint DEFAULT NULL,
  `user_name` bigint DEFAULT NULL,
  PRIMARY KEY (`traffic_id`),
  KEY `FKt5gk2fg5t802gnq8y03p9e7di` (`evection_id`),
  KEY `FKejkemcx58mfj2lgi2jo2rlih3` (`user_name`),
  CONSTRAINT `FKejkemcx58mfj2lgi2jo2rlih3` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKt5gk2fg5t802gnq8y03p9e7di` FOREIGN KEY (`evection_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_traffic 的数据：~0 rows (大约)
DELETE FROM `aoa_traffic`;
/*!40000 ALTER TABLE `aoa_traffic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_traffic` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_type_list 结构
CREATE TABLE IF NOT EXISTS `aoa_type_list` (
  `type_id` bigint NOT NULL AUTO_INCREMENT,
  `type_color` varchar(255) DEFAULT NULL,
  `type_model` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `sort_value` int DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_type_list 的数据：~47 rows (大约)
DELETE FROM `aoa_type_list`;
/*!40000 ALTER TABLE `aoa_type_list` DISABLE KEYS */;
INSERT INTO `aoa_type_list` (`type_id`, `type_color`, `type_model`, `type_name`, `sort_value`) VALUES
	(1, 'red', 'aoa_mailnumber', '系统邮件', 0),
	(2, 'red', 'aoa_mailnumber', '公司邮件', 1),
	(3, 'red', 'aoa_task_list', '公事', 0),
	(4, 'red', 'aoa_task_list', '私事', 1),
	(5, 'red', 'aoa_note_list', '我的笔记', 0),
	(6, 'red', 'aoa_note_list', '公司笔记', 1),
	(7, 'red', 'aoa_note_list', '共享笔记', 2),
	(8, 'red', 'aoa_attends_list', '上班', 1),
	(9, 'red', 'aoa_attends_list', '下班', 2),
	(10, 'red', 'inform', '公告', 0),
	(11, 'red', 'inform', '通知', 1),
	(12, 'red', 'inform', '投票', 2),
	(13, 'red', 'aoa_plan_list', '日计划', 0),
	(14, 'red', 'aoa_plan_list', '周计划', 1),
	(15, 'red', 'aoa_plan_list', '月计划', 2),
	(16, 'red', 'aoa_in_mail_list', '邮件', 0),
	(17, 'red', 'aoa_in_mail_list', '通知', 1),
	(18, 'red', 'aoa_in_mail_list', '公告', 2),
	(19, 'label-danger', 'chat', '公告', 0),
	(20, 'label-success', 'chat', '讨论', 1),
	(21, 'label-warning', 'chat', '投票', 2),
	(22, 'red', 'aoa_process_list', '正常', 0),
	(23, 'red', 'aoa_process_list', '重要', 1),
	(24, 'red', 'aoa_process_list', '紧急', 2),
	(25, 'red', 'aoa_bursement', '银行卡', 0),
	(26, 'red', 'aoa_bursement', '现金', 1),
	(27, 'red', 'aoa_bursement', '其他', 2),
	(28, 'red', 'aoa_evection', '销售拜访', 0),
	(29, 'red', 'aoa_evection', '售前支持', 1),
	(30, 'red', 'aoa_evection', '项目支持', 2),
	(31, 'red', 'aoa_evection', '客服外出', 3),
	(32, 'red', 'aoa_evection', '其他', 4),
	(33, 'red', 'aoa_overtime', '工作日', 0),
	(34, 'red', 'aoa_overtime', '休息日', 1),
	(35, 'red', 'aoa_overtime', '节假日', 2),
	(36, 'red', 'aoa_overtime', '其他', 3),
	(37, '1、年假：工作满一年以上每年可享受带薪年假，当年的年假使用期至次年3月1日止；未经用人单位批准，员工不得自行休假。', 'aoa_holiday', '年假', 7),
	(38, '2、事假：按照平均工作日扣发薪资（包含工资及各类补贴福利）；单次事假原则上不应超过3天，当年累计事假超过15天的视为主动放弃继续履行岗位职责的权利，特殊情况除外。  ', 'aoa_holiday', '事假', 4),
	(39, '3、病假：两天及以上病假必须持工作地二级甲等以上医院相关病假证明单或就医记录证明，否则无法享受病假工资；单次病假超过5天，应当持有工作所在地三级甲等医院提供的病假证明单。原则上当年累计病假超过15天应视为不具备继续履行岗位职责身体条件，特殊情况除外。  ', 'aoa_holiday', '病假', NULL),
	(40, '4、婚假：婚假为十天，包含休息日，请婚假必须持结婚证明，结婚证必须在泛微工作期间领取，且婚假必须在一年内使用完毕，不得分次休假，国家或地方政府有其他规定的按照当地要求执行；  ', 'aoa_holiday', '婚假', 10),
	(41, '5、产假及哺乳假：按国家及地方法律法规执行，包含休息日与法定节假日；  ', 'aoa_holiday', '产假及哺乳假', 180),
	(42, '6、陪产假：泛微正式男性员工在工作期间配偶生育的，可凭子女出生证明，享受十个自然日陪产假。  ', 'aoa_holiday', '陪产假', 10),
	(43, '7、丧假：直系亲属：配偶、子女、父母可享受三天，岳父母、祖父母、外祖父母可享受一天', 'aoa_holiday', '丧假', NULL),
	(44, '', 'aoa_schedule_list', '日程提醒', 0),
	(45, '', 'aoa_schedule_list', '假日安排', 1),
	(46, 'red', 'aoa_attends_list', '请假', 3),
	(47, 'red', 'aoa_attends_list', '出差', 4);
/*!40000 ALTER TABLE `aoa_type_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_user 结构
CREATE TABLE IF NOT EXISTS `aoa_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `eamil` varchar(255) DEFAULT NULL,
  `father_id` bigint DEFAULT NULL,
  `hire_time` datetime DEFAULT NULL,
  `user_idcard` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `is_lock` int DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modify_user_id` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `user_school` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `theme_skin` varchar(255) DEFAULT NULL,
  `user_edu` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sign` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  `position_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `superman` int DEFAULT NULL,
  `holiday` int DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FKt0vmot9xfbgq14oyij0gwh3gh` (`dept_id`),
  KEY `FKadtg9xju7q1ijcyxlkl9gwv5t` (`position_id`),
  KEY `FKl738mmblfx0uia6671rl17cj9` (`role_id`),
  CONSTRAINT `FKadtg9xju7q1ijcyxlkl9gwv5t` FOREIGN KEY (`position_id`) REFERENCES `aoa_position` (`position_id`),
  CONSTRAINT `FKl738mmblfx0uia6671rl17cj9` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`),
  CONSTRAINT `FKt0vmot9xfbgq14oyij0gwh3gh` FOREIGN KEY (`dept_id`) REFERENCES `aoa_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_user 的数据：~1 rows (大约)
DELETE FROM `aoa_user`;
/*!40000 ALTER TABLE `aoa_user` DISABLE KEYS */;
INSERT INTO `aoa_user` (`user_id`, `address`, `bank`, `birth`, `eamil`, `father_id`, `hire_time`, `user_idcard`, `img_path`, `is_lock`, `last_login_ip`, `last_login_time`, `modify_time`, `modify_user_id`, `password`, `real_name`, `salary`, `user_school`, `sex`, `theme_skin`, `user_edu`, `user_name`, `user_sign`, `user_tel`, `dept_id`, `position_id`, `role_id`, `superman`, `holiday`, `pinyin`) VALUES
	(1, '超级管理员', '0000000000000000', '1986-02-03 00:00:00', 'xxxxxxx@xxx.com', 0, '2017-09-22 19:35:40', '510322198602030429', 'oasys.jpg', 0, NULL, NULL, NULL, NULL, '123456', '超级管理员', 2000, '超级管理员', '男', 'blue', '本科', 'admin', 'admin', '13111111111', 1, 1, 1, 1, NULL, 'admin');
/*!40000 ALTER TABLE `aoa_user` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_user_log 结构
CREATE TABLE IF NOT EXISTS `aoa_user_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `ip_addr` varchar(255) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKherb88q97dxbtcge09ii875qm` (`user_id`),
  CONSTRAINT `FKherb88q97dxbtcge09ii875qm` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_user_log 的数据：~0 rows (大约)
DELETE FROM `aoa_user_log`;
/*!40000 ALTER TABLE `aoa_user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_user_log` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_user_login_record 结构
CREATE TABLE IF NOT EXISTS `aoa_user_login_record` (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FKks6qpqj3ss4e4timjt0xok1p0` (`user_id`),
  CONSTRAINT `FKks6qpqj3ss4e4timjt0xok1p0` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_user_login_record 的数据：~0 rows (大约)
DELETE FROM `aoa_user_login_record`;
/*!40000 ALTER TABLE `aoa_user_login_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_user_login_record` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_vote_list 结构
CREATE TABLE IF NOT EXISTS `aoa_vote_list` (
  `vote_id` bigint NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `selectone` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_vote_list 的数据：~0 rows (大约)
DELETE FROM `aoa_vote_list`;
/*!40000 ALTER TABLE `aoa_vote_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_vote_list` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_vote_titles 结构
CREATE TABLE IF NOT EXISTS `aoa_vote_titles` (
  `title_id` bigint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  PRIMARY KEY (`title_id`),
  KEY `FKnl21d99b8hc6gtfrrfsc9alge` (`vote_id`),
  CONSTRAINT `FKnl21d99b8hc6gtfrrfsc9alge` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_vote_titles 的数据：~0 rows (大约)
DELETE FROM `aoa_vote_titles`;
/*!40000 ALTER TABLE `aoa_vote_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_vote_titles` ENABLE KEYS */;

-- 导出  表 oa_system.aoa_vote_title_user 结构
CREATE TABLE IF NOT EXISTS `aoa_vote_title_user` (
  `vote_title_user_id` bigint NOT NULL AUTO_INCREMENT,
  `vote_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `title_id` bigint DEFAULT NULL,
  PRIMARY KEY (`vote_title_user_id`),
  KEY `FKb2pou179gr3wf10lx0wy6qrli` (`user_id`),
  KEY `FK79ia8m9w7faxi7wmth7or8mqg` (`title_id`),
  CONSTRAINT `FK79ia8m9w7faxi7wmth7or8mqg` FOREIGN KEY (`title_id`) REFERENCES `aoa_vote_titles` (`title_id`),
  CONSTRAINT `FKb2pou179gr3wf10lx0wy6qrli` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  oa_system.aoa_vote_title_user 的数据：~0 rows (大约)
DELETE FROM `aoa_vote_title_user`;
/*!40000 ALTER TABLE `aoa_vote_title_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_vote_title_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
