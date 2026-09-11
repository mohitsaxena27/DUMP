USE `tcg`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `com_log`;
CREATE TABLE `com_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `userstory_id` int DEFAULT NULL,
  `stage` int DEFAULT NULL,
  `before_chat` longtext,
  `after_chat` longtext,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `additional_details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SET FOREIGN_KEY_CHECKS=1;
