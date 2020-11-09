use applestore;
-- 1. Which are the different genres?
select * from data;
SELECT distinct prime_genre FROM data;
-- 2. Which is the genre with more apps rated?
select * from data;
select max(rating_count_tot), prime_genre from data;
-- 3. Which is the genre with more apps?
select * from data;
select prime_genre, count(track_name) from data
group by prime_genre
order by count(track_name) desc;

-- 4. Which is the one with less?
select prime_genre, count(track_name) from data
group by prime_genre
order by count(track_name);

-- 5. Take the 10 apps most rated
select * from data;
select track_name, rating_count_tot from data
order by rating_count_tot desc;

-- 6. Take the 10 apps best rated by users.
select track_name, user_rating, prime_genre from data
order by user_rating desc
limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- Ans: the most rated apps are facebook and instagram

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- Ans: most of the best rated app are games

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- Ans: The best rated apps are not the ones with more rating counts;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes
select track_name, rating_count_tot, user_rating from data
order by user_rating DESC, rating_count_tot DESC
limit 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select track_name, rating_count_tot, user_rating, price from data
order by user_rating desc, rating_count_tot desc;

select track_name, price from data
order by price desc;

select avg(price) from data

-- The price may have influence on ratings, however we see a few paid apps well rated.