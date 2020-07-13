#1
SELECT DISTINCT prime_genre FROM data;

#2
SELECT SUM(rating_count_tot), prime_genre FROM data
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

#3CREATE TABLE Napps_per_genre
SELECT COUNT(id) AS Napps, prime_genre AS genre FROM data
GROUP BY genre
ORDER BY Napps;

#4
SELECT MIN(Napps) FROM Napps_per_genre;

#5
SELECT track_name, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

#6
SELECT track_name, user_rating
FROM data
ORDER BY user_rating DESC
LIMIT 10;

#7
SELECT track_name, rating_count_tot, prime_genre
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;
#"Mostly games"

#8
SELECT track_name, user_rating, `rating_count_tot`
FROM data
ORDER BY user_rating DESC
LIMIT 10;
#"Some has high ratings but few rating counts"

#9
# we can see that the highest ratings are not necessarily the highest amount of votes

#10
SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM data
WHERE user_rating =5
ORDER BY rating_count_tot DESC
LIMIT 3;

#11
SELECT price, SUM(rating_count_tot) FROM data
GROUP BY price
ORDER BY SUM(rating_count_tot) DESC;
# There are more votes for the free apps

SELECT AVG(price), user_rating FROM data
GROUP BY user_rating
ORDER BY AVG(price) DESC;
# CONCLUSION: People don't care about the price
