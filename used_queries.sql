## 1. Which are the different genres?

SELECT Prime_Genre FROM applestore.data
GROUP BY Prime_Genre;

## 2. Which is the genre with more apps rated?
SELECT `prime_genre`, COUNT(`rating_count_tot`)
FROM data
WHERE `rating_count_tot` > 0 
GROUP BY `prime_genre`;

## 3. Which is the genre with more apps?
SELECT `prime_genre`, COUNT(`track_name`) as Total_Apps
FROM data
GROUP BY `prime_genre`
ORDER BY Total_Apps DESC;

## 4. Which is the one with less?
SELECT `prime_genre`, COUNT(`track_name`) as Total_Apps
FROM data
GROUP BY `prime_genre`
ORDER BY Total_Apps ASC;

## 5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot
FROM DATA
ORDER BY rating_count_tot DESC
LIMIT 10;

## 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating
FROM DATA
ORDER BY user_rating DESC
LIMIT 10;

## 7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT *
FROM DATA
ORDER BY rating_count_tot DESC
LIMIT 10;

## 8. Take a look on the data you retrieved in the question 6. Give some insights.ù
SELECT *
FROM DATA
ORDER BY user_rating DESC
LIMIT 10;

## 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT *
FROM DATA
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;


#11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
#NOT WORKING 

select user_rating, avg(price)
from data
group by user_rating
order by user_rating desc;

SELECT
price AS Price,
COUNT(`track_name`) AS Apps
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;






