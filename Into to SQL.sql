/* Create Tables */
CREATE TABLE EmployeeDemographics(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
);

CREATE TABLE EmployeeSalary(
EmployeeID int,
JobTitle varchar(50),
Salary int
);

INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanly', 'Hundson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

-- Acidentally had Jim twice
DELETE TOP (1) FROM EmployeeDemographics;

--INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000)

Insert Into EmployeeSalary VALUES 
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

/* 
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT *
FROM EmployeeDemographics

SELECT FirstName
FROM EmployeeDemographics

SELECT TOP (5) *
FROM EmployeeDemographics

/* 
The SELECT DISTINCT statement is used to return only distinct (different) values.
*/
SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT (Gender)
FROM EmployeeDemographics

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics 

SELECT *
FROM EmployeeSalary

SELECT Max(Salary) AS  MaxSalary
FROM EmployeeSalary

SELECT Min(Salary) AS MinSalary
FROM EmployeeSalary

SELECT Avg(Salary) AS AvgSalary
FROM EmployeeSalary

/* 
Select Statments from Master
*/

SELECT * 
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary

/* 
* Where Statement
=, <>, <, >, And, Or, Like, NULL, Not Null, In
*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

SELECT *
FROM EmployeeDemographics
Where Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

SELECT * 
FROM EmployeeDemographics
WHERE Age < 32

SELECT * 
FROM EmployeeDemographics
WHERE Age <= 32

SELECT * 
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'

SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%'

SELECT * 
From EmployeeDemographics
WHERE FirstName is NULL

SELECT * 
FROM EmployeeDemographics
WHERE FIrstName is NOT NULL

SELECT * 
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')

/*
Group By, Order By
*/
SELECT Gender, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age

SELECT Gender, COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender 
ORDER BY GenderCount DESC

SELECT * 
FROM EmployeeDemographics
ORDER BY Age, Gender DESC

SELECT * 
FROM EmployeeDemographics
ORDER BY 4, 5 DESC