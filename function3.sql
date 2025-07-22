drop function if exists get_full_address;

delimiter //

create function get_full_address(house varchar(50), city varchar(50), state varchar(50))
returns varchar(150)
deterministic
begin
  return concat(house, ', ', city, ', ', state);
end //

delimiter ;
select get_full_address('flat 101', 'pune', 'maharashtra') as full_address;
