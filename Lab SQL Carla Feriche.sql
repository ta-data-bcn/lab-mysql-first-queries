use appleStore;
select * from appleStore.data;
-- Which are the different genres?
select prime_genre from data;
SELECT prime_genre FROM data GROUP BY prime_genre;

-- Which is the genre with more apps rated? Games
select SUM(rating_count_tot) as sum_rating, prime_genre
from appleStore.data
group by prime_genre
order by sum_rating;

-- Which is the genre with more apps?

select count(*) prime_genre
from appleStore.data
group by prime_genre;

select count(*) as n_apps, prime_genre
from appleStore.data
group by prime_genre
order by n_apps desc
limit 1;

-- Which is the one with less?
select count(*) as n_apps, prime_genre
from appleStore.data
group by prime_genre
order by n_apps asc
limit 1;

-- Take the 10 apps most rated.
select track_name, rating_count_tot
from appleStore.data
order by rating_count_tot desc
limit 10;

-- Take the 10 apps best rated by users.
select track_name, user_rating
from appleStore.data
order by user_rating desc
limit 10;


-- Take a look on the data you retrieved in the question 5. Give some insights.
-- It seems to be the apps that people uses more.
-- Take a look on the data you retrieved in the question 6. Give some insights.
-- It seems to be apps, which people don't know, and maybe is just one person who rated the app. 
-- Now compare the data from questions 5 and 6. What do you see?
-- They are not similar at all. 
-- How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, user_rating, rating_count_tot
from appleStore.data
having user_rating = 5
order by rating_count_tot desc
limit 3; 

-- Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select track_name, user_rating, price, rating_count_tot
from appleStore.data
having price > 0
order by rating_count_tot desc;

select track_name, rating_count_tot, price
from appleStore.data
order by rating_count_tot desc
limit 10;

select track_name, user_rating, price, rating_count_tot
from appleStore.data
order by user_rating desc
limit 10;
-- We can conclude, that the apps that people uses more, the price is 0. If we see the apps more rated, it doesn't really matters as sometimes just one person has rated the app, so we should not focus on that. 

