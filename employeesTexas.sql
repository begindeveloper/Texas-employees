Create Database Texasemployees;

USE Texasemployees; 

Create table Texasemployees.employees(
employeeID int not null,
LastName varchar(200),
FirstName varchar(200),
City varchar(200),
State varchar(50),
StateCode varchar(2));

Insert into Texasemployees.employees(employeeID,
LastName, FirstName, City, State, StateCode)
Values(
1, 'Smith', 'Jeff', 'Dallas', 'Texas', 'TX'),
(2, 'Love', 'Michael', 'Houston', 'Texas', 'TX'),
(3, 'Banh', 'Thanh', 'McKinney', 'Texas', 'TX'),
(4, 'Eyeson', 'Mary', 'Rockwall', 'Texas', 'TX'),
(5, 'Lopez', 'Alex', 'Sugarland', 'Texas', 'TX')
;

Select * 
from Texasemployees.employees;

SET SQL_SAFE_UPDATES = 0; # disable the safe update mode.

Update Texasemployees.employees
set LastName='Anderson', FirstName='Maymie'
where employeeID = 4;

Insert into Texasemployees.employees(employeeID,
LastName, FirstName, City, State, StateCode)
Values(
6, 'Everton', 'Malory', 'Dallas', 'Texas', 'TX'),
(7, 'Hewitt', 'Jennifer', 'Rockwall', 'Texas', 'TX'),
(8, 'River', 'Raphael', 'Houston', 'Texas', 'TX'),
(9, 'Evans', 'Mary', 'Houston', 'Texas', 'TX'),
(10, 'Cruz', 'Roger', 'Houston', 'Texas', 'TX')
;