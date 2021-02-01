USE appleStore;
SELECT 
    *
FROM
    data;

-- 1. Which are the different genres?
SELECT 
    prime_genre, COUNT(id)
FROM
    data
GROUP BY prime_genre;

-- 2. Which is the genre with more apps rated?
SELECT 
    prime_genre,
    SUM(rating_count_tot) AS total_rates,
    COUNT(id) AS total_apps
FROM
    data
GROUP BY prime_genre
ORDER BY total_rates DESC
LIMIT 1;

-- 3. Which is the genre with more apps?
SELECT 
    prime_genre,
    SUM(rating_count_tot) AS total_rates,
    COUNT(id) AS total_apps
FROM
    data
GROUP BY prime_genre
ORDER BY total_apps DESC
LIMIT 1;

-- 4. Which is the one with less?
SELECT 
    prime_genre,
    SUM(rating_count_tot) AS total_rates,
    COUNT(id) AS total_apps
FROM
    data
GROUP BY prime_genre
ORDER BY total_apps ASC
LIMIT 1;

-- 5. Take the 10 apps most rated.
SELECT 
    *
FROM
    data
ORDER BY rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT 
    *
FROM
    data
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT 
    *
FROM
    data
ORDER BY rating_count_tot DESC
LIMIT 100;

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
SELECT 
    *
FROM
    data
ORDER BY user_rating DESC
LIMIT 100;

-- 9. Now compare the data from questions 5 and 6. What do you see?

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT 
    *
FROM
    data
ORDER BY user_rating DESC , rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
-- Rates for free apps:
SELECT 
    AVG(rating_count_tot)
FROM
    data
WHERE
    price = 0;

-- Rates for paid apps:
SELECT 
    AVG(rating_count_tot)
FROM
    data
WHERE
    price != 0;

-- Rates per price:
SELECT 
    price, AVG(rating_count_tot)
FROM
    data
GROUP BY price
ORDER BY price ASC;

-- Total free apps:
SELECT 
    COUNT(id)
FROM
    data
WHERE
    price = 0;
    
-- Total paid apps:
SELECT 
    COUNT(id)
FROM
    data
WHERE
    price != 0;