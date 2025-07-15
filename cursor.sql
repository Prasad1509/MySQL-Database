delimiter //

create procedure increase_salary()
begin
  declare done int default 0;
  declare empid int;
  declare curs cursor for select emp_id from employees;
  declare continue handler for not found set done = 1;

  open curs;

  repeat
    fetch curs into empid;
    if not done then
      update employees set salary = salary + 1000 where emp_id = empid;
    end if;
  until done end repeat;

  close curs;
end //

delimiter ;

call increase_salary();
select * from employees;
