-- Load the IronHackDB.sql structure in your local MySQL Workbench database instance. 
-- Use the applestore (not applestore2) table to query the data about Apple Store Apps 
-- and answer the following questions:
use appleStore;

-- 1. Which are the different genres?

SELECT prime_genre 
FROM data
group by prime_genre;

-- 2. Which is the genre with more apps rated?

select prime_genre, sum(rating_count_tot)
from data
group by prime_genre
ORDER BY sum(rating_count_tot) DESC;

-- 3. Which is the genre with more apps?

select * from data;

select prime_genre, count(track_name)
from data
group by prime_genre
ORDER BY count(track_name) DESC;


-- 4. Which is the one with less?
select prime_genre, count(track_name)
from data
group by prime_genre
ORDER BY count(track_name) ASC;

-- 5. Take the 10 apps most rated.

select * from data;

select track_name, sum(rating_count_tot)
from data
group by track_name 
order by sum(rating_count_tot) desc
limit 10;

-- 6. Take the 10 apps best rated by users.

select * from data;

select track_name, avg(user_rating)
from data
group by track_name
order by avg(user_rating) desc
limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
select * from data;
select track_name, sum(rating_count_tot), avg(user_rating), avg(price)
from data
group by track_name
order by sum(rating_count_tot) desc
limit 10;

/* The apps with a higher rating total are all free aps and have an avg rating of 4.5*/

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

select track_name, avg(user_rating), sum(rating_count_tot), avg(price)
from data
group by track_name
order by avg(user_rating) desc
limit 10;

/* 8 out of 10 apps with the highest rating aren´t free.
there are two apps with a very small amount of ratings hence they are not relevant. */

-- 9. Now compare the data from questions 5 and 6. What do you see?


-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

select * from data;

select track_name, sum(rating_count_tot)
from data
where user_rating = 5
group by track_name, user_rating
order by sum(rating_count_tot) desc
limit 3;

-- 11. Does people care about the price? Do some queries, 
-- comment why are you doing them and the results you retrieve. 
-- What is your conclusion?

select * from data;

-- this query will return a table with all the app names with their price and their total ratings. With this we´ll see if there´s any relation between price and ratings 
select track_name, avg(price), sum(rating_count_tot) as total_rating
from data
group by track_name
order by avg(price) DESC;


/* apps that have more ratings are all free, apps that are expensive have lower ratings, that provably means that not many people use them /*



-- You need to submit a .sql file that includes the queries used to answer the questions above, 
-- as well as an .md file including your answers.