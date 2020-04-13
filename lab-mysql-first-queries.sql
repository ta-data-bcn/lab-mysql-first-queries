use appleStore;
# 1.Which are the different genres?
SELECT prime_genre
FROM data
GROUP BY prime_genre;

# 2. Which is the genre with more apps rated?
SELECT prime_genre, count(rating_count_tot) as Rating
FROM data
GROUP BY prime_genre
ORDER BY Rating DESC
LIMIT 1;

# 3. Which is the genre with more apps?
SELECT prime_genre, count(prime_genre) as Apps
FROM data
GROUP BY prime_genre
ORDER BY Apps DESC
LIMIT 1;

# 4. Which is the one with less?
SELECT prime_genre, count(user_rating) as APPS
FROM data
GROUP BY prime_genre
ORDER BY APPS ASC
LIMIT 1;

# 5. Take the 10 apps most rated.
SELECT track_name, rating_count_tot as Rating, prime_genre
FROM data
ORDER BY Rating DESC
LIMIT 10;

# 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating, rating_count_tot, prime_genre
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

# 7. Take a look on the data you retrieved in the question 5. Give some insights.
SELECT track_name, rating_count_tot as Rated, price, prime_genre
FROM data
ORDER BY Rated DESC
LIMIT 10;

# 8. Take a look on the data you retrieved in the question 6. Give some insights.
SELECT track_name, user_rating, rating_count_tot, price, prime_genre
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10;

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3;

# 11. Does people care about the price?
SELECT track_name, user_rating, rating_count_tot, price
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC, price DESC;

SELECT track_name, user_rating, rating_count_tot, price
FROM data
ORDER BY price DESC, user_rating DESC, rating_count_tot DESC;
