select * from sakila.actor
LIMIT 300 ;
select * from `data`
where prime_genre = "Games"
order by price desc
LIMIT 10;
select track_name, price, prime_genre;
select prime_genre, sum(price) as total_price 
from `data` where prime_genre = "Games";

Select prime_genre as pg, avg(user_rating), sum(price) as total_price
from "data"
group by prime_genre
order by total_price
limit 9;

Crate table "applications" ("id" bigint(20) NOT NULL AUTO_INCREMENT, "name" varchar(512) not null auto_increment, "size" bigint(20) not null, "price" double not null, "genre" bigint(20) default null, primary key("ID"), key "genre" ("genre"), foreign key ("genre") REFERENCES "prime_genres" ("id");

select * from applications
join prime_genres
on applications.genre = prime_genres.id;

-- Check dataset
select * from `data`;

-- Q1
select DISTINCT `prime_genre` from `data`;

-- Q2
SELECT `prime_genre`, sum(`rating_count_tot`) as tot_rate_count from `data`
group by `prime_genre`
order by tot_rate_count desc;

-- Q3
select prime_genre, COUNT(DISTINCT track_name) as number_of_apps from `data`
group by `prime_genre`
order by number_of_apps DESC;

-- Q4
select `prime_genre`, count(distinct `track_name`) as number_of_apps from `data`
group by `prime_genre`
order by number_of_apps ASC;

-- Q5
select `track_name`, `rating_count_tot` as tot_rate_count from `data`
order by tot_rate_count DESC
limit 10;

-- Q6
select `track_name`, `user_rating` from `data`
order by `user_rating` DESC
limit 10;

-- Q7
select `track_name`, `rating_count_tot` as tot_rate_count from `data`
order by tot_rate_count DESC
limit 10
-- The values go from 3 million to 800,000
;

-- Q8
select `track_name`, `user_rating` from `data`
order by `user_rating` DESC
limit 10
-- The average is 5
;

-- Q9: The exact mean is calulated easily for Q8 as all values are uniform. For Q7 it has to be estimated.
;

-- Q10
select `track_name`, `user_rating`, `rating_count_tot` from `data`
order by `user_rating` DESC, `rating_count_tot` DESC
limit 3;

-- Q11
select `price`, `track_name`, `user_rating` from `data`
order by `price` DESC
-- Price does not matter when it comes to user rating. Looking at the 
;
select avg(`user_rating`) from `data`
where `price` = "12.99"
-- AVG 0.9
;

select avg(`user_rating`) from `data`
where `price` = "9.99"
-- AVG 3.63
;

select avg(`user_rating`) from `data`
where `price` = "7.99"
-- AVG 3.47
;
 
select avg(`user_rating`) from `data`
where `price` = "4.99"
-- AVG 3.84
;

select avg(`user_rating`) from `data`
where `price` = "3.99"; 

select avg(`user_rating`) from `data`
where `price` = "2.99"; 

select avg(`user_rating`) from `data`
where `price` = "1.99"; 

select avg(`user_rating`) from `data`
where `price` = "0"; 

