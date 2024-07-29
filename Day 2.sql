use tutorial;

CREATE TABLE courses(
	CourseID INT auto_increment,
	CourseName VARCHAR(50) NOT NULL,
    Course_duration_months INT NOT NULL,
    CourseFee INT NOT NULL,
    PRIMARY KEY(CourseID)
);

DESC Courses;

CREATE TABLE courses (
    CourseID INT AUTO_INCREMENT,
    CourseName VARCHAR(50) NOT NULL,
    Course_duration_months INT NOT NULL,
    CourseFee INT NOT NULL,
    PRIMARY KEY (CourseID)
);

INSERT INTO courses (CourseName, Course_duration_months, CourseFee) VALUES
('Introduction to Programming', 3, 5000),
('Data Structures and Algorithms', 4, 6000),
('Web Development', 6, 8000),
('Database Management Systems', 5, 7000),
('Machine Learning', 6, 10000),
('Artificial Intelligence', 6, 12000),
('Cyber Security', 5, 9000),
('Cloud Computing', 4, 8500),
('Mobile App Development', 5, 9500),
('Software Engineering', 4, 6500);

SELECT * FROM courses;

SHOW tables;

CREATE TABLE Learner(
	Id INT AUTO_INCREMENT,
    First_name VARCHAR(50) NOT NULL,
    Last_name VARCHAR(50) NOT NULL,
    Phone_no VARCHAR(15) NOT NULL,
    Email_id VARCHAR(50),
    Enrollment_date TIMESTAMP NOT NULL,
    Selected_course INT NOT NULL,
    Year_of_experince INT NOT NULL,
    Learner_company VARCHAR(50),
    Source_of_joining VARCHAR(50) NOT NULL,
    Batch_start_date TIMESTAMP NOT NULL,
    Location VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id),
    UNIQUE KEY(Email_id),
    FOREIGN KEY(Selected_course) REFERENCES Courses(CourseID)
);

DESC learner;

INSERT INTO Learner (
    First_name, Last_name, Phone_no, Email_id, Enrollment_date, 
    Selected_course, Year_of_experince, Learner_company, 
    Source_of_joining, Batch_start_date, Location
) VALUES
('Amit', 'Sharma', '9876543210', 'amit.sharma@example.com', '2024-07-01 10:00:00', 1, 2, 'TechCorp', 'Online Ad', '2024-08-01 09:00:00', 'Delhi'),
('Priya', 'Singh', '9876543211', 'priya.singh@example.com', '2024-07-02 11:00:00', 2, 3, 'Innova Solutions', 'Friend Referral', '2024-08-01 09:00:00', 'Mumbai'),
('Rahul', 'Verma', '9876543212', 'rahul.verma@example.com', '2024-07-03 12:00:00', 3, 1, 'WebWorks', 'Social Media', '2024-08-01 09:00:00', 'Bangalore'),
('Sita', 'Patel', '9876543213', 'sita.patel@example.com', '2024-07-04 13:00:00', 4, 4, 'DataMetrics', 'Website', '2024-08-01 09:00:00', 'Ahmedabad'),
('Gopal', 'Nair', '9876543214', 'gopal.nair@example.com', '2024-07-05 14:00:00', 5, 2, 'AIMachine', 'Email Campaign', '2024-08-01 09:00:00', 'Kochi'),
('Doraemon', 'Gadget', '9876543215', 'doraemon@example.com', '2024-07-06 15:00:00', 6, 1, 'GadgetCorp', 'TV Ad', '2024-08-01 09:00:00', 'Tokyo'),
('Nobita', 'Nobi', '9876543216', 'nobita.nobi@example.com', '2024-07-07 16:00:00', 7, 0, 'FutureWorks', 'TV Ad', '2024-08-01 09:00:00', 'Tokyo'),
('Chhota', 'Bheem', '9876543217', 'chhota.bheem@example.com', '2024-07-08 17:00:00', 8, 1, 'Dholakpur Solutions', 'Friend Referral', '2024-08-01 09:00:00', 'Dholakpur'),
('Shinchan', 'Nohara', '9876543218', 'shinchan.nohara@example.com', '2024-07-09 18:00:00', 9, 0, 'Mischief Inc.', 'TV Ad', '2024-08-01 09:00:00', 'Kasukabe'),
('Ash', 'Ketchum', '9876543219', 'ash.ketchum@example.com', '2024-07-10 19:00:00', 10, 2, 'PokeCorp', 'Friend Referral', '2024-08-01 09:00:00', 'Pallet Town'),
('Naruto', 'Uzumaki', '9876543220', 'naruto.uzumaki@example.com', '2024-07-11 20:00:00', 1, 1, 'NinjaTech', 'Website', '2024-08-01 09:00:00', 'Konoha'),
('Sakura', 'Haruno', '9876543221', 'sakura.haruno@example.com', '2024-07-12 21:00:00', 2, 1, 'MedicalNin', 'Social Media', '2024-08-01 09:00:00', 'Konoha'),
('Sasuke', 'Uchiha', '9876543222', 'sasuke.uchiha@example.com', '2024-07-13 22:00:00', 3, 2, 'UchihaCorp', 'Friend Referral', '2024-08-01 09:00:00', 'Konoha'),
('Tom', 'Cat', '9876543223', 'tom.cat@example.com', '2024-07-14 23:00:00', 4, 3, 'CartoonWorks', 'TV Ad', '2024-08-01 09:00:00', 'CartoonLand'),
('Jerry', 'Mouse', '9876543224', 'jerry.mouse@example.com', '2024-07-15 00:00:00', 5, 3, 'CheeseCorp', 'TV Ad', '2024-08-01 09:00:00', 'CartoonLand');


SELECT * FROM learner;

-- Data Analysis [Employee, Courses, learner]
-- 1. Give the recored of the employee getting highest salary
SELECT * FROM employee
ORDER BY Salary DESC
LIMIT 1;

SELECT * FROM employee;

SELECT MAX(Salary) as max_salary FROM employee;
SELECT MIN(Salary) as min_salary FROM employee;

SELECT *
FROM employee
WHERE Salary = (
	SELECT MAX(Salary)
    FROM employee
);
-- 2. Give the record of highest salary and age bigger than 25

SELECT * FROM employee
WHERE age > 30
ORDER BY Salary DESC
LIMIT 1;

-- 3. Display the number of enrollments
SELECT COUNT(*) as num_of_enrollments
FROM learner;

-- 4. Dsiaply the number of enrollments for the selected coursse3
SELECT COUNT(*) AS num_of_learners
FROM learner
WHERE Selected_course=3;

-- 5. Count the number of larners joined on july
SELECT COUNT(*) AS no_of_learners_july FROM learner
WHERE Enrollment_date LIKE '%-07-%';

-- 6. Update the data with years of expreience as 1 and learner 
UPDATE learner
SET Year_of_experince = 2 ,Learner_company = "Amazon"
WHERE Id = 40;

SELECT * FROM learner;

-- 7. Count the number of distinct companies
SELECT COUNT(DISTINCT Learner_company) as distinct_companies
FROM learner;
