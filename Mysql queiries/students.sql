#jdbc

create database students;
use students;
CREATE TABLE `details` (
   `id` int NOT NULL AUTO_INCREMENT,
   `first_name` varchar(20) NOT NULL,
   `last_name` varchar(20) NOT NULL ,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
select * from students.details;
drop table students;