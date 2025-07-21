drop function if exists get_full_name;

delimiter //

create function get_full_name(fname varchar(50), lname varchar(50))
returns varchar(100)
deterministic
begin
  return concat(fname, ' ', lname);
end //drop function if exists get_full_name;

delimiter //


