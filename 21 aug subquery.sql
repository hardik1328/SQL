-- subquery
-- query (subquery)
-- when my result is dependent on another query then we use subquery or known as nested query

select * from city;

select name , population from city where name = 'kabul';

select name , population from city where population > 1780000;

 -- subquery
 
 select name , population from city where population > (select  population from city where name = 'kabul');
 
 -- now get the name of the city where district is same as of the district for amsdertan
 
 select district from city where name = 'amsterdam';
 
 select name , district from city where district = 'Noord-Holland';
 
 select name , district from city where District = ( select district from city where name = 'amsterdam') ;
 
 
 -- Q: get the country code and the country name where the continent matches with the 
 -- continent of the coutry albania
 
 -- Q: get the continent the name of the country where the life expectancy macthes  
 
 
 
 select continent , name from country where(select lifeexpectancy from country where
 name = 'cook islands');
 
 -- nested / subquery
 -- 1 single row query
 -- 2 multi row query
 
 -- get contry name and population for all countries available name as europe
 
select name , population, continent from country
where name in (select name from country where continent='europe');

-- when we run multiple row subquery then it didn't run with =,<,> this operatorc 
-- we use => in

-- Q: get country name and the country code where le match wiht le 
-- of the country nmae as bahamas.

select * from country;

select name , code , lifeexpectancy from country
where name = 'bahamas';

