use applestore;

-- 1. Which are the different genres?

SELECT prime_genre as genre
FROM data
group by prime_genre;

-- 2. Which is the genre with more apps rated?

select prime_genre genre, sum(rating_count_tot) as total_rating_count
from data
group by prime_genre
ORDER BY sum(rating_count_tot) DESC;

-- 3. Which is the genre with more apps?

select prime_genre as genre, count(track_name) as count_track_name
from data
group by prime_genre
ORDER BY count(track_name) DESC;


-- 4. Which is the one with less?
select prime_genre genre, count(track_name) count_track_name
from data
group by prime_genre
ORDER BY count(track_name) ASC limit 1;

-- 5. Take the 10 apps most rated.

select track_name, sum(rating_count_tot) as total_rat_count
from data
group by track_name 
order by sum(rating_count_tot) desc
limit 10;

-- 6. Take the 10 apps best rated by users.

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

-- > The apps with a higher rating total are all free aps and have an avg rating of 4.5

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

select track_name, avg(user_rating), sum(rating_count_tot), avg(price)
from data
group by track_name
order by avg(user_rating) desc
limit 10;

-- There're 8 out of 10 apps with the highest rating aren´t free.

-- 9. Now compare the data from questions 5 and 6. What do you see?


-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

select track_name, sum(rating_count_tot)
from data
where user_rating = 5
group by track_name, user_rating
order by sum(rating_count_tot) desc
limit 3;

-- 11. Does people care about the price? Do some queries, 
-- comment why are you doing them and the results you retrieve. 
-- What is your conclusion?
-- The apps that have more ratings are all free, apps that are expensive have lower ratings, that provably means that people downloads the free app.

-- makking a table to observe the relation between price and ratings 
select track_name, avg(price), sum(rating_count_tot) as total_rating
from data
group by track_name
order by avg(price) DESC;