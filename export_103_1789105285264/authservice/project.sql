USE `authservice`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(45) DEFAULT NULL,
  `project_type` enum('Automation','Manual','Data') DEFAULT NULL,
  `description` longtext,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `manual_repo` varchar(255) NOT NULL,
  `automation_repo` varchar(255) DEFAULT NULL,
  `linked` tinyint DEFAULT NULL,
  `llm_model` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `project` (`id`,`project_name`,`project_type`,`description`,`created_at`,`updated_at`,`manual_repo`,`automation_repo`,`linked`,`llm_model`) VALUES
(103,'PipeNPiling','Manual','Pipe and Piling steel pipe, piling, concrete piles, pile tips, and accessories in stainless cast steel or special fabricate types','2026-04-10 06:30:38','2026-06-11 17:33:37','PipenPiling','',1,'nemotron-3-nano:4b');

SET FOREIGN_KEY_CHECKS=1;
