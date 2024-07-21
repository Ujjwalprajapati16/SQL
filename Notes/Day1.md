# Keywords in SQL

1. **PRIMARY KEY** (by default NOT NULL and UNIQUE)
    ```sql
    varName DATATYPE PRIMARY KEY  -- when we want a single column as primary key
    -- or 
    PRIMARY KEY (firstName, LastName)  -- when we want a mix of multiple columns as primary key, individual can be the same but mix of firstName and lastName can't be the same in the entire database.
    ```

2. **NOT NULL**: This column should not be NULL at any cost.

3. **DESCRIBE or DESC tableName()**: Want to know all the properties of columns, use DESCRIBE OR DESC, it will show you what constraint table does have.

4. **INSERT INTO tableName VALUES (values)** (when you want to insert data as defined table column name)
    ```sql
    INSERT INTO tableName (col1, col2, col3) VALUES (provide values here with commas) 
    -- if you don't want to insert in all columns at the same time or in the same order
    ```

5. **AUTO_INCREMENT**: In case you want to start something from 1 or want to know that it will always increase by 1, then use AUTO_INCREMENT, because it will add each time by 1, counting from the previous one. BUT use it carefully because if you set your primary key as AUTO_INCREMENT, then your differentiating factor has been changed.

6. **WHERE**: 
    We can add conditions as many as we want...
    ```sql
    SELECT * FROM employee WHERE salary >= 1000000 AND firstName = "Ashish";
    ```

7. **UPDATE (DML)**: Used to update the data inside the table.
    ```sql
    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;
    ```

8. **ALTER (DDL)**: Used to update the schema of the table.

9. **DELETE (DML)**: It is used to delete a row from the given table, but when you don't give the WHERE clause, it will delete the entire table's data only, not the schema.
    ```sql
    DELETE FROM table_name WHERE condition;
    ```

    Example of table data:
    ```plaintext
    17  Ayush    Raj      1000000  34  22
    18  Ashish   Shah     34000    18  24
    19  Ayush    Topper   4200140  14  27
    20  Vijay    Ganesh   540004   54  12
    21  Divyanshu Chutiya 214000   87  25
    22  Abhay    Sharma   2404400  32  7
    23  Deepak   Sharma   100002   32  7
    ```
    It is giving me from 17 because I've deleted all the previous data and now AUTO_INCREMENT will count from the next number.

10. **SQL_SAFE_UPDATES** = 1: When you try to perform delete or update without using the WHERE clause, it will give you a warning that you can't do that because you're using safe mode. If you turn it to 0, then you will no longer be in safe mode.

```sql
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS techwithashish;  -- NOW IT WILL WARNING
USE techwithashish;

DROP DATABASE techwithashish;
SELECT DATABASE();

CREATE TABLE employee(
    empId INT AUTO_INCREMENT,
    firstName VARCHAR(20) NOT NULL,
    lastName VARCHAR(20) NOT NULL,
    salary INT NOT NULL DEFAULT 100000,
    age INT NOT NULL,
    startDate INT NOT NULL,
    PRIMARY KEY (empId) 
);

-- Example INSERT statements
-- INSERT INTO employee VALUES (1, "Ashish", "Shah", 10, 21, 13);
-- INSERT INTO employee VALUES (2,"Abhay", "Sharma", 10, 21, 13);
-- INSERT INTO employee VALUES (3, "Deepak", "Sharma", 10, 21, 13);

INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Ayush", "Raj", 1000000, 34, 22);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Ashish", "Shah", 34000, 18, 24);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Ayush", "Topper", 4200140, 14, 27);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Vijay", "Ganesh", 540004, 54, 12);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Divyanshu", "Chutiya", 214000, 87, 25);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Abhay", "Sharma", 2404400, 32, 7);
INSERT INTO employee (firstName, lastName, salary, age, startDate) VALUES ("Deepak", "Sharma", 100002, 32, 7);

-- INSERT INTO employee (firstName, lastName, age, startDate) VALUES ("Ashish", "Shah", 34, 22);

-- Example SELECT statements
SELECT firstName FROM employee;

-- Give me the name of employee who's having salary more than 1 lakh
SELECT * FROM employee WHERE salary >= 1000000 OR firstName = "Ashish";

-- Give me the report of employees who's having age more than 25: this is the part of data retrieval
SELECT * FROM employee WHERE age > 25;

-- Enable safe updates
SET SQL_SAFE_UPDATES = 1;

-- Now it's time for the update part
-- Update the last name of Ashish from Shah to ShahShah
UPDATE employee SET lastName = "ShahShah" WHERE empId = 2;
UPDATE employee SET lastName = "Sharma" WHERE empId = 1;
UPDATE employee SET lastName = "Shah" WHERE firstName = 'Ayush';

-- Example DELETE statements
DELETE FROM employee;
DELETE FROM employee WHERE empId = 2;

-- Select all records to verify updates and deletions
SELECT * FROM employee;

-- Describe the employee table
DESC employee;

-- Show all tables
SHOW TABLES;

-- Drop the employee table
DROP TABLE employee;
```