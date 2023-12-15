use mavenmovies;
/* 1. Identify the primary key and foreign key in maven movies db . Discuss the difference.
 */
select * from information_schema.key_column_usage;
-- difference between: primary key uniquely identifies record of the table.It has an inherent not null constraint. A table can have only one primary key. alter
-- A foreign key refers to the field in a table which is primary key of another table . It is used to connect two or more tables . It can have duplicate values and null values. more than one foreign key can be present in a table.


/* 2. List all the details of the actors. 
*/
select * from  actor;

/* 3. list all the customer information from db 
 */
select * from customer;

/* 4. list different countries. 
*/
select distinct country from country;

/*5. display all the active customers
*/
select* from customer;
SELECT customer_id, first_name, last_name, email FROM customer WHERE active=1;

/* 6.list of all rental ids for customer with id 1
*/
select* from rental;
select rental_id from rental where customer_id=1;

/* 7. display all the films whose rental duration is greater than 5
*/
select * from film ;

/* 8.List the total number of films whose replacemnet cost is greater than $15 and less than  $20.
*/
select * from film;
select film_id , title , replacement_cost from film where replacement_cost >15 and replacement_cost<20;

/*
9. Display the count of unique first names of actors.
*/
select* from actor;
select count(distinct first_name) from actor;

/*
10. Display the first 10 recods from the customer table
*/
select* from customer;
select * from customer limit 10;

/*
11. Display the first 3 records from the customer table whose first name starts with 'b'
*/
select * from customer where first_name like "b%" limit 3;

/*
12.  Display the names of first 5 movies which are rated as G.
*/
select * from film ;
select title from film where rating= "G" limit 5;


/* 13. Find all customers whose first name starts with "a".
*/
select* from customer where first_name like "a%";

/*
14. Find all customers whose first name ends with "a".
*/
select* from customer where first_name like "%a";

/*
15. Display the list of first 4 cities which start and end with ‘a’.
*/
select* from customer;
select city from city where city like "a%%a" limit 4;

/*
16.Find all customers whose first name have "NI" in any position.
*/
select* from customer;
select * from customer where first_name like "%ni%";

/*
17.Find all customers whose first name have "r" in the second position .
*/
-- Solution:
select first_name from customer where first_name LIKE '_r%';

/*
18. Find all customers whose first name starts with "a" and are at least 5 characters in length.
*/
select first_name from customer where first_name like "a____%";

/*
19. Find all customers whose first name starts with "a" and ends with "o".
*/
select first_name from customer where first_name like "a%o";

/*
20. Get the films with pg and pg-13 rating using IN operator.
*/
select title , rating from film where rating in ("pg" , "pg-13");

/*
21. Get the films with length between 50 to 100 using between operator.
*/
select title , length from film where length between 50 and 100;

/*
22. Get the top 50 actors using limit operator.
*/
select* from actor limit 50;

/*
23. Get the distinct film ids from inventory table.
*/
select distinct film_id from inventory ;