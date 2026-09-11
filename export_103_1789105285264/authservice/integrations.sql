USE `authservice`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `integrations`;
CREATE TABLE `integrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `project_id` int NOT NULL,
  `enable` tinyint DEFAULT '0',
  `tool` varchar(45) DEFAULT NULL,
  `additional_config` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlcbes67hycby4j22eq3ukbmun` (`project_id`),
  CONSTRAINT `FKlcbes67hycby4j22eq3ukbmun` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `integrations` (`id`,`type`,`url`,`project_id`,`enable`,`tool`,`additional_config`) VALUES
(168,'LLM','http://10.154.2.98:11434/v1',103,1,'Local',NULL);

SET FOREIGN_KEY_CHECKS=1;
