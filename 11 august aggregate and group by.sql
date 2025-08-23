-- previous completed -->

-- select statement
-- operator --> in , between , like

-- between => to check the range bet 2 values
-- in => specific value mai check
-- like => pattern 
--        % => zero or more character --> %a (checks last word) , %a(check first word)
-- 	   not between 10 and 15 --> it gives all the values instead of bet 10 and 15
--        not like
--        not in
--        
--        _ -->  only 1 character  (ab_) it means ther is a single character



use sakila;
select * from actor
where first_name like '%E%';


 -- functions :->
 -- string functions
 -- funtions => block of code => code reuse
 -- def (user defined , predefined)
 -- string , date ,number
 -- string => lower ,upper , length , concat , substring , reverse , replace ,left , right , instr , locate
 -- trim
 
 select first_name, length(first_name) , char_length(first_name) from actor;
 
 -- length it counts the in bytes but in char_lenght it counts whole word so we prefer char_length instead of length function
 
 select first_name , last_name , concat('mr' , ' ' ,first_name , ' ' ,  last_name) , 
 concat_ws(' ' , 'Mr',first_name, last_name) from actor;
 
 -- order by , alias , multi-row functions
 
 select * from actor order by first_name;  -- order by --> sorting your data
 
 select * from actor order by first_name , last_name , last_update , actor_id asc;
 
 select actor_id , actor_id+10 from actor;
 select actor_id , actor_id+10  as "newactor" from actor;     -- ==> this is called alias
 
 -- sum , count , max, min , avg
 
 select * from payment;     -- distinct find the unique values


 
select count(customer_id) as totalcustomer,
count(distinct (customer_id)) as uniquecustomer,
count(customer_id) - count(distinct(customer_id)) as repetativecustomer
from payment;
 
 select count(amount) , sum(amount) , avg(amount) ,
 max(amount) , min(amount) from payment;
 
 -- aggregate functions  => aggregate functions are those functions which is perfrom to calculations over certain values and return a single values
 -- and give the ans in single line.
 
 -- in aggregate function all are skip null values but count doesn't.
 -- if i am using aggregate functions then i didn't select the normal columns.
 
 select sum(amount) , amount from payment;    --  ==> example that i cannot use the normal column with the aggregate functions.
 
 
 -- group by => it is  a statemnet we group the similar values.
 
 
select sum(amount) from payment where customer_id = 1; 
select sum(amount) from payment where customer_id = 2; 
select sum(amount) from payment where customer_id = 3; 

select * from payment;

select customer_id from payment group by customer_id;

-- in case we using group by we can use slect that column not on particular data. it group the column so that we have multipule columns now and we cannt acces now that starting column.xa

select customer_id , count(amount) , sum(amount) from payment group by customer_id;

-- we can use aggregate function only with the group by.

select *  from payment;


select amount , count(amount) from payment group by amount;

select payment_date , month(payment_date) from payment;

select month(payment_date) , count(customer_id), max(rental_id) from payment group by month(payment_date);

select extract(month from payment_date) , count(customer_id)  , max(rental_id) , min(rental_id) , avg(amount) from payment group by extract(month from payment_date);






 
 
 
 
 
 

 
 
 
 













