USE `tcg`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `intial_idea`;
CREATE TABLE `intial_idea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `input` longtext NOT NULL,
  `executive_summary` longtext,
  `business_objectives` longtext,
  `status` varchar(45) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


SET FOREIGN_KEY_CHECKS=1;
