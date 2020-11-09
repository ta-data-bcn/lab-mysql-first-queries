USE appleStore;

select * from data;

-- 1. Which are the different genres?

select distinct prime_genre as genre
from data;

-- 2. Which is the genre with more apps rated?

select
    prime_genre as genre,
    sum(rating_count_tot) as total_rated
from data
group by prime_genre
order by total_rated DESC;

-- 3. Which is the genre with more apps?

select 
	prime_genre as genre,
    count(*) as nr_apps
from data
group by genre
order by nr_apps desc;

-- #  4. Which is the one with less?

select 
	prime_genre as genre,
    count(*) as nr_apps
from data
group by genre
order by nr_apps asc;

-- 5. Take the 10 apps most rated.

select
    track_name as app,
    sum(rating_count_tot) as total_rated
from data
group by track_name
order by total_rated DESC
limit 10;

-- 6. Take the 10 apps best rated by users.

select
	track_name as app,
    user_rating as rating
from data
order by rating desc
limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

select 
	track_name,
    price,
    rating_count_tot,
    user_rating,
    prime_genre
from data
order by rating_count_tot desc
limit 10;

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
select 
	track_name,
    price,
    rating_count_tot,
    user_rating,
    prime_genre
from data
order by user_rating desc
limit 10;

-- 9. Now compare the data from questions 5 and 6. What do you see?

select 
	avg(rating_count_tot)
from data;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

select 
	track_name,
    price,
    rating_count_tot,
    user_rating,
    prime_genre
from data
where rating_count_tot >= 12892
order by user_rating desc
limit 3;