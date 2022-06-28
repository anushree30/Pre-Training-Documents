CREATE DATABASE training;
use training;
CREATE TABLE training.Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
drop table persons;

CREATE TABLE people (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);
ALTER TABLE people
ADD UNIQUE (FirstName);
ALTER TABLE people
ADD CHECK (Age>=18);
Alter TABLE people ADD COLUMN City varchar(255);
ALTER TABLE people
ALTER City SET DEFAULT 'Mumbai';
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (1, 'Adams', 'John', 21 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (2,'Sayan', 'Shru', 22 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (3,'Hail', 'Beib', 26 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (4,'Jenner', 'Kendall', 18 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (5,'Cruise', 'Tom', 28 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (6,'Shane', 'Watson', 28 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (7,'Kohli', 'Virat', 26 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (8,'Tendulkar', 'Sachin', 27 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (9,'Javed', 'Ali', 18 );
INSERT INTO people (ID,LastName,FirstName,Age) VALUES (10,'Khan', 'Salman', 22 );

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    FOREIGN KEY (PersonID) REFERENCES people(ID) ON UPDATE CASCADE
        ON DELETE CASCADE
);
drop  table Orders;
Select * from Orders;
ALTER TABLE Orders
ADD PRIMARY KEY (OrderID);
CREATE INDEX idx_OrderNumber
ON Orders (OrderNumber);
ALTER TABLE Orders AUTO_INCREMENT=100;
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (1,10,1);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (2,15,1);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (3,108,7);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (4,17,9);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (5,26,7);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (6,245,8);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (7,74,8);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (8,78,8);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (9,96,10);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (10,140,10);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (11,19,2);
INSERT INTO Orders (OrderID,OrderNumber,PersonID) VALUES (12,45,2);





CREATE VIEW MajorCustomers AS
SELECT FirstName, LastName
FROM people
WHERE Age < 21;
SELECT * FROM MajorCustomers;

SELECT COUNT(ID), Age
FROM people
GROUP BY Age
HAVING COUNT(ID) > 1;

DELIMITER $$
CREATE PROCEDURE candidates(IN ID INT)
BEGIN
	SELECT people.id, people.FirstName,people.LastName
	FROM people
	INNER JOIN Orders ON people.id = Orders.OrderID;
    END$$
DELIMITER ;
CALL candidates(1);
