USE appleStore;
SELECT * FROM data;

-- 1. Which are the different genres?**
SELECT DISTINCT prime_genre FROM data;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, SUM(rating_count_tot) FROM DATA
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC
LIMIT 1;

-- 3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC;

-- 4. Which is the one with less?**
SELECT prime_genre, COUNT(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre);

-- 5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;


-- 6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating FROM data
ORDER BY user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.**
-- The app list we got is composite but the apps that have been rated most times, but no necessarily the ones with higher rates.
-- Probably they are very popular apps that everybody has in their smartphones.


-- 8. Take a look on the data you retrieved in the question 6. Give some insights.**
-- They are not very popular apps  but the people that have them valuate them very very well. Most of them are games that fans love... 
-- (eg. Plants vs Zombies is a great game I would rate with a 5)


-- 9. Now compare the data from questions 5 and 6. What do you see?**
-- There is a difference in how many times a app is rated and how well it is rated. Depending on our interests we will focus on each of them.

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, user_rating, rating_count_tot FROM data
WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT AVG(rating_count_tot) from data
WHERE price = 0;

SELECT AVG(rating_count_tot) from data
WHERE price != 0;

SELECT AVG(user_rating) from data
WHERE price = 0;

SELECT AVG(user_rating) from data
WHERE price != 0;

-- Free apps have a mean user rating of 3.38 out of 5 and have been rated 19749 times in average, while payment apps
-- have been rated with a 3.72 out of 5 and have been rated 4038 times in average. Payment apps have less rated counts because they have been
-- downloaded less times, but in average they have best rating than the free ones. Probably this would be an indicator of user fidelity.