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
 -- length size in byter it reads the single char in the word
 -- length it counts the in bytes but in char_lenght it counts whole word so we prefer char_length instead of length function
 
 select first_name , last_name , concat('mr' , ' ' ,first_name , ' ' ,  last_name) , 
 concat_ws(' ' , 'Mr',first_name, last_name) from actor;
 
select first_name , substr(first_name , 2) from actor;

-- substr => it find out index of the character

select first_name , substr(first_name , 2 , 1) from actor;
select first_name , locate("E" , first_name, 2) from actor;

-- locate => it checks which no. is on which place

select first_name , locate("E" , first_name, 2) , replace(first_name , "E" , "-") from actor;

-- trim() => imp  => this will remove only from starting and ending whitespace
-- leading from => remove from starting

select '   hey   ';
select char_length(trim('  hey  '));

-- scaler function => apply on 1 row  => return 1 row
-- multi-row functions category => apply on multiple rows and return 1 or more rows as output.
-- agregate functions : function , perform calculations over the rows
-- max ,min, sum , count , 


