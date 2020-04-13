data
datadata
answer one #
SELECT DISTINCT prime_genre FROM applestore.data;

ANSWER 3 #
SELECT * FROM applestore.data; #
SELECT prime_genre,
COUNT(prime_genre) AS value_occurrence 
FROM DATA
GROUP BY prime_genre
ORDER BY value_occurrence DESC


SELECT GREATEST(USER_RATING) FROM DATA 

SELECT * FROM data
GROUP BY desc rating_count_tot, user_rating