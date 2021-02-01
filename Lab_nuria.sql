-- Lab using applestore DB:
USE appleStore;
-- 1. Which are the different genres?

SELECT DISTINCT prime_genre
FROM data;

-- 2. Which is the genre with more apps rated?

SELECT prime_genre, SUM(rating_count_tot) AS total_rating
FROM data
GROUP BY prime_genre
ORDER BY total_rating DESC;

-- 3. Which is the genre with more apps?
SELECT prime_genre, SUM(id) AS total_gen_apps 
FROM data
GROUP BY prime_genre
ORDER BY total_gen_apps DESC;

-- 4. Which is the one with less?
SELECT prime_genre, SUM(id) AS total_gen_apps 
FROM data
GROUP BY prime_genre
ORDER BY total_gen_apps;

-- 5. Take the 10 apps most rated.
SELECT * FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.

SELECT * FROM data
ORDER BY user_rating DESC
LIMIT 10;


-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

-- 9. Now compare the data from questions 5 and 6. What do you see?

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
/* Fixing the user_rating to the maximum value (i.e. 5) and sorting by rating_count_total?
WHERE user_rating=5 ; or you cna order by two columns. USing rating_count_tot the last to get results differnet form ex 5 */
SELECT * FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT * FROM data
ORDER BY price DESC
LIMIT 20;
-- The most expensive app (99.99) has a 4.5 user_rate and only 71 ratings.
SELECT * FROM data
ORDER BY user_rating DESC, price DESC
LIMIT 20;
-- Ordering by user_rating and price shows 7 of the most expensive apps (appart from the 99.99 one),
-- have a 5-star rating. 
SELECT * FROM data
ORDER BY user_rating DESC , price
LIMIT 20;
-- But there are also many apps with user rating 5 that are free.


-- 
SELECT count(id),price, avg(user_rating) as avg_user_rating
FROM data
GROUP BY price
ORDER BY avg_user_rating DESC;
-- We can say that are $9.99 apps with the maximum rating, and free apps with the maximum rating too.
SELECT count(id),price, avg(user_rating) as avg_user_rating
FROM data
WHERE price=9.99
GROUP BY user_rating
ORDER BY user_rating DESC;
-- from the lines above, most of the apps that are $9.99 have an average user rating of 4.5 and 4

SELECT count(id),price, avg(user_rating) as avg_user_rating
FROM data
WHERE price=0
GROUP BY user_rating
ORDER BY user_rating DESC;
-- from the lines above, most of the apps have also 4.5 and 4 ratings
-- And in general there are more apps.