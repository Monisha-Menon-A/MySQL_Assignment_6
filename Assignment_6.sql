create database assignment_6;
use assignment_6;

create table country (id int primary key,
country_name varchar(50),
population varchar(50),
area_sqkm varchar(50));
desc country;
insert into country(id, country_name, population, area_sqkm)
values(1, 'India', '90000000', '32 lakhs'),
(2, 'China', '90000000', '97 lakhs'),
(3, 'USA', '80000000', '93 lakhs'),
(4, 'UK', '70000000', '2 lakhs'),
(5, 'Canada', '60000000', '99 lakhs'),
(6, 'Australia', '50000000', '50 lakhs'),
(7, 'Netherlands', '40000000', '32 lakhs'),
(8, 'Sweden', '30000000', '4 lakhs'),
(9, 'Austria', '20000000', '3 lakhs'),
(10, 'Switzerland', '10000000', '2 lakhs');
select*from country;

create table persons (id int primary key,
first_name varchar(50),
last_name varchar(50),
population varchar(50),
rating decimal(10,2),
country_id int,
country_name varchar(50));
desc persons;
insert into persons(id, first_name, last_name, population,rating,country_id,country_name)
values(1, 'Lisha', 'Thomas', '90000000', 1.71, 1, 'India'),
(2, 'Chaang', 'Yaang', '90000000', 2.52, 2, 'China'),
(3, 'Thomas', 'Cook', '80000000', 3.23, 3, 'USA'),
(4, 'Diana', 'Xavier', '90000000', 1.84, 1, 'India'),
(5, 'Freddy', 'Dainz', '60000000', 5.35, 5, 'Canada'),
(6, 'Hari', 'Sharma', '90000000', 1.96, 1, 'India'),
(7, 'william', 'Blake', '40000000', 7.47, 7, 'Netherlands'),
(8, 'Right', 'Thomas', '30000000',8.18, 8, 'Sweden'),
(9, 'Cindrella', 'John', '20000000', 9.69, 9, 'Austria'),
(10, 'Irene', 'Dizooza', '10000000', 10.10, 10, 'Iceland');
select*from persons;

#Perform inner join, Left join, and Right join on the tables
select c.id, c.country_name, c.population, p.country_name, p.population
from country as c inner join persons as p on c.id=p.id; 

select c.id, c.country_name, c.population, p.country_name, p.population
from country as c left join persons as p on c.id=p.id; 

select c.id, c.country_name, c.population, p.country_name, p.population
from country as c right join persons as p on c.id=p.id; 

#List all distinct country names from both the Country and Persons tables
select distinct country_name from country
union
select distinct country_name from persons;

#List all country names from both the Country and Persons tables, including duplicates
select country_name from country
union all
select country_name from persons;

#Round the ratings of all persons to the nearest integer in the Persons table
select rating, round(rating) as round_rating from persons ;
