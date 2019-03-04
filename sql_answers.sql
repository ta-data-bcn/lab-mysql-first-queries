#1. Which are the different genres? 23
SELECT prime_genre FROM appleStore.data
GROUP BY prime_genre;

#2. Which is the genre with more apps rated? Games

SELECT prime_genre, COUNT(rating_count_tot) AS Counter_of_apps FROM appleStore.data
GROUP by prime_genre
ORDER by Counter_of_apps desc;

#3. Which is the genre with more apps? Games

SELECT prime_genre, COUNT(prime_genre) AS Counter_of_apps FROM appleStore.data
GROUP by prime_genre
ORDER by Counter_of_apps desc;

#4. Which is the one with less? Catalogs

SELECT prime_genre, COUNT(prime_genre) AS Counter_of_apps FROM appleStore.data
GROUP by prime_genre
ORDER by Counter_of_apps asc;

#5. Take the 10 apps most rated.

SELECT track_name, rating_count_tot FROM appleStore.data
ORDER BY rating_count_tot desc
LIMIT 10;

#6. Take the 10 apps best rated by users.

SELECT track_name, user_rating, rating_count_tot FROM appleStore.data
ORDER BY user_rating desc, rating_count_tot desc
LIMIT 10;

#7. Take the mean rate between the 10 apps most rated. 4.35

SELECT AVG(t.user_rating)
FROM 
	(SELECT track_name, rating_count_tot, user_rating  FROM appleStore.data
	GROUP BY track_name, rating_count_tot, user_rating desc
	ORDER BY rating_count_tot desc
	LIMIT 10) as t;

#8. Take the mean rate between the 10 apps best rated. 5

SELECT AVG(t.user_rating)
FROM 
	(SELECT track_name, user_rating  FROM appleStore.data
	GROUP BY track_name, user_rating desc
	ORDER BY user_rating desc
	LIMIT 10) as t;

#9. What do you see here?

#All of them have the maximum user rate. 

#10. How could you take the top 3 regarding the user ratings but also the number of votes?

SELECT track_name, user_rating, rating_count_tot FROM appleStore.data
ORDER BY user_rating desc, rating_count_tot desc
LIMIT 100;

#11. Does people care about the price? Yes, the most rated are free, meaning that people mostly don't want to pay for the apps. 

SELECT track_name, price, rating_count_tot from appleStore.data
ORDER BY rating_count_tot desc
LIMIT 100;











