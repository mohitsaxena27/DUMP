USE `tdm`;
SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `table_view`;
CREATE TABLE `table_view` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_view` longtext,
  `table_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `table_view` (`id`,`table_view`,`table_id`) VALUES
(3,'[\'C2\', \'C1\', \'C3\', \'FirstName\', \'Lastname\', \'testing\', \'testingint\', \'testingg\', \'testingseventy\']',3),
(148,'[\'Browser Execution\']',183),
(149,'[\'URL\', \'User Name\', \'Password\']',184),
(150,'[\'A\', \'B\', \'C\']',185),
(153,'[\'name\', \'age\', \'surname\']',188),
(158,'[\'Data1\', \'Data2\', \'Data3\']',193);

SET FOREIGN_KEY_CHECKS=1;
