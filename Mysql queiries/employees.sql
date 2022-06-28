create database employees;
use employees;
CREATE TABLE `employee` (
   `id` int NOT NULL AUTO_INCREMENT,
   `first_name` varchar(20) NOT NULL,
   `last_name` varchar(20) NOT NULL ,
   `username` varchar(250) NOT NULL,
   `password` varchar(20) NOT NULL,
   `address` varchar(45) NOT NULL,
   `contact` varchar(45) NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
select * from employees.employee;
drop table employee;
