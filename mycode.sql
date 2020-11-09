use appleStore;
select * from data;

-- 1. Which are the different genres?

select prime_genre from appleStore.data
group by prime_genre;

-- 2. Which is the genre with more apps rated?

select prime_genre, sum(rating_count_tot)
from appleStore.data
group by prime_genre
order by sum(rating_count_tot) DESC
limit 1;

-- 3. Which is the genre with more apps?

select prime_genre
from appleStore.data
group by prime_genre
order by count(prime_genre) DESC
limit 1;

-- 4. Which is the one with less?

select prime_genre
from appleStore.data
group by prime_genre
order by count(prime_genre) ASC
limit 1;

-- 5. Take the 10 apps most rated.

select prime_genre, track_name, rating_count_tot
from appleStore.data
order by rating_count_tot DESC
limit 10;

-- .6. Take the 10 apps best rated by users.

select prime_genre, track_name,  user_rating, rating_count_tot
from appleStore.data
order by user_rating DESC, rating_count_tot DESC
limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- Facebook, Instagram and Pinterest are the only social media among the top 10.
--  The most repeated genre is Games.

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- All of them are games with top user rating but the Domino's Pizza app.

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- Games is the most reviewed category.

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

select prime_genre, track_name,  user_rating, rating_count_tot
from appleStore.data
order by user_rating DESC, rating_count_tot DESC
limit 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, 
       NUMERIC_PRECISION, DATETIME_PRECISION, 
       IS_NULLABLE 
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='data';

ALTER TABLE appleStore.data
MODIFY price FLOAT;



select prime_genre, track_name, price, user_rating, rating_count_tot
from appleStore.data
order by price DESC, user_rating DESC;

select prime_genre, track_name, price, user_rating, rating_count_tot
from appleStore.data
having price = 0
order by user_rating desc;

select price, avg(user_rating)
from appleStore.data
group by price 
order by price DESC;

-- Users are not price sensitive, and there might be a positive correlation between price and user_rating.




