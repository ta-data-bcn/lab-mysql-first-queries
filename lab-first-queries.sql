-- 1. Which are the different genres?
SELECT prime_genre FROM data
GROUP BY prime_genre;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, count(prime_genre) FROM data
WHERE rating_count_tot <> 0 
GROUP BY prime_genre
ORDER BY count(prime_genre) DESC
LIMIT 1;

-- 3. Which is the genre with more apps?
SELECT prime_genre, count(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY count(prime_genre) DESC
LIMIT 1;

-- 4. Which is the one with less?
SELECT prime_genre, count(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY count(prime_genre) ASC
LIMIT 1;

-- 5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating FROM data
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take the mean rate between the 10 apps most rated. Don't calculate the mean, just see the data!
SELECT track_name, rating_count_tot, user_rating FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;


-- 8. Take the mean rate between the 10 apps best rated. Don't calculate the mean, just see the data!
SELECT track_name, rating_count_tot, user_rating FROM data
ORDER BY user_rating DESC,
ORDER BY rating_count_tot DESC,
LIMIT 10;

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, rating_count_tot, user_rating FROM data
ORDER BY rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price?
SELECT track_name, rating_count_tot, price FROM data
ORDER BY price DESC
LIMIT 20;

SELECT track_name, rating_count_tot, price FROM data
ORDER BY price ASC
LIMIT 20;