CREATE DATABASE ClassWork 
USE ClassWork

CREATE TABLE Department
(
Id int constraint PK_Department_Id primary key identity, 
Name nvarchar(30) not null constraint CK_Department_Name check(LEN(Name)>2)
)

INSERT INTO Department VALUES ('Code'),('Tech'),('ItBrain')


CREATE TABLE Employees
(
Id int constraint PK_ primary key identity,
Fullname nvarchar(30) not null constraint CK_Employees_Fullname check(LEN(Fullname)>3),
Salary int constraint CK_Employees_Salary check(Salary>0),
DepartmentId int constraint FK_Employees_DepartmentId foreign key references Department(id),
Email nvarchar(50) constraint UC_Employees_Email unique
)

TRUNCATE TABLE Employees

INSERT INTO Employees values ('Vefa',5000, 1,'vefa20@gmail.com'),
('Alyasar',3000,2,'alyasar19@gmail.com'),
('Vasif',2500,3,'vasif20@gmail.com'),
('Aliskandar',1900,3,'aliskandar24@gmail.com')






