use sakila;

select * from payment;
-- find payment id , custoemr name , amount
-- amoutn is same as of payemtn id =5

select amount from payment where payment_id = 5;

select payment_id , customer_id ,amount from payment
where amount =(select amount from payment where payment_id = 5);

select payment_id , customer_id,  amount from payment
where amount in (select amount from payment where payment_id = 5 or payment_id = 3);

select payment_id , customer_id,  amount from payment
where amount = any(select amount from payment where payment_id = 5 or payment_id = 3);

-- in , =any what u want to write it both have same

select payment_id , customer_id,  amount from payment
where amount >any (select amount from payment where payment_id = 5 or payment_id = 3);

-- any -> greater than the minimum value of subquery
-- rdbms -> work row by row

select payment_id , customer_id,  amount from payment
where amount <= any (select amount from payment where payment_id = 5 or payment_id = 3);

select payment_id , customer_id,  amount from payment
where amount >all (select amount from payment where payment_id = 5 or payment_id = 3);

-- Q: get the name of the country whoes population is greater than population among 
-- of from the continent not america.

select * from world.country;   -- better way to write like a professinal

select continent, count(*) from world.country
where IndepYear > any(select indepyear from world.country where Continent = 'asia')
and Continent != 'asia'
group by continent;

-- order by
select * from world.country order by name;
select * from world.country order by region , SurfaceArea ;

select name , population , (select population from world.country where name = 'anguilla')
from world.country;

