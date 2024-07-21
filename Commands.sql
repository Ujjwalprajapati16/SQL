
SHOW DATABASES;

USE tutorial;

SELECT database();

CREATE TABLE employee (
	EID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL
);

SHOW TABLES;
DROP TABLE employee;
DESC employee;

INSERT INTO employee(FirstName, LastName, Age, Salary, Location) VALUES("Bhaiya", "Pikahcu", 25, 200000, "Bhopal");

SELECT * FROM employee;

INSERT INTO employee (FirstName, LastName, Age, Salary, Location) VALUES
('John', 'Doe', 30, 50000, 'New York'),
('Jane', 'Smith', 28, 55000, 'Los Angeles'),
('Robert', 'Johnson', 35, 60000, 'Chicago'),
('Emily', 'Davis', 40, 65000, 'Houston'),
('Michael', 'Brown', 45, 70000, 'Phoenix'),
('Jessica', 'Wilson', 32, 52000, 'Philadelphia'),
('David', 'Moore', 38, 58000, 'San Antonio'),
('Laura', 'Taylor', 26, 48000, 'San Diego'),
('Daniel', 'Anderson', 29, 54000, 'Dallas'),
('Sophia', 'Thomas', 33, 59000, 'San Jose');

-- Give the employee details having salary more than 100000
SELECT * FROM employee WHERE Salary > 100000;
SELECT FirstName, LastName FROM employee;

-- Update command 

UPDATE employee SET FirstName = "Pika" WHERE EID = 1;

-- Delete Command
DELETE FROM employee WHERE EiD = 2;
