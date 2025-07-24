create table accounts (
ac_id int primary key,
ac_name varchar(40),
balance int
);
 insert into accounts values
 (1,"Atharv",50000000),
 (2,"Prasad",60000),
 (3,"Neha",40000),
 (4,"Sneha",70000);
 
 SELECT * FROM accounts;

 

start transaction;
update accounts set balance= balance-1000 where ac_id=1;
  SELECT * FROM accounts;
  commit;
  update accounts set balance= balance+10000 where ac_id=2;
   SELECT * FROM accounts;
commit;
update accounts set balance= balance*10 where ac_id=4;
commit;
 SELECT * FROM accounts;
 
 
 START TRANSACTION;
UPDATE accounts SET balance = balance - 2000 WHERE acc_id = 1;
ROLLBACK;
 SELECT * FROM accounts;
 
 START TRANSACTION;

UPDATE accounts SET balance = balance - 500 WHERE acc_id = 1;

SAVEPOINT after_atharv;

UPDATE accounts SET balance = balance + 500 WHERE acc_id = 2;

-- Cancel only second step
ROLLBACK TO after_atharv;

COMMIT;
select * from accounts;
ROLLBACK;
select * from accounts;
