# 1. Which are the different genres?
SELECT prime_genre FROM data
GROUP BY prime_genre;

# 2. Which is the genre with more apps rated?
SELECT prime_genre, sum(rating_count_tot) AS number_of_rating  FROM data
GROUP BY prime_genre
ORDER BY number_of_rating DESC;

# 3. Which is the genre with more apps?
SELECT prime_genre, count(*) AS number_of_apps  FROM data
GROUP BY prime_genre
ORDER BY number_of_apps DESC;

# 4. Which is the one with less?
SELECT prime_genre, count(*) AS number_of_apps  FROM data
GROUP BY prime_genre
ORDER BY number_of_apps;

# 5. Take the 10 apps most rated.
SELECT prime_genre, sum(rating_count_tot) AS number_of_rating  FROM data
GROUP BY prime_genre
ORDER BY number_of_rating DESC
LIMIT 10;

# 6. Take the 10 apps best rated by users.
SELECT track_name, user_rating FROM data
ORDER BY user_rating DESC
LIMIT 10;

# 7. Take the mean rate between the 10 apps most rated.
SELECT prime_genre, sum(rating_count_tot) AS number_of_rating  FROM data
GROUP BY prime_genre
ORDER BY number_of_rating DESC
LIMIT 10;

# 8. Take the mean rate between the 10 apps best rated.
SELECT track_name, user_rating FROM data
ORDER BY user_rating DESC
LIMIT 10;

# 9. What do you see here?

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, user_rating, rating_count_tot FROM data WHERE user_rating = 5
ORDER BY rating_count_tot DESC
LIMIT 3;

# 11. Does people care about the price?
SELECT track_name, user_rating, price, rating_count_tot FROM data
ORDER BY user_rating DESC
