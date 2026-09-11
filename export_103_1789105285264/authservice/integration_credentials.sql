USE `authservice`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `integration_credentials`;
CREATE TABLE `integration_credentials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `integration_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` longtext,
  PRIMARY KEY (`id`),
  KEY `FKkbw120dvxqh93y9i3op9v9fy2` (`integration_id`),
  KEY `FKeve3lvcgdtupnyqqbc74he7eb` (`project_id`),
  KEY `FKq3n522ni58dbn5gooxqkx8jgp` (`user_id`),
  CONSTRAINT `FKeve3lvcgdtupnyqqbc74he7eb` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `FKkbw120dvxqh93y9i3op9v9fy2` FOREIGN KEY (`integration_id`) REFERENCES `integrations` (`id`),
  CONSTRAINT `FKq3n522ni58dbn5gooxqkx8jgp` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `integration_credentials` (`id`,`integration_id`,`user_id`,`project_id`,`username`,`password`) VALUES
(307,168,2,103,'any','any'),
(308,168,98,103,'any','any'),
(309,168,99,103,'any','any'),
(310,168,100,103,'any','any'),
(311,168,101,103,'any','any');

SET FOREIGN_KEY_CHECKS=1;
