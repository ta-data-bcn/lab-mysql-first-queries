
-- 1. Which are the different genres?**
SELECT DISTINCT prime_genre
FROM applestore.data as a;
-- 2. Which is the genre with more apps rated?**
SELECT SUM(a.rating_count_tot) as total, a.prime_genre
FROM applestore.data as a
GROUP BY a.prime_genre;


-- 3. Which is the genre with more apps?**
SELECT COUNT(*), a.prime_genre
FROM applestore.data as a
GROUP BY a.prime_genre;
-- 4. Which is the one with less?**
SELECT COUNT(*) as total, a.prime_genre
FROM applestore.data as a
GROUP BY a.prime_genre
ORDER BY total ASC;

-- 5. Take the 10 apps most rated.**
SELECT a.track_name, a.rating_count_tot
FROM applestore.data as a
ORDER BY a.rating_count_tot DESC
LIMIT 10;


-- 6. Take the 10 apps best rated by users.**
SELECT a.track_name, a.user_rating
FROM applestore.data as a
ORDER BY a.user_rating DESC
LIMIT 10;
-- 7. Take a look on the data you retrieved in the question 5. Give some insights.**

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.**

-- 9. Now compare the data from questions 5 and 6. What do you see?**
-- The only thing they share is the number of rows

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT a.track_name,a.user_rating, a.rating_count_tot
FROM applestore.data as a
ORDER BY a.user_rating DESC, a.rating_count_tot DESC
LIMIT 3;
-- 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
-- Higher prices do not have lesser user_rating but they have less total rating count so id say they do not care about price as a factor for rating the app but apps that are not free are used much less.
SELECT a.track_name,a.user_rating, a.rating_count_tot, a.price
FROM applestore.data AS a
ORDER BY a.price DESC, a.rating_count_tot DESC;


SELECT a.track_name,a.user_rating, a.rating_count_tot, a.price
FROM applestore.data AS a
ORDER BY a.price ASC, a.rating_count_tot DESC;
