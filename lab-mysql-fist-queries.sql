use appleStore;

SELECT * FROM data;

# Question 1
Select prime_genre FROM data GROUP BY prime_genre;

# Question 2
Select SUM(rating_count_tot), prime_genre FROM data GROUP BY prime_genre ORDER BY SUM(rating_count_tot) DESC LIMIT 3;

# Question 3
SELECT COUNT(id), prime_genre FROM data GROUP BY prime_genre ORDER BY COUNT(id) DESC LIMIT 3;

#Question 4
SELECT COUNT(id), prime_genre FROM data GROUP BY prime_genre ORDER BY COUNT(id) ASC LIMIT 3;

# Question 5
Select track_name, rating_count_tot FROM DATA ORDER BY rating_count_tot DESC LIMIT 10;

# Question 6
Select track_name, user_rating FROM DATA ORDER BY user_rating DESC LIMIT 20;

# Question 10

SELECT track_name, user_rating, rating_count_tot FROM data WHERE user_rating = "5" ORDER BY rating_count_tot DESC LIMIT 3;

# Question 11

SELECT track_name, price, rating_count_tot from data ORDER BY price DESC LIMIT 20;
SELECT track_name, price, rating_count_tot from data ORDER BY price ASC LIMIT 20;

SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY rating_count_tot DESC LIMIT 20;
SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY rating_count_tot ASC LIMIT 20;

SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY price DESC LIMIT 20;
SELECT track_name, price, rating_count_tot, user_rating from data ORDER BY price ASC LIMIT 20;
