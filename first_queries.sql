#1
SELECT prime_genre	
FROM data
GROUP BY prime_genre;

#2
SELECT prime_genre, SUM(rating_count_tot) AS total_ratings
FROM data
GROUP BY prime_genre
ORDER BY total_ratings DESC
LIMIT 10;

#3
SELECT prime_genre, count(track_name) AS no_apps
FROM data
GROUP BY prime_genre
ORDER BY no_apps DESC
LIMIT 1;

#4
SELECT prime_genre, count(track_name) AS no_apps
FROM data
GROUP BY prime_genre
ORDER BY no_apps ASC
LIMIT 1;

#5
SELECT track_name, prime_genre, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

#6
SELECT track_name, prime_genre, user_rating
FROM data
ORDER BY user_rating DESC
LIMIT 10;

#7
SELECT track_name, prime_genre, rating_count_tot, user_rating
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT avg(user_rating)
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

#8
SELECT track_name, prime_genre, user_rating
FROM data
ORDER BY user_rating DESC
LIMIT 500;

#9
#commented in the .md file

#10
SELECT rating_count_tot, user_rating, track_name
FROM data
ORDER BY rating_count_tot DESC, user_rating DESC 
LIMIT 3;

#11
SELECT track_name, prime_genre, rating_count_tot, price
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, prime_genre, user_rating, price
FROM data
ORDER BY user_rating DESC
LIMIT 10;

-- In general they do, cause the most downloaded ones are for free. If they hadn't been for free, probably they wouldn't have become
-- so famous and used. Nevertheless, we won't really know this for sure.


SELECT * FROM data

