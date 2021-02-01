USE applestore;
SELECT * FROM data;
-- 1. Which are the different genres
SELECT prime_genre AS genre FROM data
GROUP BY genre;
-- 2. Which is the genre with more apps rated?
SELECT prime_genre, rating_count_tot FROM data
GROUP BY prime_genre;
-- 3. Which is the genre with more apps?
SELECT prime_genre, count(*) AS count_apps FROM data
GROUP BY prime_genre;
-- 4. Which is the one with less?
SELECT prime_genre, count(*) AS count_apps FROM data
GROUP BY prime_genre
ORDER BY count_apps DESC;
-- 5. Take the 10 apps most rated.
SELECT * FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;
-- 6. Take the 10 apps best rated by users.
SELECT * FROM data;
SELECT * FROM data
ORDER BY user_rating DESC
LIMIT 10;
-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT * FROM data
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;
-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT user_rating, avg(price) FROM data
GROUP BY user_rating;