-- 1 create function
delimiter //
create function calculate_discount(price decimal(10,2))
returns decimal(10,2)
deterministic
begin
	declare discounted_price decimal(10,2);
    set discounted_price = price-(price*0.10);
    return discounted_price;
end //
delimiter ;
    
select calculate_discount(1000) as final_price;



-- 2 get square of the number
 delimiter //
 create function get_square(n int)
 returns int
 deterministic
 begin
	 return n * n;
     
end //
delimiter ;

select get_square(7) as result;     
