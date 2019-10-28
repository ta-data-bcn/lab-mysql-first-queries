# 1. Which are the different genres?**
SELECT DISTINCT prime_genre FROM data;

# 2. Which is the genre with more apps rated?** Answer: Games: 3400
SELECT prime_genre, COUNT(prime_genre)
FROM data 
WHERE rating_count_tot != 0
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
;

# 3. Which is the genre with more apps?** Answer: Games 3862
SELECT prime_genre, COUNT(prime_genre)
FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC
;

# 4. Which is the one with less?** Answer: Catalogs 10
SELECT prime_genre, COUNT(prime_genre)
FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC
;

#5. Take the 10 apps most rated.** Answer: Facebook 2974676
SELECT track_name, rating_count_tot
FROM data
ORDER BY rating_count_tot DESC
Limit 10
;

#6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating
FROM data
ORDER BY user_rating DESC
Limit 10
;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.**
-- Facebook and Instagram are the most rated apps. Followed by Clash of Clans and Temple Run. We can see that
-- Social Media, Games and Music Apps are the ones dominating the most rated apps.

# 8. Take a look on the data you retrieved in the question 6. Give some insights.**
-- Two Sudoku games are enlisted as best rated with a ratio of 5 out of 5.
-- All apps in the top 10 have a rating of 5

# 9. Now compare the data from questions 5 and 6. What do you see?**
-- There is no app that appears in both top 10 most rated or best rated apps. The more rated it is,
-- the more difficult it is to keep a rating of 5 as the best rated ones, which are very likely to be rated
-- by very little amount of people.

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, user_rating, rating_count_tot
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3
;

# 11. Does people care about the price?** 
# Do some queries, comment why are you doing them and the results you retrieve. 
# What is your conclusion?
SELECT track_name, price, rating_count_tot, user_rating
FROM data
ORDER BY rating_count_tot DESC
LIMIT 20
;
# Conclusion 1: 3 out of 20 most downloaded apps are not free.
SELECT track_name, price, rating_count_tot, user_rating
FROM data
ORDER BY user_rating DESC
LIMIT 20
;
# Conclusion 2, 5 out of 20 most rated apps are free.
SELECT track_name, price, rating_count_tot, user_rating
FROM data
ORDER BY price DESC, rating_count_tot DESC
LIMIT 20
;
#Conclusion 3: The most expensive app (99,99$) has only 71 rated opinions but a good user rating of 4.5
#Conclusion 4: The number of ratings in paid apps is way lower than the main free apps.
#Conclusion 5: The user_rating of the most expensive apps is generally higher than 4.
#Conclusion 6: Price affects in terms of downloads/ratings (more price less amount of rates)
#Conclusion 7: And slightly in ratings (more price better ratings)