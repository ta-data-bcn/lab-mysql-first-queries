SELECT * FROM data;

-- 1. Which are the different genres?
SELECT DISTINCT prime_genre FROM data;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre AS genre, COUNT(*) AS Apps
FROM data
WHERE rating_count_tot > 0
GROUP BY genre
ORDER BY
Apps DESC;

-- Ans. Games genre has the highest number of apps (3400) rated.

-- 3. Which is the genre with more apps?
SELECT prime_genre AS genre, COUNT(*) AS Apps
FROM data
GROUP BY genre
ORDER BY
Apps DESC;

-- Ans. The Games genre has the number of apps in total (3862).

-- 4. Which is the one with less?
-- Ans.  Catalogs genre has the least number of apps (10).

-- 5. Take the 10 apps most rated.
SELECT track_name AS App, rating_count_tot, user_rating
FROM data
ORDER BY
rating_count_tot DESC
LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT track_name AS App, rating_count_tot, user_rating
FROM data
ORDER BY
user_rating DESC
LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- Ans. Facebook is the highest rated app. Angry Birds a higher user rating compared to Facebook, where it has lower number of total ratings in general.

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- Ans. There are 2 apps (Learn to Speak Spanish, Escape the Sweet Shop) rated by users as 5 but they have been rated by less than 10 users each. This is perhaps not representative of all the users.

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- Ans. As apps get rated by more and more users, the average user-rating shows a more realistic trend.

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT track_name AS App, rating_count_tot, user_rating
FROM data
ORDER BY
user_rating DESC, rating_count_tot DESC
LIMIT 3;

-- 11. Does people care about the price?
SELECT price, rating_count_tot, user_rating
FROM data
ORDER BY
price ASC, user_rating DESC
LIMIT 30;

-- Ans. Yes people do care about the price. The top 30 apps with average user rating of 5.0 are free.

SELECT price, rating_count_tot, user_rating
FROM data
ORDER BY
price ASC, rating_count_tot DESC
LIMIT 30;

-- The apps that received the highest number of total ratings also happen to be free apps.
