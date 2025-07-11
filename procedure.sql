drop table if exists employees;

create table employees (
    emp_id int primary key,
    name varchar(50),
    position varchar(50),
    salary decimal(10,2)
);

insert into employees values
(1, 'atharv', 'developer', 50000),
(2, 'sneha', 'designer', 45000),
(3, 'prasad', 'tester', 40000);

delimiter //

create procedure show_all_employees()
begin 
    select * from employees;
end //

delimiter ;

call show_all_employees();

delimiter //

create procedure get_employee_by_id(in empid int)
begin
    select * from employees where emp_id = empid;
end //

delimiter ;
call get_employee_by_id(2);


-- out parameter example
delimiter //

create procedure get_name_by_id(in empid int, out empname varchar(50))
begin
    select name into empname from employees where emp_id = empid;
end //

delimiter ;
call get_name_by_id(1, @empname);
select @empname;


-- INOUT  parameter example
delimiter //

create procedure apply_bonus(inout salary_amt decimal(10,2))
begin
    set salary_amt = salary_amt + 50000;
end //

delimiter ;
set @sal = 40000;
call apply_bonus(@sal);
select @sal;

 