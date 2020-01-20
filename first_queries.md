**1. Which are the different genres?**
SELECT prime_genre
FROM data
ORDER BY prime_genre DESC;

**2. Which is the genre with more apps rated?**
SELECT prime_genre, count(rating_count_tot)
FROM data
WHERE rating_count_tot > 0
GROUP BY prime_genre
ORDER BY count(rating_count_tot) DESC
LIMIT 1;

**3. Which is the genre with more apps?**
SELECT prime_genre, count(track_name)
FROM data
GROUP BY prime_genre
ORDER BY count(track_name) DESC
LIMIT 1;

**4. Which is the one with less?**
SELECT prime_genre, count(track_name)
FROM data
GROUP BY prime_genre
ORDER BY count(track_name) ASC
LIMIT 1;

**5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot, user_rating
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10;


**6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating, rating_count_tot
FROM data
ORDER BY user_rating DESC
LIMIT 10;


**7. Take a look on the data you retrieved in the question 5. Give some insights.**
Facebook is the most rated app, followed by Instagram and Clash of Clans

**8. Take a look on the data you retrieved in the question 6. Give some insights.**
TurboScan is the best rated by users, although it does not have the highest total rating count

**9. Now compare the data from questions 5 and 6. What do you see?**
the apps with the highest Total Ratings do not have the best user ratings 


**10. How could you take the top 3 regarding the user ratings but also the number of votes?**
for example, I would rank the Apps through a weighted average of their rankings in the lists from #5 and #6 


**11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT track_name, user_rating, rating_count_tot, price
FROM data
ORDER BY rating_count_tot DESC
LIMIT 30;

SELECT track_name, user_rating, rating_count_tot, price
FROM data
ORDER BY user_rating DESC
LIMIT 30;


#I ran a query listing all Apps descendingly by their total rating count. Then I ran a query, listing all Apps descendingly by their user_rating.
#A clear trend is that the Apps with the most rating count have a price of 0. However, the Apps with the best User Rating tend to have a price > 0, although their total rating count is lower.