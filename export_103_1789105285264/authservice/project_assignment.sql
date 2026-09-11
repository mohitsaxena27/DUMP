USE `authservice`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `project_assignment`;
CREATE TABLE `project_assignment` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `assigned_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`assignment_id`),
  KEY `c1_idx` (`user_id`),
  KEY `c2_idx` (`project_id`),
  KEY `c3_idx` (`role_id`),
  CONSTRAINT `c1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `c2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `c3` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `project_assignment` (`assignment_id`,`user_id`,`project_id`,`role_id`,`assigned_at`) VALUES
(165,2,103,2,'2026-04-10 06:30:38'),
(166,98,103,2,'2026-04-10 06:30:38'),
(167,99,103,2,'2026-04-22 13:05:29'),
(168,100,103,2,'2026-04-22 13:05:29'),
(169,101,103,2,'2026-04-22 13:05:29'),
(171,97,103,2,'2026-05-04 08:28:15');

SET FOREIGN_KEY_CHECKS=1;
