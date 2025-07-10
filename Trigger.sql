create table employees(
emp_id int primary key,
name varchar(50),
position varchar(50),
salary decimal(10,2)
);

select * from  employees;

create table salary_audit(
audit_id int auto_increment primary key,
emp_id int,
old_salary decimal(10,2),
new_salary decimal(10,2),
change_on timestamp default current_timestamp
);

select * from  salary_audit;

-- create trigger log salary update only

delimiter //
 create trigger trg_salary_change
 before update on employees
 for each row
 begin
 if old.salary <> new.salary then
 insert into salary_audit(emp_id,old_salary,new_salary)
 values(old.emp_id,old_salary,new_salary);
 end if;
 end//
 delimiter ;
 
 insert into employees values
 (1,'Atharv','Developer',50000),
 (2, 'Sneha', 'Designer', 45000),
(3, 'Prasad', 'Tester', 40000);
 
 select * from  employees;