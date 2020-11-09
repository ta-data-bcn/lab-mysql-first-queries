use applestore;
SELECT applestore;
select * from data;

-- 1. Which are the different genres: All of those
select distinct prime_genre
from data;

-- 2. Which is the genre with more apps rated? Social Networking
select prime_genre, rating_count_tot
from data
group by prime_genre
order by rating_count_tot desc;

-- 3. Which is the genre with more apps? Games
select prime_genre, count(track_name) as count
from data
group by prime_genre
order by count desc;

-- 4. Which is the one with less? Catalogs
select prime_genre, count(track_name) as count
from data
group by prime_genre
order by count asc;

-- 5. Take the 10 apps most rated.
select prime_genre, count(track_name) as count
from data
group by prime_genre
order by count desc
limit 10;

-- 6. Take the 10 apps best rated by users.
select distinct track_name, avg(user_rating) as rating
from data
group by track_name
order by rating desc;


-- 7. Take a look on the data you retrieved in the question 5. Give some insights: Games is by far the app genre with the most ratings


-- 8. Take a look on the data you retrieved in the question 6. Give some insights: There is a large number of apps with a top rating. They cannot all fir in a "top 10" list
select distinct track_name, user_rating as rating
from data
order by rating desc
limit 10;

-- 9. Now compare the data from questions 5 and 6. What do you see? Though games have the most ratings, they are not the best rated. 
select distinct prime_genre, avg(user_rating) as rating, sum(rating_count_tot)
from data
group by prime_genre
order by rating desc;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select prime_genre, rating_count_tot from data where prime_genre="business";

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
--  It doesn't seem as though price is a good indication of average rating. Though free apps have the lowest average rating, apps in the $5.99 price range had the second lowest ratings. Moreover, apps in the $6.99 group had the highest rating. The most expensive ones exceeding 25 instances, those in the $9.99 group, had a rating just below the average.
-- This tells me that, though free apps get the lowest rating, once apps must be purchased, price is not a good indication of rating.
select price, avg(user_rating), count(price)
from data
group by price
having count(price) > 25
order by price desc;

select avg(user_rating) from data 