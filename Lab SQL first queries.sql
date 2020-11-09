-- 1. Which are the different genres?--
use applestore;
select prime_genre from data;

select * from data;
-- 2. Which is the genre with more apps rated?--
select prime_genre,sum(rating_count_tot) as total_apps_rated from data group by prime_genre order by total_apps_rated DESC limit 1 ;
-- 3. Which is the genre with more apps ?--
select prime_genre, count(*) as total_apps from data group by prime_genre order by total_apps DESC;
--  4. Which is the one with less? --
select prime_genre, count(*) as total_apps from data group by prime_genre order by total_apps ASC;
 -- 5. Take the 10 apps most rated by users.--
  select track_name, rating_count_tot, price from data order by rating_count_tot DESC limit 10;
 -- 6. Take the 10 apps best rated by users.--
 select track_name, user_rating, price from data order by user_rating DESC limit 10;
 -- 7. Take a look on the data you retrieved in the question 5. Give some insights.--
 -- The apps that received more ratings are free--
 -- 8. Take a look on the data you retrieved in the question 6. Give some insights.--
 -- Most of the apps that received the best ratings are not free --
 -- Now compare the data from questions 5 and 6. What do you see?--
 -- I see that the apps that I retrieved in each query are different so there is no relation between most and best rated--
 -- How could you take the top 3 regarding the user ratings but also the number of votes?--
 select track_name, user_rating, rating_count_tot from data order by user_rating DESC limit 3;
 -- Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?--
 select track_name, user_rating, rating_count_tot, price from data group by prime_genre order by price DESC;
 -- The most expensive apps usually get better ratings but not most.


