-- first to initiate: USE 
USE applestore;
SELECT *
FROM data;

-- 1
-- 1. Which are the different genres?
SELECT DISTINCT prime_genre
FROM data;

-- 2
-- 2. Which is the genre with more apps rated?
SELECT max(rating_count_tot), prime_genre,user_rating
FROM data
group by prime_genre
order by MAX(rating_count_tot) DESC;

-- 2 Alternative 
SELECT prime_genre, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC;

SELECT *
FROM data;

-- 3 
-- Which is the genre with more apps?
SELECT COUNT(track_name), prime_genre
FROM data
group by prime_genre
ORDER BY COUNT(track_name) DESC;

-- 4
-- Which is the one with less
SELECT count(track_name), prime_genre
FROM data
group by prime_genre
order by count(track_name) ASC;

-- 5
-- Take the 10 apps most rated
-- whole data ordered
SELECT *
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 5 just the core data
SELECT rating_count_tot, track_name
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6
-- Take the 10 apps best rated by users
-- problem: hundreds of apps with 5.0
select *
FROM data
order by user_rating desc
limit 10;

-- 6
-- only core data
select track_name, user_rating
FROM data
order by user_rating desc
limit 10;


-- 6
-- calculate how many apps with 5.0
select count(user_rating)
from data
where user_rating = 5;

-- 10
-- How could you take the top 3 regarding the user ratings but also the number of votes?**
select *
from data
order by user_rating desc, rating_count_tot desc
limit 3;

-- 11
-- Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
-- find out the price for apps per genre with good evaluation
select avg(price), user_rating 
from data
where user_rating between 4 and 5
group by user_rating
order by avg(price) desc;

-- 11
-- genre per price
select avg(price), prime_genre
from data
group by genre
order by price desc;
