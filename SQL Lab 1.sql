USE appleStore;
SELECT * FROM appleStore.data;
-- WHICH ARE THE DIFFERENT GENRES?
SELECT DISTINCT prime_genre
FROM appleStore.data;
-- WHICH IS THE GENRE WITH MORE APPS RATED? 
SELECT * from appleStore.data;
SELECT count(rating_count_tot), prime_genre
FROM appleStore.data 
GROUP BY prime_genre
ORDER BY count(rating_count_tot) DESC;

-- 4. WHICH IS THE GENRE WITH MORE APPS?
SELECT * from appleStore.data;
SELECT prime_genre, count(*)
FROM appleStore.data
GROUP BY prime_genre
ORDER BY COUNT(*) DESC;

-- 5.  Top 10 rated apps?
SELECT track_name, rating_count_tot
FROM appleStore.data
GROUP BY track_name, rating_count_tot
ORDER BY rating_count_tot DESC;


-- 6. Top 10 Apps rated by users?
SELECT track_name, user_rating, prime_genre from appleStore.data
ORDER BY user_rating DESC;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- The top two apps are owned by Facebook.
-- 8. Take a look on the data you retrieved in the question 6. Give some insights.alter
-- The best aps are generally games. 
-- 9. Now compare the data from questions 5 and 6. What do you see?
-- 
-- 10. How could you take the top 3 regarding user rating but also the number of votes?

SELECT user_rating, rating_count_tot
FROM appleStore.data
LIMIT 3;

-- 11. 
select track_name, rating_count_tot, user_rating, price from data
order by user_rating desc, rating_count_tot desc;

select track_name, price from data
order by price desc;

select avg(price) from data;
