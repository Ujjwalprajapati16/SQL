use tutorial;

SELECT * FROM learner;

-- Count of the number of students who joined  the course via 
SELECT Source_of_joining, COUNT(*) as num_of_students
FROM learner
GROUP BY Source_of_joining;

-- grouping via source of joining and location
SELECT Source_of_joining, COUNT(*) as num_of_students
FROM learner
GROUP BY Source_of_joining, Location;

-- Corresponding to each other course, how many students have enrolled
SELECT Selected_course, COUNT(*) as num_of_students
FROM learner
GROUP BY Selected_course;

SELECT * FROM Courses;

-- Corrsponding to indiviual source of joining, give the maximum years of experience the learner have
SELECT Source_of_joining, MAX(Year_of_experince) as max_yeras_exp
FROM learner
GROUP BY Source_of_joining;

-- Corrsponding to indiviual source of joining, give the minimum years of experience the learner have
SELECT Source_of_joining, MIN(Year_of_experince) as max_yeras_exp
FROM learner
GROUP BY Source_of_joining;

-- Corrsponding to indiviual source of joining, give the average years of experience the learner have
SELECT Source_of_joining, AVG(Year_of_experince) as max_yeras_exp
FROM learner
GROUP BY Source_of_joining;

-- Corrsponding to indiviual source of joining, give the Summition years of experience the learner have
-- It doesn't makes any sense
SELECT Source_of_joining, SUM(Year_of_experince) as max_yeras_exp
FROM learner
GROUP BY Source_of_joining;

-- Display the records of those learner they have more than one source of joining
SELECT Source_of_joining, COUNT(*) AS num_of_students
FROM learner
GROUP BY Source_of_joining
HAVING num_of_students > 2;

-- Display the count of those students who joined via friend refferal
SELECT Source_of_joining, COUNT(*) AS num_of_students
FROM learner
GROUP BY Source_of_joining
HAVING Source_of_joining = "Friend Referral";

-- Display the recprds of those students who have less than 4 years of exprenice and 
SELECT * FROM learner
WHERE Year_of_experince < 4 AND Source_of_joining = "Friend Referral";

-- Alter Command in sql
DESC employee;
ALTER TABLE employee ADD COLUMN jobPosition varchar(50);
ALTER TABLE employee MODIFY COLUMN FirstName varchar(40);

-- TRUNCATE in sql
-- Delete vs truncate command in sql --> research 


-- Datatypes in sql --> Decimal




