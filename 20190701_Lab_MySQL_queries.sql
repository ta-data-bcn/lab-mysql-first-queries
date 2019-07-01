-- question 1: Which are the different genres?
SELECT prime_genre FROM data
GROUP BY prime_genre; 

-- question 2: Which is the genre with more apps rated?
SELECT  prime_genre, sum(rating_count_tot) as total_rates
FROM appleStore.data
GROUP BY prime_genre
ORDER BY sum(rating_count_tot) DESC;

-- Question 3: Which is the genre with more apps?
SELECT prime_genre, count(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) DESC; 

-- Question 4: Which is the one with less?
SELECT prime_genre, count(prime_genre) FROM data
GROUP BY prime_genre
ORDER BY COUNT(prime_genre) ASC; 

-- question 5: Take the 10 apps most rated.
SELECT track_name, rating_count_tot 
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10; 

-- question 6: Take the 10 apps best rated by users.
SELECT track_name, rating_count_tot, user_rating
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10; 


-- Question 7:  Take the mean rate between the 10 apps most rated. Don't calculate the mean, just see the data!
SELECT track_name, rating_count_tot, user_rating
FROM data
ORDER BY rating_count_tot DESC
LIMIT 10; 

-- Question 8: Take the mean rate between the 10 apps best rated. Don't calculate the mean, just see the data!
SELECT track_name, rating_count_tot, user_rating
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 10; 

-- Question 9: What do you see here?
-- done in markdown file. 

-- Question 10: How could you take the top 3 regarding the user ratings but also the number of votes?
SELECT track_name, rating_count_tot, user_rating
FROM data
ORDER BY user_rating DESC, rating_count_tot DESC
LIMIT 3; 

-- Question 11: Does people care about the price?
SELECT price, sum(rating_count_tot), avg(user_rating)
FROM data
GROUP BY price
ORDER BY price, sum(rating_count_tot) 
LIMIT 100;