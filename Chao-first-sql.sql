-- 1. Which are the different genres?
SELECT prime_genre  FROM data
GROUP BY prime_genre;

-- 2.Which is the genre with more apps rated?
SELECT prime_genre, sum(rating_count_tot) AS amount_app FROM data
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC;

-- 3. Which is the genre with more apps?  Ans: Games

SELECT prime_genre, COUNT(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC;


-- 4. Which is the one with less? Ans: Catalogs

SELECT prime_genre, COUNT(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre);


-- 5. Take the 10 apps most rated.

SELECT track_name, rating_count_tot, user_rating FROM data
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.

SELECT track_name, user_rating, rating_count_tot FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;


-- 7. Take the mean rate between the 10 apps most rated. Don't calculate the mean, just see the data!

SELECT track_name, rating_count_tot, user_rating FROM data
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 10;


-- 8. Take the mean rate between the 10 apps best rated. Don't calculate the mean, just see the data!

SELECT track_name, user_rating, rating_count_tot FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

-- 9. What do you see here?

-- Ans: The app which have the best rated do not coincide with the most voted. 
-- The best rated apps have around 160000-480000 votes, while apps which have the highest number of votes generally have a rate range from 3.5 - 4.5.


-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT track_name, user_rating, rating_count_tot FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


-- 11. Does people care about the price? Ans: Not really

SELECT price, avg(user_rating), sum(rating_count_tot) FROM data
GROUP BY price
ORDER BY price, avg(user_rating)
LIMIT 20;
