SELECT * FROM data;
-- seleccio unica de generes
SELECT prime_genre
FROM data
GROUP BY prime_genre;

-- generes amb mes vots
SELECT prime_genre, SUM(rating_count_tot)
FROM data
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

-- genre with more apps and less apps
SELECT prime_genre, COUNT(track_name)
FROM data
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

-- less apps mes avaluades
SELECT track_name, rating_count_tot, user_rating
FROM data
GROUP BY track_name, rating_count_tot, user_rating
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 10;

-- 10 apps best rated
SELECT track_name, user_rating, rating_count_tot, price
FROM data
GROUP BY track_name, user_rating, rating_count_tot, price
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;
