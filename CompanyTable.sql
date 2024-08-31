Create table Texasemployees.Company(
employeeID int not null,
CompanyName varchar(500),
Address varchar(500),
State varchar(50),
StateCode varchar(2));

Insert into Texasemployees.Company(employeeID, CompanyName, Address, State, StateCode)
Values(
1, 'Pepsi Co', '123 Joker Rd', 'Texas', 'TX'),
(2, 'Karat Lollicup', '487 Discovery Lane','Texas', 'TX' ),
(3, 'Fabel & Fire','15672 Industrial Way','Texas', 'TX'),
(4, 'Walmart','15757 Arapaho Rd','Texas', 'TX'),
(5, 'Albertsons','487 Discovery Lane','Texas', 'TX'),
(6, 'Walmart','15757 Arapaho Rd','Texas', 'TX'),
(7, 'CVS','982 Cream Rd','Texas', 'TX'),
(8, 'Pepsi Co', '123 Joker Rd', 'Texas', 'TX'),
(9, 'CVS','982 Cream Rd','Texas', 'TX'),
(10, 'Pepsi Co', '123 Joker Rd', 'Texas', 'TX')
;

-- Set the AUTO_INCREMENT value for the employeeID column
ALTER TABLE Texasemployees.Company 
AUTO_INCREMENT = 100;

-- Add a primary key constraint to the employeeID column
ALTER TABLE Texasemployees.Company 
Add Foreign key (employeeID) references employees(employeeID);

#DROP THE FOREIGN KEY
Alter table Texasemployees.Company
DROP FOREIGN KEY company_ibfk_1;

SELECT CONSTRAINT_NAME 
FROM information_schema.KEY_COLUMN_USAGE 
WHERE TABLE_NAME = 'Company' AND TABLE_SCHEMA = 'Texasemployees';

Select * from Texasemployees.Company;


Insert into Texasemployees.Company(employeeID, CompanyName, Address, State, StateCode)
Values(700, 'GuitarHero', '892 Joker Rd', 'Texas', 'TX'),
(100, 'Pepsi Co', '123 Joker Rd', 'Texas', 'TX');