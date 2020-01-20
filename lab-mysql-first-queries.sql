# **1. Which are the different genres?**
SELECT DISTINCT prime_genre AS Genre
FROM data;

#**2. Which is the genre with more apps rated?**
SELECT 
`prime_genre`AS Genre,
Count(rating_count_tot) AS Apps_Rated
FROM data
WHERE `rating_count_tot`>0
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

#**3. Which is the genre with more apps?**
SELECT 
`prime_genre`AS Genre,
Count(`track_name`) AS Apps
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

#**4. Which is the one with less?**
SELECT 
`prime_genre`AS Genre,
Count(`track_name`) AS Apps
FROM data
GROUP BY 1
ORDER BY 2 ASC
LIMIT 1;

#**5. Take the 10 apps most rated.**
SELECT 
`track_name`AS Apps,
SUM(`rating_count_tot`) AS Ratings
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

#**6. Take the 10 apps best rated by users.**
SELECT 
`track_name`AS Apps,
`user_rating`
FROM data
ORDER BY 2 DESC
LIMIT 10;

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT 
`track_name`AS Apps,
`user_rating`,
`rating_count_tot` AS Ratings
FROM data
ORDER BY 2 DESC,3 DESC
LIMIT 3;


#**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT 
price AS Price,
COUNT(`track_name`) AS Apps
FROM data
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

SELECT 
COUNT(`track_name`) AS Apps
FROM data


