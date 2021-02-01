USE appleStore;

SELECT * FROM data;
-- 1. Which are the different genres?-- 

SELECT DISTINCT
     prime_genre
FROM
    data ;
    


-- 2. Which is the genre with more apps rated?

SELECT 
    prime_genre, COUNT(rating_count_tot) 
FROM
    data
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC;



-- 3. Which is the genre with more apps?
SELECT 
    prime_genre, COUNT(track_name) 
FROM
    data
GROUP BY prime_genre
ORDER BY COUNT(track_name) DESC;



-- 4. Which is the one with less?

SELECT 
    prime_genre, COUNT(track_name) 
FROM
    data
GROUP BY prime_genre
ORDER BY COUNT(track_name);


-- 5. Take the 10 apps most rated.

SELECT rating_count_tot, id, track_name, USER_RATING
FROM data
 ORDER BY rating_count_tot DESC
LIMIT 10;


-- 6. Take the 10 apps best rated by users.

SELECT USER_RATING, id, track_name, rating_count_tot
FROM data
 ORDER BY USER_RATING DESC
LIMIT 10;



-- 7. Take a look on the data you retrieved in the question 5. Give some insights.
-- Apps with a lot of downloads have very middle of the road reviews but a lot of them

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.
-- some of the apps have very few downloads/ratings

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- fewer reviews that are positive will catapult this apps to a much higher position 

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT
    track_name, user_rating, rating_count_tot
FROM
    data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;



-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

SELECT
    track_name, rating_count_tot,price
FROM
    data
ORDER BY rating_count_tot DESC
LIMIT 10;

