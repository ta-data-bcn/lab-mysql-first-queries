# 1. Which are the different genres?
SELECT `prime_genre`
FROM DATA
GROUP BY `prime_genre`
;

# 2. Which is the genre with more apps rated?
SELECT `prime_genre`, count(`rating_count_tot`)
FROM DATA
WHERE `rating_count_tot` > 0
GROUP BY `prime_genre`
ORDER BY count(`rating_count_tot`) DESC
LIMIT 1
;

# 3. Which is the genre with more apps?
SELECT `prime_genre`, count(`track_name`)
FROM DATA
GROUP BY `prime_genre`
ORDER BY count(`track_name`) DESC
LIMIT 1
;

# 4. Which is the one with less?
SELECT `prime_genre`, count(`track_name`)
FROM DATA
GROUP BY `prime_genre`
ORDER BY count(`track_name`) ASC
LIMIT 1
;

# 5. Take the 10 apps most rated.
SELECT `prime_genre`, `track_name`, `rating_count_tot`
FROM DATA
ORDER BY `rating_count_tot` DESC
LIMIT 10
;

# 6. Take the 10 apps best rated by users.
SELECT `prime_genre`, `track_name`, `user_rating`
FROM DATA
ORDER BY `user_rating` DESC
LIMIT 10
;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.
# the top 10 apps most rated are mostly social networking and games apps

# 8. Take a look on the data you retrieved in the question 6. Give some insights.
# the top 10 best rated apps by users in the app store are mostly games

# 9. Now compare the data from questions 5 and 6. What do you see?
# Games apps are dominating the app store...

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT `prime_genre`, `track_name`, `user_rating`, `rating_count_tot`
FROM DATA
ORDER BY `user_rating` DESC, `rating_count_tot` DESC
LIMIT 3
;

# 11. Does people care about the price? Do some queries, comment why are you doing them and
# the results you retrieve. What is your conclusion?
# Yes they do, the most expensive apps have few rating count which means few dowloads
# the most downloaded and highly user rated apps are free games although most of those games
# usually offer in-app purchases.
