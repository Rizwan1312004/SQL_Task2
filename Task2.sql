-- Creating a sample table: Employe_table ( this is done in MySQL workbench)
CREATE TABLE Employe_table (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Department VARCHAR(50),
    Salary DECIMAL(10,2) DEFAULT 30000.00,
    ManagerID INT,
    HireDate DATE
);

-- INSERT: Adding a large set of employee records(Database is taken from kaggle)
INSERT INTO Employe_table (FirstName, LastName, Email, Department, Salary, ManagerID)
VALUES
    ('John', 'Doe', 'john.doe@example.com', 'Sales', 50000, NULL),
    ('Jane', 'Smith', 'jane.smith@example.com', 'Marketing', 55000, 1),
    ('Alice', 'Johnson', NULL, 'HR', NULL, NULL),
    ('Bob', 'Brown', 'bob.brown@example.com', NULL, 42000, 1),
    ('Eve', 'Davis', 'eve.davis@example.com', 'IT', NULL, NULL),
    ('Tom', 'Harris', 'tom.harris@example.com', 'Finance', 62000, 1),
    ('Nina', 'Walker', 'nina.walker@example.com', 'Sales', NULL, 1),
    ('Victor', 'Stone', 'victor.stone@example.com', 'IT', 70000, 5),
    ('Clara', 'Oswald', 'clara.oswald@example.com', 'HR', 47000, 3),
    ('Bruce', 'Wayne', 'bruce.wayne@example.com', 'Security', 88000, NULL),
    ('Diana', 'Prince', 'diana.prince@example.com', 'Management', NULL, NULL),
    ('Clark', 'Kent', 'clark.kent@example.com', 'Media', 76000, 10),
    ('Barry', 'Allen', NULL, 'IT', NULL, 5),
    ('Hal', 'Jordan', 'hal.jordan@example.com', NULL, NULL, NULL),
    ('Arthur', 'Curry', 'arthur.curry@example.com', 'Marine Ops', 51000, 11),
    ('Selina', 'Kyle', 'selina.kyle@example.com', 'Security', NULL, 10),
    ('Lois', 'Lane', 'lois.lane@example.com', 'Media', NULL, 12),
    ('Lex', 'Luthor', 'lex.luthor@example.com', 'Management', 99000, NULL),
    ('Harley', 'Quinn', 'harley.quinn@example.com', 'Psychology', 58000, 19),
    ('Pamela', 'Isley', 'pamela.isley@example.com', NULL, NULL, 19),
    ('Jonathan', 'Crane', NULL, NULL, NULL, NULL),
    ('Edward', 'Nigma', 'edward.nigma@example.com', 'R&D', 69000, 18);
-- Viewing the employee_table
SELECT * FROM Employe_table;

-- UPDATE: Than i Filled the missing salaries with the default value
UPDATE Employe_table
SET Salary = 30000
WHERE Salary IS NULL;

-- UPDATE: Than i Set missing Department for known names
UPDATE Employe_table
SET Department = 'Support'
WHERE FirstName = 'Bob' AND LastName = 'Brown';

UPDATE Employe_table
SET Department = 'IT'
WHERE FirstName = 'Hal' AND LastName = 'Jordan';

UPDATE Employe_table
SET Department = 'Psychology'
WHERE FirstName = 'Pamela' AND LastName = 'Isley';

-- DELETE: Removing if any employees with no email (invalid entry)
DELETE FROM Employe_table
WHERE Email IS NULL;

-- Altaring the table to drop the hiredate column
ALTER TABLE Employe_table DROP COLUMN HireDate;

-- After this if we select the employe_table it will be a proper table
SELECT * FROM Employe_table;

