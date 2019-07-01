-- Q1, types of genres --
SELECT prime_genre
FROM appleStore.data
GROUP BY prime_genre
; 

-- Q2 Genre with max. rated apps --
SELECT prime_genre, SUM(rating_count_tot) AS total 
FROM appleStore.data
GROUP BY prime_genre
ORDER BY total DESC
;

-- Q3 Genre with max. apps --
SELECT prime_genre, COUNT(id) AS total 
FROM appleStore.data
GROUP BY prime_genre
ORDER BY total DESC
;

-- Q4 Genre with min apps --
SELECT prime_genre, COUNT(id) AS total 
FROM appleStore.data
GROUP BY prime_genre
ORDER BY total 
; 

-- Q5 Top 10 rated apps by users--
SELECT track_name, rating_count_tot
FROM appleStore.data
ORDER BY rating_count_tot DESC
LIMIT 10

;

-- Q6 Top 10 best rated apps --
SELECT id, track_name, user_rating, rating_count_tot
FROM appleStore.data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10
;

-- Q10 Top 3 best rated and most rated --
SELECT id, track_name, user_rating, rating_count_tot
FROM appleStore.data
ORDER BY rating_count_tot DESC 
LIMIT 10;

-- Q10 Top 3 best rated and most rated --
SELECT id, track_name, user_rating, rating_count_tot, price
FROM appleStore.data
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 3
;

-- Q11 do people care about price -- 
SELECT price, SUM(rating_count_tot), AVG(user_rating)
FROM appleStore.data
GROUP BY price HAVING price = "0"
;
SELECT price, SUM(rating_count_tot), AVG(user_rating)
FROM appleStore.data
GROUP BY price HAVING price != "0"
;