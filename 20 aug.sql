-- self join , outer join (left join)  => more focus on this

-- general functions
use world;

select code , name , 
	if (name = "Aruba" , "Terror country" , if (name = "angela" , "terroit" , "tourism" )),
    indepyear from country;
-- condition is true then aruba -> terror country aa jayega or baki me hello
    
    
-- syntax of case

-- case
-- 	when contion then expression
-- 	when contion then expression2
--     else expre
-- end

    
select code , name , 
	case
		when name = "Aruba" then "Terror country"
        when name = "angola " then "terrorist"
	else "tourism"
end as "status"
from country;

-- Q:1 if the name of the country starts with A then u have to print countrt with a and if s then prist s 
-- other wise print country with another name.

-- SELECT 
--     
--     CASE
--         WHEN country LIKE 'A%' THEN 'Country with A'
--         WHEN country LIKE 'S%' THEN 'Country with S'
--         ELSE 'Country with another name'
--     END AS country_category
-- FROM country;


--  ifnull() : -->

select name ,indepyear , ifnull(indepyear, 0 ) from country;    -- we cna handle null values form this.

select count(indepyear) , count(ifnull(indepyear,0)) from country;

-- null if : --> if we give 2 expresion and if both the charcters of the length is same then it will return true 
-- otherwise it will return the only first expression.

select name , continent , nullif(length(name) , length(continent)) from country;

select name , population,
	case
		when population > 200000  then "developed country"
        when population > 100000 then "developing country"
	else "under develop"
end as countryStatus
from country;





        