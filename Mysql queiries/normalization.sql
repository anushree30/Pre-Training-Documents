use training;

#1NF
Create table normalization(Employee varchar(255),Age int,Dept varchar(255));
INSERT INTO normalization (Employee ,Age,Dept) VALUES ('Alice',21, 'Marketing' );
INSERT INTO normalization (Employee ,Age,Dept) VALUES ('Alice',21, 'Sales' );
INSERT INTO normalization (Employee ,Age,Dept) VALUES ('ALex',23, 'Finance' );
INSERT INTO normalization (Employee ,Age,Dept) VALUES ('Alex',23, 'Investment Banking' );

#2NF
Create table emp(empid int,Age int,Employee varchar(255));
ALTER TABLE emp
ADD PRIMARY KEY (empid);
Create table dept(dept_id int,Dept varchar(255));
ALTER TABLE dept
ADD PRIMARY KEY (dept_id);
Create table details(details_id int,dept_id int,empid int,FOREIGN KEY (dept_id) REFERENCES dept(dept_id),FOREIGN KEY (empid) REFERENCES emp(empid));

#3NF
CREATE TABLE ADDRESS(
   ZIP           VARCHAR(12),
   STREET        VARCHAR(200),
   CITY          VARCHAR(100),
   STATE         VARCHAR(100),
   PRIMARY KEY (ZIP)
);

CREATE TABLE CUSTOMERS(
   CUST_ID       INT              NOT NULL,
   CUST_NAME     VARCHAR (20)      NOT NULL,
   DOB           DATE,
   ZIP           VARCHAR(12),
   EMAIL_ID      VARCHAR(256),
   PRIMARY KEY (CUST_ID)
);
#BCNF
create table Student(
	Student_id int,
    Prof_id int,
    FOREIGN KEY (Prof_id) REFERENCES Professor(Prof_id),
    PRIMARY KEY (Student_id));
Create table Professor(
Prof_id int NOT NULL,
Professor varchar(255),
Subjects varchar(255),
PRIMARY KEY(Prof_id)
);

