USE `tcg`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `stage_output`;
CREATE TABLE `stage_output` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `userstory_id` int DEFAULT NULL,
  `stage` int DEFAULT NULL,
  `output` longtext,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `requirment_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SET FOREIGN_KEY_CHECKS=1;
