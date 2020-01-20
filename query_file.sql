SELECT prime_genre
FROM `data`
GROUP BY prime_genre;

SELECT prime_genre, SUM(rating_count_tot) AS TotalRatings
FROM `data`
GROUP BY prime_genre;

SELECT prime_genre, COUNT(*) AS Records
FROM `data`
GROUP BY prime_genre
ORDER BY Records ASC;

SELECT track_name, rating_count_tot AS Rating
FROM `data`
ORDER BY Rating DESC
LIMIT 10;

SELECT track_name, user_rating AS UserRating, price AS price, rating_count_tot AS Rating
FROM `data`
WHERE user_rating=5
ORDER BY Rating DESC
LIMIT 30;