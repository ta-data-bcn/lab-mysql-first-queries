use applestore;

SELECT * FROM data;

-- 1. Which are the different genres?

SELECT DISTINCT
    (prime_genre)
FROM
    data;

-- 2.Which is the genre with more apps rated?
SELECT 
    SUM(rating_count_tot), prime_genre
FROM
    data
GROUP BY prime_genre
LIMIT 1;

--  3.Which is the genre with more apps?
SELECT 
    COUNT(*) AS totals , prime_genre
FROM
    data
GROUP BY prime_genre
LIMIT 1;

-- 4.Which is the one with less?
SELECT 
    COUNT(*) AS totals, prime_genre
FROM
    data
GROUP BY prime_genre
ORDER BY totals ASC
LIMIT 1;

-- 5.Take the 10 apps most rated.
SELECT 
    track_name,user_rating, SUM(rating_count_tot) AS totals
FROM
    data
GROUP BY track_name
ORDER BY totals DESC
LIMIT 10;

-- 6.Take the 10 apps best rated by users
SELECT 
    track_name,
    AVG(user_rating) AS average,
    rating_count_tot,
    prime_genre
FROM
    data
GROUP BY track_name
ORDER BY average DESC , rating_count_tot DESC
LIMIT 10;

-- 7.Take a look on the data you retrieved in the question 5. Give some insights
-- User_rating and total ratings are not correlated. 

-- 8. Take a look on the data you retrieved in the question 6. Give some insights
-- Games is the Genre better rated. Also the better rated apps does not have much reviews. We may find correlation here : Less reviews apps has more chance of
-- being higher rated.

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- Apps with many reviews have more chance of having negative reviews, therefore the user rating may be lower than less popular apps.

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT 
    track_name,
    AVG(user_rating) AS average,
    SUM(rating_count_tot) AS total_ratings
FROM
    data
GROUP BY track_name
HAVING average > 0 AND total_ratings > 0
ORDER BY average DESC , total_ratings DESC
LIMIT 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT 
    track_name,
    rating_count_tot,
    AVG(user_rating) AS average,
    price
FROM
    data
GROUP BY track_name
ORDER BY rating_count_tot DESC, average DESC, price DESC;

SELECT 
    track_name,
    rating_count_tot,
    price
FROM
    data
GROUP BY track_name
ORDER BY price DESC;

-- Regarding most popular apps are free, probably YES.
-- Most expensive apps has just a few reviews in comparison with most popular free apps. On the other hand there is also free apps with just a few reviews.

