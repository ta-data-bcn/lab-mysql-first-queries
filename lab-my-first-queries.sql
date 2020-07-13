SELECT prime_genre as genre
FROM data
GROUP BY genre;

SELECT prime_genre, SUM(rating_count_tot)
FROM data
GROUP BY prime_genre;

SELECT prime_genre, COUNT(prime_genre) 
FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC;

SELECT prime_genre, COUNT(prime_genre) 
FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC;

SELECT track_name, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating 
FROM data
ORDER BY user_rating DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

SELECT track_name, user_rating, rating_count_tot, price 
FROM data
ORDER BY user_rating DESC
LIMIT 10;
