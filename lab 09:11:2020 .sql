use appleStore;
select * from data;

-- 1. Which are the different genres?

select 
    count(*) as n_data,
prime_genre
from data
group by prime_genre; 

-- 2. Which is the genre with more apps rated?
select count(*) as n_data, prime_genre from data
where rating_count_tot > 0
group by prime_genre;





 
-- 3. Which is the genre with more apps?
select 
    count(*) as n_data,
prime_genre
from data
group by prime_genre
order by n_data DESC
limit 1 ;


-- 4. Which is the one with less?
select 
    count(*) as n_data ,
prime_genre
from data
group by prime_genre
order by n_data ASC 
limit 1;

-- 5. Take the 10 apps most rated.
select track_name, rating_count_tot from data
    order by rating_count_tot DESC
    limit 10;


-- 6. Take the 10 apps best rated by users.
select track_name, user_rating from data
    order by user_rating DESC
    limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- Facebook is the most rated app,  Instagram and Clash of Clans are very close of rated.  

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- the most user_rating is 5 

-- 9. Now compare the data from questions 5 and 6. What do you see?data
-- they are not same 10 apps 

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name , user_rating, rating_count_tot from data
having user_rating = 5
order by rating_count_tot DESC
limit 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

select track_name , user_rating, rating_count_tot, price from data
having user_rating = 5
order by rating_count_tot DESC
limit 20;
-- yes, people do care about the price, the top 20 regarding the user rating but also the number of votes they are free or less than 2 euros.