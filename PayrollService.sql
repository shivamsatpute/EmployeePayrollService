create database payroll_service
select * from sys.databases 
use payroll_service 
create table Employee_payroll
(
id int identity(1,1) primary key,
name varchar(50) not null,
salary money not null,
start date not null,
);

insert into Employee_payroll values 
('Ramesh',200000.0,'2019-08-14'),
('Raju',150000.0,'2020-07-14'),
('Shivam',300000.0,'2017-08-14'),
('Martha',50000.0,'2022-09-19');

select * from Employee_payroll 

select salary from Employee_payroll where name='ramesh'
select GETDATE() 'Today Date';
select * from Employee_payroll where start between '2018-01-01' and GETDATE();

alter table Employee_payroll add gender char(1);
update Employee_payroll set gender= 'F' where name in ('bili', 'martha')
update employee_payroll set gender= 'M' where id in (1,2,3,5,7);
select sum(salary) from employee_payroll where gender='F' group by gender;
select sum(salary) from employee_payroll  group by gender;
select sum(salary) as 'Total Salary',gender from employee_payroll group by gender;
select avg(salary) as 'Average Salary',gender from employee_payroll group by gender;
select min(salary) as 'Minimum Salary',gender from employee_payroll group by gender;
select max(salary) as 'Maximum Salary',gender from employee_payroll group by gender;

select count(gender) as 'Male' from employee_payroll where gender='M' 
select count(gender) as 'Female' from employee_payroll where gender='F' 


