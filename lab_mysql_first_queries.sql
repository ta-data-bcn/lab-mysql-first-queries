USE appleStore;

-- 1. Which are the different genres?
SELECT prime_genre, COUNT(prime_genre)
FROM data
GROUP BY prime_genre;

-- 2. Which is the genre with more apps rated?
SELECT prime_genre, SUM(rating_count_tot)
FROM data
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC 
LIMIT 1;

-- 3. Which is the genre with more apps?
SELECT prime_genre, COUNT(prime_genre)
FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC;

-- 4. Which is the one with less?
SELECT prime_genre, COUNT(prime_genre)
FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC;

-- 5. Take the 10 apps most rated.
SELECT track_name, prime_genre, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC LIMIT 10;

-- 6. Take the 10 apps best rated by users.
SELECT track_name, prime_genre, rating_count_tot, user_rating, price
FROM data
WHERE user_rating = 5
ORDER BY rating_count_ver DESC LIMIT 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- Most of the top rated apps are either social media or games, except for the Bible. All this apps are free. 

SELECT track_name, sum(rating_count_tot), avg(user_rating), avg(price)
FROM data
GROUP BY track_name
ORDER BY sum(rating_count_tot) DESC
LIMIT 10;

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- All the apps are paid and either popular games or unknown apps with few ratings.
SELECT track_name, avg(user_rating), sum(rating_count_tot), avg(price)
FROM data
GROUP BY track_name
ORDER BY avg(user_rating) DESC
LIMIT 10;

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- Users votes more for free apps, but rates best paid apps. The reason, probably, is the popups that appear every X time when you use an app. 
-- If it's free and you use it a lot, you end up rating it. And if, above all, you have paid for it, you rating it positively.

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, rating_count_ver, user_rating, price
FROM data
WHERE user_rating = 5
ORDER BY rating_count_ver DESC LIMIT 3;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. 
-- What is your conclusion?

 -- Apps that have more ratings are all free, apps that are expensive have lower ratings, that provably means that not many people use them.

SELECT track_name, prime_genre, rating_count_tot, user_rating, price
FROM data
WHERE user_rating = 5
ORDER BY rating_count_ver DESC LIMIT 50;