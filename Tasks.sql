SELECT * FROM appleStore.data;

-- 1. Which are the different genres?
select prime_genre from data
group by prime_genre;

-- 2. Which is the genre with more apps rated?
select prime_genre as pg, sum(rating_count_tot) as total_rating
from data
group by prime_genre
order by total_rating desc;

-- 3. Which is the genre with more apps?
select prime_genre as pg, count(id) as number_of_apps
from data
group by pg
order by number_of_apps desc;

-- 4. Which is the one with less?
select prime_genre as pg, count(id) as number_of_apps
from data
group by pg
order by number_of_apps;

-- 5. Take the 10 apps most rated.
select track_name, rating_count_tot
from data
order by rating_count_tot desc;

-- 6. Take the 10 apps best rated by users.
select track_name, user_rating from data
order by user_rating desc
limit 10;
-- One could also say that all with a ranking of 5 belong to the top 10
select track_name, user_rating from data
where user_rating = "5";

-- 7. Take the mean rate between the 10 apps most rated.** Don't calculate the mean, just see the data!
select track_name, rating_count_tot
from data
order by rating_count_tot desc
limit 10;
-- The count should be about 1724546

-- 8. Take the mean rate between the 10 apps best rated.** Don't calculate the mean, just see the data!
select track_name, user_rating from data
order by user_rating desc
limit 10;

-- it´s 5

-- 9. What do you see here?
-- I dunno

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, user_rating, rating_count_tot from data
order by user_rating desc, rating_count_tot desc
limit 3;

-- 11. Does people care about the price?
select track_name, user_rating, price from data;

select user_rating, avg(price) from data
group by user_rating;