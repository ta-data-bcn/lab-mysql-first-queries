use appleStore;
# Data visualization
SELECT 
    *
FROM
    data;

-- 1. Which are the different genres?
# una opción 
SELECT DISTINCT
    prime_genre
FROM
    data;
# otra opción 
SELECT prime_genre
FROM data
GROUP BY prime_genre;

-- 2. Which is the genre with more apps rated?
SELECT MAX(prime_genre)
FROM data
GROUP BY rating_count_tot;


-- 3. Which is the genre with more apps?
SELECT MAX(prime_genre)
FROM data;


-- 4. Which is the one with less?
SELECT MIN(prime_genre)
FROM data;


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
# Since Facebook is the most rated one it has the worst user_rating and Instagram the second score has the best user rating with the best rating_count_ver 

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
# Most of them are not free, and their genre are Game. 
# Also, two of them have very few ratings


-- 9. Now compare the data from questions 5 and 6. What do you see?
# the user rating are games and has a price


-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT * FROM data
ORDER BY user_rating, rating_count_tot DESC
LIMIT 3; 


-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT * FROM data
ORDER BY price DESC
LIMIT 10; 
# the rating_user are high 4 or more so it looks like with the highest price users dont care about price
