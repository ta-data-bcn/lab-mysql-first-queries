USE appleStore;
SELECT * FROM data;

-- 1. Which are the different genres?**
SELECT prime_genre, COUNT(prime_genre)
FROM data
group by prime_genre;

-- PER ACABAR 2. Which is the genre with more apps rated?**
SELECT prime_genre, SUM(rating_count_tot)
FROM data
group by prime_genre
ORDER BY SUM(rating_count_tot) DESC
limit 1;

-- 3. Which is the genre with more apps?**
SELECT prime_genre, COUNT(prime_genre)
FROM data
group by prime_genre
order by COUNT(prime_genre) DESC;

-- 4. Which is the one with less?**
SELECT prime_genre, COUNT(prime_genre)
FROM data
group by prime_genre
order by COUNT(prime_genre);

-- 5. Take the 10 apps most rated.**
SELECT track_name, rating_count_tot
FROM data
order by rating_count_tot DESC
limit 10;

-- 6. Take the 10 apps best rated by users.**
SELECT track_name, user_rating
FROM data
order by user_rating DESC
limit 10;

-- 7. Take a look on the data you retrieved in the question 5. Give some insights.**
-- From the retreived data in question 5, we can see that the most rated apps in Apple Store are Facebook, Instagram, 
-- Clash of Clans, Temple Run, Pandora, Pinterest, Bible, Candy Crush, Spotify Music and Angry Birds. As we can see, most
-- of the top rated apps are either social media or games, except for the Bible. We can also note that all of the apps are free. 

-- 8. Take a look on the data you retrieved in the question 6. Give some insights.**
-- From the retreived data in question 6, we can see that the best rated apps are paid. Also, that the apps are not that well known and almost all of them are games. 

-- 9. Now compare the data from questions 5 and 6. What do you see?**
-- The main insights is that people votes more for free apps and that paid apps are best rated by users. 

-- 10. How could you take the top 3 regarding the user ratings but also the number of votes?**
SELECT track_name, user_rating, rating_count_tot
FROM data
WHERE user_rating = 5
order by rating_count_tot DESC
limit 3;

-- 11. Does people care about the price?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
-- As the results show, price is not a decisive factor as people is willing to pay more for games, as the most rated apps are paid. 
-- On the other side, we can also see that the most rated apps are free. 

SELECT track_name, rating_count_tot, price
FROM data
order by rating_count_tot DESC
limit 10;

SELECT track_name, user_rating, prime_genre
FROM data
order by user_rating DESC
limit 10;