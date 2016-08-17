CREATE DATABASE Company
GO

USE Company
GO

CREATE TABLE [Department](
[DepartmentId] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
[Name] NVARCHAR(64) NOT NULL,
[Address] NVARCHAR(64) NOT NULL,
)

CREATE TABLE [Employee](
[EmployeeId] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
[LastName] NVARCHAR(64) NOT NULL,
[FirstName] NVARCHAR(64) NOT NULL,
[DateOfBirth] DATE NOT NULL
)

CREATE TABLE [Job](
[JobId] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
[JobTitle] NVARCHAR(64) NOT NULL,
[MinMonthSalary] MONEY NOT NULL
)

CREATE TABLE [Career](
[CareerId] INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
[JobId] INT NOT NULL,
[EmployeeId] INT NOT NULL,
[DepartmentId] INT NOT NULL,
[DateStart] DATE NOT NULL,
[DateEnd] DATE NULL,
CONSTRAINT [FK_JobId] FOREIGN KEY ([JobId]) REFERENCES [Job] ([JobId]),
CONSTRAINT [FK_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee] ([EmployeeId]),
CONSTRAINT [FK_DepartmentId] FOREIGN KEY ([DepartmentId]) REFERENCES [Department] ([DepartmentId])
)

CREATE TABLE [Salary](
[EmployeeId] INT NOT NULL,
[Month] INT NOT NULL CHECK (0 < Month AND Month < 13),
[Year] INT NOT NULL CHECK (2002 < Year AND Year < 2016),
[Salary] MONEY NOT NULL,
CONSTRAINT [FK_EmployeeSalaryId] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee] ([EmployeeId])
)


INSERT INTO Department
(
  [Name],
  [Address]
 )
VALUES
('D1', '9001-9010'),
('D2', '9011-9020'),
('D3', '1001-1010'),
('D4', '1011-1020'),
('D5', '1021-1030'),
('D6', '9021-9030'),
('D7', '1101-1110'),
('D8', '1111-1120'),
('D9', '1201-1210'),
('D10', '1211-1220')
GO


INSERT INTO Employee
(
  [LastName],
  [FirstName],
  [DateOfBirth]
 )
VALUES
('Ivanov', 'Ivan','11/03/1995'),
('Petrov', 'Petr','06/08/1990'),
('Khristoforova', 'Anastasiya','01/02/1997'),
('Velichko', 'Alexander','03/11/1996'),
('Vavinsky', 'Vadim','01/01/1985'),
('Markevich', 'Ilya','05/10/1991'),
('Baranova', 'Anastasiya','03/07/1994'),
('Kononovich', 'Alina','09/01/1997'),
('Bytsko', 'Artur','12/12/1996'),
('Filimontseva', 'Darya','01/03/1997')
GO

INSERT INTO Job
(
  [JobTitle],
  [MinMonthSalary]
 )
VALUES 
('WebDesigner', '500'),
('MakeUpMan', '300'),
('FrontEndDeveloper', '700'),
('BackEndDeveloper', '800'),
('FullStackDeveloper', '1500'),
('HRManager', '750'),
('PRManager', '400')
GO

INSERT INTO Salary
( 
  [EmployeeId],
  [Month],
  [Year],
  [Salary]
)
VALUES 
('1', '06', '2010', '600'),
('2', '10', '2012', '700'),
('3', '08', '2015', '500'),
('4', '01', '2015', '700'),
('5', '07', '2010', '600'),
('6', '10', '2004', '600'),
('7', '01', '2015', '1500'),
('8', '05', '2014', '700'),
('9', '01', '2015', '1200'),
('10', '01', '2005', '800'),
('1', '05', '2015', '600'),
('2', '05', '2015', '700'),
('3', '05', '2015', '500'),
('4', '05', '2015', '700'),
('5', '05', '2015', '600'),
('1', '04', '2015', '600'),
('2', '02', '2015', '700'),
('3', '04', '2015', '700'),
('4', '02', '2015', '900'),
('5', '02', '2015', '800')
GO

INSERT INTO Career
(
  [JobId],
  [EmployeeId],
  [DepartmentId],
  [DateStart],
  [DateEnd]
)
VALUES
('1', '1', '1', '01/07/2002', '05/10/2016'),
('2', '2', '2', '02/05/2007', '11/11/2015'),
('3', '3', '3', '03/10/2016', NULL),
('4', '4', '4', '04/10/2003', NULL),
('5', '5', '5', '05/10/2010', '12/08/2014'),
('6', '6', '6', '06/11/2005', NULL),
('7', '7', '7', '07/05/2014', NULL),
('1', '8', '8', '08/08/2009', '01/08/2013'),
('2', '9', '9', '09/01/2006', '02/08/2012'),
('3', '10','10','01/04/2012', NULL),
('2', '7', '4', '09/01/2013', NULL),
('1', '7', '3', '09/01/2009', '02/08/2012'),
('2', '6', '5', '09/01/2005', '02/08/2012'),
('1', '7', '4', '09/01/2008', '02/08/2012'),
('2', '4', '5', '09/01/2008', '02/08/2012'),
('3', '5', '3', '09/01/2007', NULL)
GO
