USE `authservice`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `role` int DEFAULT NULL,
  `enabled` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_display_name` varchar(255) DEFAULT NULL,
  `last_updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api_key` longtext,
  `llm_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `user` (`user_id`,`username`,`password`,`role`,`enabled`,`created_at`,`user_display_name`,`last_updated_at`,`api_key`,`llm_key`) VALUES
(2,'admin','$2a$12$U1BiFINvLOorRYhm7MuT/.aenz6K.1Iayrd194/2T1mUzj.XjvLLG',1,1,'2024-10-01 08:26:59','Admin','2024-10-01 08:27:45',NULL,NULL),
(97,'qe.orange','$2a$12$PzQbi84RG7rz.HX8PLQhs.m1N.RwKwSfsWZgBaP9xc2NHre.NpjRu',2,1,'2026-04-08 07:42:30','QE','2026-06-19 09:38:50',NULL,'any'),
(98,'ppuser','$2a$10$4WWNteMk370CGa1bXLplFO.yUa6xL6HeZRs33NeHaujW5AujPJxPW',2,1,'2026-04-10 06:30:38','PP','2026-04-10 06:30:38',NULL,'any'),
(99,'niteshd@saksoft.com','$2a$12$PzQbi84RG7rz.HX8PLQhs.m1N.RwKwSfsWZgBaP9xc2NHre.NpjRu',2,1,'2026-04-22 13:04:46','nitesh','2026-04-22 13:04:46',NULL,'any'),
(100,'krishna.g@saksoft.com','$2a$12$PzQbi84RG7rz.HX8PLQhs.m1N.RwKwSfsWZgBaP9xc2NHre.NpjRu',2,1,'2026-04-22 13:04:46','neeraj','2026-04-22 13:04:46',NULL,'any'),
(101,'puneetg@saksoft.com','$2a$12$PzQbi84RG7rz.HX8PLQhs.m1N.RwKwSfsWZgBaP9xc2NHre.NpjRu',2,1,'2026-04-22 13:04:46','puneet','2026-04-22 13:04:46',NULL,'any');

SET FOREIGN_KEY_CHECKS=1;
