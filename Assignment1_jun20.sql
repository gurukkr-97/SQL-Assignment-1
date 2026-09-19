create database Corporate_Employee;
use Corporate_Employee;
create table Employees ( Emp_ID int primary key, Emp_Name varchar(25) not null, Emp_Age int check(Emp_age>=18), Department varchar(20), 
                                Salary decimal (10,2), Location varchar(20), DOJ date);
select * from Employees;
insert into Employees values 
(11101, "GURU", 28, "Mapping", 25350, "Chennai", "2022-11-14"),
(11102, "RAHUL", 27, "Mapping", 28350, "Bangalore", "2020-04-09"),
(11103, "KUNDANA", 25, "Auditing", 26100, "Hyderabad", "2022-10-03"),
(11104, "NEVETHA", 25, "Automation", 35600, "Chennai", "2021-05-22"),
(11105, "PRIYANKA", 27, "Mapping", 25350, "Hyderabad", "2022-11-14"),
(11106, "FEMINA", 24, "Pricing", 29050, "Chennai", "2023-06-23"),
(11107, "ABIGAIL", 24, "Human Resource", 49265, "Chennai", "2019-10-11"),
(11108, "ATHITHAN", 29, "Marketing", 33000, "Bangalore", "2021-01-13"),
(11109, "SETHUPATHI", 26, "Auditing", 23200, "Bangalore", "2024-03-19"),
(11110, "FRANCIS", 24, "Pricing", 32600, "Hyderabad", "2022-07-23"),
(11111, "DIANA", 27, "Admin", 27300, "Chennai", "2018-07-30"),
(11112, "NAVIN", 27, "Mapping", 22800, "Hyderabad", "2025-04-16"),
(11113, "ANUSH", 29, "Pricing", 32300, "Hyderabad", "2019-08-28"),
(11114, "ALICE EVANGELIN", 25, "Human Resource", 31450, "Bangalore", "2024-03-18"),
(11115, "AARTHI", 30, "Automation", 37600, "Chennai", "2020-06-12"),
(11116, "ARAVINTH", 29, "Auditing", 31900, "Hyderabad", "2021-02-16"),
(11117, "ARUN VELAVAN", 27, "Human Resource", 44850, "Bangalore", "2021-11-08"),
(11118, "DHANESH", 24, "Mapping", 23700, "Hyderabad", "2024-09-21"),
(11119, "KAVIN", 31, "Auditing", 36950, "Chennai", "2018-06-25"),
(11120, "AASIM MOHAMMED", 28, "Pricing", 31300, "Bangalore", "2020-05-18");
select * from Employees;
select * from Employees  where Location = "Chennai" and Department = "Mapping";
select * from Employees  where Location = "Chennai" or Department = "Mapping";
select * from Employees Where Emp_Name like "_a%";
select * from Employees Where Emp_age between 26 and 28;
select * from Employees order by salary asc;
select distinct emp_age from employees order by Emp_age;
select avg(salary), min(salary), max(salary), count(emp_name) from employees;
select min(salary), max(salary), count(emp_name), location from employees group by location;
select min(salary), max(salary), count(emp_name), location from employees group by location having location = "Bangalore";
select min(salary) from employees;
select min(salary), emp_name from employees group by emp_name;
select min(salary) from employees where salary > (select min(salary) from employees );
select min(salary) from employees where salary > (select min(salary) from employees where salary > (select min(salary) from employees ));
select min(salary) from employees where salary > (select min(salary) from employees where salary > (select min(salary) from employees where salary > 
(select min(salary) from employees )));
select Emp_name as 3rdsalary, salary from employees where salary = (select min(salary)  from employees where salary > (select min(salary) from employees where salary > 
(select min(salary) from employees ))) ;
select * from employees where salary = (select min(salary) from employees where salary > (select min(salary) from employees where salary > 
(select min(salary) from employees ))) ;
alter table employees add column official_mail varchar(50);

select lower(emp_name) from employees;
select upper(emp_name) from employees;










