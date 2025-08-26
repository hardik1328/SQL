use sakila;
show tables;

select * from address;
select count(address_id) , count(address2) , count(*) from address;     -- count(*)  => this means it select the primary key always

select address2 , address2+50 from address;

-- tables created --> 

create table product(id int , pname varchar(50) , amount int);
insert into product values(10 , "laptop" , 199) , (11 , "tv" , 200) , (12,"watch" , 300);


create table orders(oid int , location varchar(50) , product int);
insert into orders values(888 , "jaipur" , 10) , (889 , "pune" , 11) , (890,"himachal" , 15) , (891 , "j&k" , 10);

select * from product;  -- ==>  primary key -> id 
select * from orders;   -- =>  primary key -> oid

-- primary key => each row is unique , no null values (a primary key column cannot be null) , each table have contain only one primary key
-- foreign key => it only create the relationship with the column which is  primary key or unique key.

select prod.id , prod.pname , prod.amount from product as prod;
select * from orders;

select ord.oid , ord.location , ord.product from orders as ord;

-- syntax ==> of join ==> select col,col2 ... from tabel join table2 conditions.

-- inner join --> 
select prod.id , prod.pname , prod.amount , ord.product ,ord.oid , ord.location  from product as prod
join orders as ord where prod.id = ord.product;


select o.oid , o.location , p.pname from orders as o join product as p     -- using where
where o.product = p.id;

select o.oid , o.location , p.pname from orders as o join product as p    -- using on as where
on o.product = p.id;

select o.oid , o.location , p.pname from orders as o  inner join product as p      -- using join as inner join
where o.product = p.id;


-- left join => in this we use on (on the place if where) and whatever table in the left it give all the data od left side table and also give common data from right table.
 
 -- left side order table
select o.oid , o.location  , o.product , p.pname
from orders as o left join product as p
on o.product = p.id;

-- left side product table
select prod.id , prod.pname , prod.amount
from product as prod left join orders as o
on prod.id = o.product;

select * from actor;
select * from film_actor;

desc film_actor;    -- there a combination of a primary key in the table/column. but there was a single primary key only but have combination.

-- interview joins are very imp :->
-- self join => more
-- natural join
 -- inner join => more
-- left 