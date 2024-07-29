1. DELETE VS DROP: delete works on schema or table's data while drop works on schema
   drop(DDL) while Delete(DML)

2. UNIQUE KEY: It say, it should be unique but can be null also

3. FOREIGN KEY:

4. UNIQUE KEY vs PRIMARY KEY: can be null but primary key can't be null

5. TIMESTAMP datatype: '2024-07-24 11:23:23' (but what if I change if formate), if you don't give time, it will take as 00:00:00

6. ORDER BY(ASEC(by default) but for desending(DESC)): It will order the data in ascending or decending order

```SQL
SELECT *
FROM learners
ORDER BY enrollmentDate ASC;

SELECT *
FROM learners
ORDER BY yearOfExp DESC;

```

7. LIMIT 5: it gives from starting not from ending, so in the below case, first salary will be orderd in descending order(highest first then lowest in the last) and we'll get first salary(highest salry)

```SQL
SELECT * FROM employee ORDER BY salary DESC LIMIT 1;
```

```SQL
SELECT * FROM employee 
ORDER BY salary DESC 
LIMIT 3;
-- What will be the order of execution of this command?
-- 1. FROM: first it will select employee table
-- 2. ORDER BY: 2nd it will order the salary table
-- 3. LIMIT: 3rd it will take three employee from the beginning(from sorted table)
-- 4. SELECT: then it will select all the columns and show to us

-- ABOVE WAS MY ASSUMPTION OR I THOUGHT FIRST
-- but the correct order is:
-- 1. FROM: first it will select the employee table because we've to work on that, and if we don't select how are we gonna work
-- 2. SELECT: then it will select complete data(as we've mentioned *) because we've to order salary column, and if we don't select complete then how are we gonna order the salary col, so first we'll select it then order by will work on that
-- 3. ORDER BY:
-- 4. LIMIT:
```
8. COUNT: it will count total number of unique data or value, duplicates will be counted only one time, null value will not counted

9. WILD CARD OR PATTERN MATCHING: LIKE(%-01-%)
INT1 => TINYINT
INT2 => SMALLINT
INT3 => MEDIUMIN
INT4 => INT
INT8 => BIGINT

we can't have more than one primary key in a single table, but we can have primary key as more than one columns known as composite primary key.

//TODO:

1.  HOW TO CHANGE NAME OF DATABASE
2.  how to change name of table
3.  change the column name: ""ALTER TABLE students CHANGE phoneNo contact INT8 NOT NULL;""
    ALTER TABLE tablename CHANGE oldname newName datatype constraints;
4.  how to change primary key in a table
5.  How to change value of a column or can I change entire row's values?
6.  how to add new column in an existing table

```sql
ALTER TABLE courses ADD courseId1 INT PRIMARY KEY AUTO_INCREMENT;
-- alter table tablename add colname datatype constrainst;
```

7.  Can we add table inside a table??
8.  How to give composite primary key??
    ````SQL
    UPDATE students
    SET fname = 'Ashu'
    WHERE fname = 'Ashish' AND lName = 'Shah';
    -- if you don't match condition, it'll not give you warning as well nor error
        ```
    ````
9.  how to delete an column in an existing table or can we delete multiple columns in a singple commond?

```sql
ALTER TABLE students
DROP COLUMN rollNo;

ALTER TABLE students
DROP COLUMN fName;

ALTER TABLE students
DROP COLUMN lName;

ALTER TABLE students
DROP COLUMN contact;
-- 10:29:35	ALTER TABLE students DROP COLUMN contact	Error Code: 1090. You can't delete all columns with ALTER TABLE; use DROP TABLE instead	0.016 sec

```

10. How can I add more constriant in an existing column

```sql
courseId INT PRIMARY KEY; -- first i've written this
courseId INT PRIMARY KEY AUTO_INCREMENT; -- now I want to add another constraint
```

11. can we change datatype of col while we've inserted some values in it??
12. how to delete a complete row data?

```sql
DELETE FROM learners
WHERE learnerId = 1;

```

13. Does COUNT counts null as attribute or not?

//FIXME:

1. EACH TIME i'M USING AUTOINCREMENT , IT IS INCREMENTING BUT WHEN I'M DELETING IT, it should decrease or change the id(dynamically happening thins i'm talking)
