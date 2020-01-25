-- Q1: different genres
SELECT DISTINCT prime_genre
FROM applestore.data
ORDER BY prime_genre;

-- Q2: genre with more apps *rated*
SELECT prime_genre, COUNT(*) AS number_of_apps
FROM applestore.data
WHERE rating_count_tot != 0
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Q3: genre with more apps
SELECT prime_genre, COUNT(*) AS number_of_apps
FROM applestore.data
GROUP BY prime_genre
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Q4: genre with less apps
SELECT prime_genre, COUNT(*) AS number_of_apps
FROM applestore.data
GROUP BY prime_genre
ORDER BY COUNT(*) ASC
LIMIT 1;

-- Q5: 10 most rated apps
SELECT *
FROM applestore.data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- Q6: 10 best rated apps
SELECT *
FROM applestore.data
ORDER BY user_rating DESC
LIMIT 10;

-- Q10: top 3 apps regarding the user ratings but also the number of votes
SELECT *
FROM applestore.data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

-- Q11.1: Total paid apps vs total apps:

#Total apps:
SELECT COUNT(*)
FROM applestore.data;

#Free apps:
SELECT COUNT(*)
FROM applestore.data
WHERE price = 0;

#Paid apps:
SELECT COUNT(*)
FROM applestore.data
WHERE price > 0;

-- Q11.2: Max and min price vs avg price: 

SELECT MAX(price) 
FROM applestore.data;

SELECT MIN(price) 
FROM applestore.data
WHERE price > 0;

SELECT AVG(price) 
FROM applestore.data
WHERE price > 0;

-- Q11.3: Most popular (most rated) of top rated apps: 
SELECT *
FROM applestore.data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;