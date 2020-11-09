use appleStore;
-- 1. Which are the different genres? 
select * from appleStore.data;
select distinct prime_genre from data;
-- 2. Which is the genre with more apps rated? - Games
select * from appleStore.data;

SELECT COUNT(user_rating), prime_genre
FROM data
GROUP BY prime_genre
ORDER BY COUNT(user_rating) DESC;

-- 3. Which is the genre with more apps? - Games
select * from appleStore.data;

SELECT COUNT(track_name), prime_genre
FROM data
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;

SELECT COUNT(track_name)MAX, prime_genre
FROM data
GROUP BY prime_genre
ORDER BY MAX DESC;

-- 4. Which is the one with less? -Catalogs
SELECT COUNT(track_name)MIN, prime_genre
FROM data
GROUP BY prime_genre
ORDER BY MIN ASC;


-- 5. Take the 10 apps most rated.
SELECT * FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;


SELECT * FROM data
ORDER BY rating_count_ver DESC
LIMIT 10;


-- 6. Take the 10 apps best rated by users.

SELECT * FROM data
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- Fcaebook and instagram have highest count_tot, are most used apps. Social nets are very popular among users.
-- Infinity blade is most popular app by count_ver

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- racing games have the highst rating, sudoku, some other games and language learning app are also amoung most popular apps.

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- Highest rating by users doesnt mean (highest count_tot) that app will be higly used.

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT * FROM data
ORDER BY user_rating and rating_count_ver DESC
LIMIT 3;


-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
-- an app with a highest price has lowest raiting_count_tot, used less often
-- an average price is 1,72
-- most often used apps are free
-- people likly choose cheap apps
-- people realy care about price
SELECT * FROM data
ORDER BY price DESC
LIMIT 10;

SELECT AVG(price) FROM data;


SELECT COUNT(rating_count_tot), price
FROM data
GROUP BY price
ORDER BY COUNT(rating_count_tot) DESC;


