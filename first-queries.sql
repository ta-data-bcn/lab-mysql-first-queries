use applestore;

select * from applestore.data;

-- 1. Which are the different genres?

SELECT DISTINCT prime_genre FROM applestore.data;

-- 2. Which is the genre with more apps rated?

SELECT prime_genre, COUNT(user_rating) as apps_rated
FROM applestore.data
GROUP BY prime_genre
ORDER BY apps_rated DESC ; 

-- 3. Which is the genre with more apps?

SELECT prime_genre, COUNT(id) as apps
FROM applestore.data
GROUP BY prime_genre
ORDER BY apps DESC
LIMIT 1; 


-- 4. Which is the one with less?

SELECT prime_genre, COUNT(id) as apps
FROM applestore.data
GROUP BY prime_genre
ORDER BY apps ASC
LIMIT 1; 

-- 5. Take the 10 apps most rated. 

SELECT id, track_name, rating_count_tot
FROM applestore.data
ORDER BY rating_count_tot DESC
LIMIT 10; 

-- 6. Take the 10 apps best rated by users.

SELECT id, track_name, user_rating, prime_genre
FROM applestore.data
ORDER BY user_rating DESC
LIMIT 10; 

-- 7--. Take a look on the data you retrieved in the question 5. Give some insights.

/* The two most rated apps are social networks. Four of the 10 most rated apps are games. 

There are two music apps. People actually care enough about a bible app to rate it! */

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

/*Seems like the best rated apps are more related with functionality like photo editing, document scanning.  
If users like a game, they willl rate it */

-- 9. Now compare the data from questions 5 and 6. What do you see?

/* None of the most rated apps are in the best rated apps. This too variables don`t seem to be related.
Maybe users rate an app but it does not mean thy will give it a high rate*/


-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT track_name, prime_genre, user_rating, rating_count_tot
FROM applestore.data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3; 

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

/* people rate much less paid apps

SELECT track_name, prime_genre, user_rating, rating_count_tot, price
FROM applestore.data
ORDER BY price DESC
LIMIT 10; 