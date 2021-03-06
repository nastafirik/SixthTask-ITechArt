CREATE DATABASE COMPANY
GO

USE COMPANY
GO

CREATE TABLE [Department](
[IdDepartment] int not null primary key identity (1,1),
[Name] nvarchar(20) not null,
[Address] nvarchar(20) not null,
)

CREATE TABLE [Employee](
[IdEmployee] int not null primary key identity (1,1),
[LastName] nvarchar(20) not null,
[FirstName] nvarchar(20) not null,
[DateBorn] date not null
)

CREATE TABLE [Job](
[IdJob] int not null primary key identity (1,1),
[JobTitle] nvarchar(20) not null,
[MinMonthSalary] money not null
)

CREATE TABLE [Career](
[IdCareer] int not null primary key identity (1,1),
[IdJob] int not null,
[IdEmployee] int not null,
[IdDepartment] int not null,
[DateStart] date not null,
[DateEnd] date,
CONSTRAINT [FK_IdJob] FOREIGN KEY ([IdJob]) REFERENCES [Job] ([IdJob]),
CONSTRAINT [FK_IdEmployee] FOREIGN KEY ([IdEmployee]) REFERENCES [Employee] ([IdEmployee]),
CONSTRAINT [FK_IdDepartment] FOREIGN KEY ([IdDepartment]) REFERENCES [Department] ([IdDepartment])
)

CREATE TABLE [Salary](
[IdEmployee] int not null,
[Month] int not null CHECK (0 < Month AND Month < 13),
[Year] int not null CHECK (2002 < Year AND Year < 2016),
[Salary] money not null,
CONSTRAINT [FK_IdEmployeeSalary] FOREIGN KEY ([IdEmployee]) REFERENCES [Employee] ([IdEmployee])
)


insert into Department
values 
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


insert into Employee
values 
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

insert into Job
values 
('WebDesigner', '500'),
('MakeUpMan', '300'),
('FrontEndDeveloper', '700'),
('BackEndDeveloper', '800'),
('FullStackDeveloper', '1500'),
('HRManager', '750'),
('PRManager', '400')
GO

insert into Salary
values 
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
('1', '05', '2015', '600'),
('2', '02', '2015', '700'),
('3', '04', '2015', '700'),
('4', '05', '2015', '900'),
('5', '02', '2015', '800')
GO

insert into Career
values 
('1', '1', '1', '01/07/2002', '05/10/2016'),
('2', '2', '2', '02/05/2007', '11/11/2015'),
('3', '3', '3', '03/10/2016', NULL),
('4', '4', '4', '04/10/2003', NULL),
('5', '5', '5', '05/10/2010', '12/08/2014'),
('6', '6', '6', '06/11/2005', NULL),
('7', '7', '7', '07/05/2014', NULL),
('1', '8', '8', '08/08/2009', '01/08/2013'),
('2', '9', '9', '09/01/2008', '02/08/2012'),
('3', '10','10','01/04/2008', NULL)
GO
