
-- 1. Which are the different genres?
SELECT d.prime_genre
FROM data d
;


-- 2. Which is the genre with more apps rated?
SELECT d.prime_genre
FROM data d
GROUP BY d.prime_genre
ORDER BY sum(d.rating_count_tot) DESC
LIMIT 1
;


-- 3. Which is the genre with more apps?
SELECT d.prime_genre
FROM data d
GROUP BY d.prime_genre
ORDER BY count(1) DESC
LIMIT 1
;


-- 4. Which is the one with less?
SELECT d.prime_genre
FROM data d
GROUP BY d.prime_genre
ORDER BY count(1) ASC
LIMIT 1
;

-- 5. Take the 10 apps most rated.
SELECT d.track_name
FROM data d
ORDER BY d.rating_count_tot DESC
LIMIT 10
;

-- 6. Take the 10 apps best rated by users.
SELECT d.track_name, user_rating
FROM data d
ORDER BY d.user_Rating DESC, d.rating_count_tot DESC
LIMIT 10
;


-- 7. Take a look on the data you retrieved in the question 5. Give some insights.

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.

-- 9. Now compare the data from questions 5 and 6. What do you see?
/**
having more rates doesn't mean having the best rating
**/

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT d.track_name, user_rating
FROM data d
ORDER BY d.user_Rating DESC, d.rating_count_tot DESC
LIMIT 3
;

-- 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve.
-- What is your conclusion?
SELECT d.track_name, d.price, user_rating, d.rating_count_tot
FROM data d
ORDER BY d.price DESC, d.user_Rating DESC, d.rating_count_tot DESC
LIMIT 10
;


SELECT d.track_name, d.price, user_rating, d.rating_count_tot
FROM data d
ORDER BY d.price ASC, d.user_Rating DESC, d.rating_count_tot DESC
LIMIT 10
;


SELECT avg(d1.price), avg(d1.user_rating), avg(d1.rating_count_tot)
FROM 
	(SELECT d.price, d.user_rating, d.rating_count_tot
	FROM data d
	ORDER BY d.price ASC, d.user_Rating DESC, d.rating_count_tot DESC
	LIMIT 10) as d1
;

SELECT avg(d1.price), avg(d1.user_rating), avg(d1.rating_count_tot)
FROM 
	(SELECT d.price, d.user_rating, d.rating_count_tot
	FROM data d
	ORDER BY d.price DESC, d.user_Rating DESC, d.rating_count_tot DESC
	LIMIT 10) as d1
;

/**
the conclusion could be that free apps have a lot more backfeed and rating
while paid ones have less ratings and people request more to them as they paid for it
**/
