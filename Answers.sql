#**1. Which are the different genres?**
SELECT distinct prime_genre FROM data;

#**2. Which is the genre with more apps rated?**
SELECT
prime_genre,
COUNT(rating_count_tot)
FROM DATA
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY COUNT(rating_count_tot) DESC
LIMIT 1;

#**3. Which is the genre with more apps?**
SELECT
prime_genre,
COUNT(track_name)
FROM data
GROUP BY prime_genre
ORDER BY count(track_name) DESC
LIMIT 1;

#**4. Which is the one with less?**
SELECT
prime_genre,
COUNT(track_name)
FROM data
GROUP BY prime_genre
ORDER BY COUNT(track_name) ASC
LIMIT 1;

#**5. Take the 10 apps most rated.**
SELECT
track_name,
rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;

#**6. Take the 10 apps best rated by users.**
SELECT
track_name,
user_rating
FROM data
ORDER BY user_rating DESC
LIMIT 10;

#**7. Take a look on the data you retrieved in the question 5. Give some insights.**
# The two top are social apps, then some games, music apps and the Bible

#**8. Take a look on the data you retrieved in the question 6. Give some insights.**
# Most of the apps are games
#**9. Now compare the data from questions 5 and 6. What do you see?**
# Games is the genre most used

#**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT
track_name,
user_rating,
rating_count_tot
FROM data
ORDER BY user_rating DESC,
rating_count_tot DESC
LIMIT 10;


#**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
# Checking if the price affects the user rating
SELECT
track_name,
user_rating,
price
FROM data
ORDER BY user_rating DESC,
price DESC
LIMIT 10;

# Checking if the price affects the rating count total
SELECT
track_name,
rating_count_tot,
price
FROM data
ORDER BY rating_count_tot DESC,
price DESC
LIMIT 10;

# Apps with a cost get good user ratings and free apps get a lot of ratings count.