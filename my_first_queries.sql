# 1. Which are the different genres?

SELECT DISTINCT prime_genre FROM appleStore.data;

# 2. Which is the genre with more apps rated? 

SELECT SUM(rating_count_tot),prime_genre FROM appleStore.data
GROUP BY prime_genre
ORDER BY SUM(rating_count_tot) DESC;

# 3. Which is the genre with more apps?

SELECT prime_genre,count(prime_genre) 
FROM appleStore.data 
group by prime_genre 
order by count(prime_genre) DESC LIMIT 1;

# 4. Which is the one with less?

SELECT prime_genre,count(prime_genre) 
FROM appleStore.data 
group by prime_genre 
order by count(prime_genre) ASC LIMIT 1;

# 5. Take the 10 apps most rated.

SELECT track_name,user_rating 
FROM appleStore.data 
order by rating_count_tot 
DESC LIMIT 10;

# 6. Take the 10 apps best rated by users.

SELECT track_name,user_rating,rating_count_tot
FROM appleStore.data 
order by user_rating DESC,
 rating_count_tot DESC LIMIT 10;

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT track_name, user_rating, rating_count_tot
FROM appleStore.data
ORDER BY rating_count_tot DESC, user_rating DESC
lIMIT 3;

# 11. Does people care about the price?

SELECT price, SUM(rating_count_tot) as total_ratings, AVG(user_rating)
FROM appleStore.data
GROUP BY price
ORDER BY total_ratings DESC;